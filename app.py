"""
O vasto e complexo mercado de vinhos portugueses, 
com mais de 250 castas autóctones, 
apresenta um significativo "paradoxo da escolha" para o consumidor. 
A informação disponível é frequentemente dispersa, 
técnica ou comercialmente enviesada, 
dificultando uma decisão de compra informada. 
Este artigo apresenta o desenvolvimento e a avaliação do VinhoBot, 
uma prova de conceito de um sistema de recomendação conversacional concebido para atuar como um "sommelier digital". 
Para mitigar o risco de "alucinações" factuais, 
comuns em Modelos de Linguagem de Grande Escala (LLMs), 
foi implementada uma arquitetura de Geração Aumentada por Recuperação (RAG). 
O sistema utiliza uma base de dados PostgreSQL com a extensão pgvector para armazenar uma base de conhecimento curada, 
um pipeline de ingestão de dados para gerar embeddings vetoriais, 
e uma aplicação de chat com Chainlit que interage com a API da Groq. 
A avaliação do sistema, 
conduzida por um especialista certificado (WSET 2) sobre um conjunto de 12 perguntas de complexidade variável, 
revelou uma taxa de sucesso de 48.3% na obtenção da recomendação exata esperada. 
Os resultados demonstram uma fiabilidade condicional: 
o sistema excele em consultas factuais com critérios bem definidos, 
mas revela limitações perante perguntas que exigem a interpretação de conceitos subjetivos ou raciocínio inferencial. 
Conclui-se que, embora promissora, 
a fiabilidade de sistemas RAG em domínios de nicho depende criticamente do alinhamento entre a 
complexidade da pergunta e a capacidade do pipeline de recuperação, 
destacando a necessidade de futuras investigações em pesquisa híbrida e modelos de embedding específicos do domínio.
"""

import os
import logging
from dotenv import load_dotenv
from pathlib import Path

# Adicionar a importação do Chainlit
import chainlit as cl
from chainlit.input_widget import Select

from langchain_core.prompts import ChatPromptTemplate
from langchain_core.output_parsers import StrOutputParser
from langchain_core.runnables import Runnable, RunnablePassthrough

# Modelos
from langchain_groq import ChatGroq
from langchain_huggingface import HuggingFaceEmbeddings

# Postgres
from langchain_postgres import PGVector
from langchain_postgres.vectorstores import DistanceStrategy

# Re-ranking
from langchain.retrievers import ContextualCompressionRetriever
from langchain.retrievers.document_compressors import CrossEncoderReranker
from langchain_community.cross_encoders import HuggingFaceCrossEncoder

from rich.logging import RichHandler

GROQ_MODELS = [
    "openai/gpt-oss-120b",
    "qwen/qwen3-32b",
    "deepseek-r1-distill-llama-70b",
    "moonshotai/kimi-k2-instruct",
    "llama-3.3-70b-versatile",
]

# --- Funções de Configuração e Setup ---

def setup_logging():
    """Configura o logging para uma melhor visualização."""
    logging.basicConfig(
        level="INFO",
        format="%(message)s",
        datefmt="[%X]",
        handlers=[RichHandler(rich_tracebacks=True, markup=True)],
        force=True,
    )
    return logging.getLogger(__name__)

def find_and_load_dotenv(logger):
    """Procura e carrega o ficheiro .env."""

    project_root = Path(__file__).resolve().parent.parent
    env_path = project_root / "vinhobot" / "compose" / ".env"
    
    if env_path.exists():
        load_dotenv(dotenv_path=env_path)
        logger.info(f"Ficheiro .env carregado de: {env_path}")
    else:
        project_root = Path.cwd().parent
        env_path = project_root / "vinhobot" / "compose" / ".env"
        if env_path.exists():
            load_dotenv(dotenv_path=env_path)
            logger.info(f"Ficheiro .env carregado de: {env_path}")
        else:
            logger.warning(f"Ficheiro .env não foi encontrado. As variáveis de ambiente devem ser definidas manualmente.")

def get_db_config():
    """Lê as variáveis de ambiente da base de dados."""

    db_user = os.getenv("DB_USER", "postgres")
    db_password = os.getenv("DB_PASSWORD", "postgres")
    db_host = os.getenv("DB_HOST", "localhost")
    db_port = os.getenv("DB_PORT", "5432")
    db_name = os.getenv("DB_NAME", "ragdb")
    
    return {
        "db_user": db_user,
        "db_password": db_password,
        "db_host": db_host,
        "db_port": db_port,
        "db_name": db_name,
        "connection": f"postgresql+asyncpg://{db_user}:{db_password}@{db_host}:{db_port}/{db_name}"
    }

def get_app_settings():
    """Retorna as configurações da aplicação."""

    return {
        "collection_name": "wine_embeddings",
        "embedding_model_name": "all-MiniLM-L6-v2",
        "reranker_model_name": "BAAI/bge-reranker-base",
        "use_reranker": True,
        "retriever_k_for_reranker": 10,
    }

# --- Funções do Pipeline RAG ---

def get_embedding_model(config, logger):
    """Inicializa e retorna o modelo de embedding."""

    logger.info(f"A carregar o modelo de embedding: {config['embedding_model_name']}")
    return HuggingFaceEmbeddings(
      model_name=config['embedding_model_name'],
      model_kwargs={'device': 'cpu'},
      encode_kwargs={'normalize_embeddings': True}
    )

def get_groq_llm(model_name: str, logger):
    """Inicializa e retorna o modelo de linguagem via Groq API."""

    logger.info(f"A inicializar o modelo de linguagem via Groq API: {model_name}")
    if not os.getenv("GROQ_API_KEY"):
        logger.error("A GROQ_API_KEY não foi encontrada. O LLM não pode ser inicializado.")
        raise ValueError("GROQ_API_KEY não definida.")
    return ChatGroq(temperature=0.6, model_name=model_name)

async def get_async_vector_store(embeddings, config, logger):
    """Liga-se e retorna a PGVector store já existente de forma assíncrona."""

    logger.info("A ligar à Vector Store de forma assíncrona...")
    try:
        vector_store = PGVector(
            connection=config['connection'],
            collection_name=config['collection_name'],
            embeddings=embeddings,
            distance_strategy=DistanceStrategy.COSINE,
            create_extension=False,
            async_mode=True,
        )

        logger.info("Vector Store conectada com sucesso (modo assíncrono)")
        return vector_store
    
    except Exception as e:
        logger.error(f"Falha ao inicializar a PGVector: {e}")
        raise

def get_rag_prompt():
    """Cria o ChatPromptTemplate para a cadeia RAG."""
    template = """
    É um sommelier português especialista e amigável. A sua tarefa é responder à pergunta do utilizador baseando-se apenas no contexto fornecido.
    Se o contexto não contiver a informação para responder, diga educadamente que não encontrou um vinho com essas características nos seus registos.
    Forneça recomendações detalhadas e úteis, mencionando o nome do vinho, produtor, região e as notas de prova relevantes.
    No final da sua resposta, inclua sempre as fontes de informação de onde retirou os dados, se estiverem disponíveis no contexto, sob um título 'Fontes:'.    
    Mantenha a resposta concisa, clara e em português de Portugal.

    Contexto:
    {context}

    Pergunta:
    {question}

    Resposta útil:
    """
    return ChatPromptTemplate.from_template(template)

def get_retriever(vector_store, config, logger):
    """Cria um retriever com re-ranking."""

    logger.info("A configurar o retriever...")
    k_for_reranker = config.get("retriever_k_for_reranker", 10)
    base_retriever = vector_store.as_retriever(search_kwargs={"k": k_for_reranker})
    
    logger.info(f"A carregar o modelo de re-ranking: {config['reranker_model_name']}")
    model = HuggingFaceCrossEncoder(model_name=config['reranker_model_name'])
    compressor = CrossEncoderReranker(model=model, top_n=3)
    
    compression_retriever = ContextualCompressionRetriever(base_compressor=compressor, base_retriever=base_retriever)
    logger.info("Retriever com re-ranker configurado com sucesso.")
    return compression_retriever

def create_rag_chain(llm, retriever, prompt):
    """Cria e retorna a cadeia RAG completa."""
    def format_docs(docs):
        return "\n\n".join(doc.page_content for doc in docs)

    return (
        {"context": retriever | format_docs, "question": RunnablePassthrough()}
        | prompt
        | llm
        | StrOutputParser()
    )

@cl.set_starters
async def set_starters():
    """
    Define os starters (mensagens sugeridas) que aparecem no início da conversa.
    Esta função é chamada automaticamente pelo Chainlit quando necessário.
    """
    return [
        cl.Starter(
            label="🍤 Camarões grelhados",
            message="Preciso de uma sugestão de vinho branco com acidez e sem muito corpo para acompanhar uns camarões grelhados, pincelados com molho de manteiga, whisky e alho, um Alvarinho ou um Sauvignon Blanc ou um Verdelho ou um Riesling.",
        ),
        cl.Starter(
            label="🐟 Ensopado de safio",
            message="Preciso de uma sugestão de vinho branco para acompanhar um ensopado de safio, um Verdelho ou um Arinto ou um Alvarinho, com pequeno estágio em barrica.",
        ),
        cl.Starter(
            label="🐖 Carne de porco com amêijoas",
            message="Um vinho tinto de lote sem madeira ou com estágio pequeno, não muito alcoólico, um tinto mais jovem com castas típicas do Alentejo, mas pode ser de qualquer outra região desde que tenha esta vinificação, para acompanhar uma carne de porco com amêijoas.",
        ),
        cl.Starter(
            label="🦑 Caldeirada de lulas",
            message="Um vinho branco com Alvarinho ou Loureiro ou Arinto para acompanhar caldeirada de lulas.",
        ),
        #cl.Starter(
        #    label="Ensopado de borredo",
        #    message="Um vinho tinto com Touriga Nacional para acompanhar um ensopado de borrego.",
        #),
        cl.Starter(
            label="🐟 Raia de alhada",
            message="Um branco de Negra Mole ou um vinho branco com Verdelho ou com Arinto ou com Alvarinho para acompanhar raia de alhada.",
        ),
        cl.Starter(
            label="🐄 Vitela estufada",
            message="Um vinho tinto com Syrah ou com Tannat ou com Malbec para acompanhar vitela estufada.",
        ),
        cl.Starter(
            label="🦆 Amêijoas á Bulhão Pato",
            message="Um vinho branco com Sauvignon Blanc ou Alvarinho ou Riesling para acompanhar amêijoas á Bulhão Pato.",
        ),
        cl.Starter(
            label="🥚 Ervilhas com ovos escalfados",
            message="Um vinho branco com Alvarinho ou com Crato Branco ou com Arinto ou com Antão Vaz para acompanhar ervilhas com ovos escalfados.",
        ),
        cl.Starter(
            label="🐟 Joaquinzinhos fritos",
            message="Um vinho branco Arinto ou Loureiro ou com Alvarinho ou com Crato Branco ou como Malvasia Fina para acompanhar uns joaquinzinhos fritos.",
        ),
        cl.Starter(
            label="🐚 Feijoada de Buzinas",
            message="Um vinho tinto com Negra Mole para acompanhar uma feijoada com buzinas.",
        ),

    ]


# --- Chainlit ---

@cl.on_chat_start
async def on_chat_start():
    """
    Função que é executada quando um novo chat é iniciado.
    Configura o pipeline RAG e armazena-o na sessão do utilizador.
    """

    logger = setup_logging()
    find_and_load_dotenv(logger)
    config = {**get_db_config(), **get_app_settings()}
    
    settings = await cl.ChatSettings(
        [
            Select(
                id="Model",
                label="Groq - Modelo",
                values=GROQ_MODELS,
                initial_index=0,
            )
        ]
    ).send()

    try:

        embedding_model = get_embedding_model(config, logger)
        vector_store = await get_async_vector_store(embedding_model, config, logger)

        if not vector_store:
            await cl.Message(content="Erro: Não foi possível ligar à base de dados de vinhos.").send()
            return
            
        retriever = get_retriever(vector_store, config, logger)
        prompt = get_rag_prompt()

        cl.user_session.set("retriever", retriever)
        cl.user_session.set("prompt", prompt)
        
        # Cria a cadeia inicial com o modelo default
        selected_model = settings["Model"]
        llm = get_groq_llm(selected_model, logger)
        rag_chain = create_rag_chain(llm, retriever, prompt)

        # Armazena a cadeia RAG na sessão do utilizador para ser usada em @cl.on_message
        cl.user_session.set("rag_chain", rag_chain)

    except Exception as e:
        logger.error(f"Ocorreu um erro durante a inicialização: {e}")
        await cl.Message(content=f"Ocorreu um erro crítico ao iniciar o chatbot: {e}").send()

@cl.on_settings_update
async def on_settings_update(settings):
    """
    Função que é executada sempre que o utilizador altera uma configuração.
    """
    
    logger = setup_logging()
    selected_model = settings["Model"]
    
    logger.info(f"A atualizar para o modelo: {selected_model}")
    
    # Recupera os componentes da sessão
    retriever = cl.user_session.get("retriever")
    prompt = cl.user_session.get("prompt")
    
    # Cria um novo LLM e uma nova cadeia RAG com o modelo selecionado
    llm = get_groq_llm(selected_model, logger)
    rag_chain = create_rag_chain(llm, retriever, prompt)
    
    # Atualiza a cadeia na sessão do utilizador
    cl.user_session.set("rag_chain", rag_chain)
    
    await cl.Message(content=f"Modelo atualizado para `{selected_model}`.").send()


@cl.on_message
async def on_message(message: cl.Message):
    """
    Função que é executada sempre que o utilizador envia uma mensagem.
    """

    # Obtém a cadeia RAG que foi criada em on_chat_start
    rag_chain = cl.user_session.get("rag_chain")
    if not rag_chain:
        await cl.Message(content="O chatbot não foi inicializado corretamente.").send()
        return

    # Cria uma mensagem vazia que será preenchida com a resposta em streaming
    msg = cl.Message(content="")
    await msg.send()

    # Executa a cadeia RAG de forma assíncrona e faz stream da resposta
    response_stream = ""
    async for chunk in rag_chain.astream(message.content):
        response_stream += chunk
        await msg.stream_token(chunk)
    
    await msg.update()
