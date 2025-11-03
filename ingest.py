# ingest.py
import os
import logging
from dotenv import load_dotenv
from pathlib import Path

import psycopg

from langchain_core.documents import Document
from langchain_huggingface import HuggingFaceEmbeddings
from langchain_postgres import PGVector
from langchain_postgres.vectorstores import DistanceStrategy

from rich.logging import RichHandler

# --- Funções de Configuração e Setup ---

def setup_logging():
    """
    Configura o logging para uma melhor visualização.
    """
    logging.basicConfig(
        level="INFO",
        format="%(message)s",
        datefmt="[%X]",
        handlers=[RichHandler(rich_tracebacks=True, markup=True)],
        force=True,
    )
    logger = logging.getLogger(__name__)
    logger.info('Logging inicializado com sucesso.')
    return logger

def find_and_load_dotenv(logger):
    """
    Procura e carrega o ficheiro .env.
    """
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
            logger.warning(f"Ficheiro .env não foi encontrado em nenhuma das localizações esperadas.")

def get_db_config():
    """
    Lê as variáveis de ambiente da base de dados.
    """
    db_config = {
        "db_user": os.getenv("DB_USER", "postgres"),
        "db_password": os.getenv("DB_PASSWORD", "postgres"),
        "db_host": os.getenv("DB_HOST", "localhost"),
        "db_port": os.getenv("DB_PORT", "5432"),
        "db_name": os.getenv("DB_NAME", "ragdb"),
    }
    db_config["connection"] = f"postgresql+psycopg://{db_config['db_user']}:{db_config['db_password']}@{db_config['db_host']}:{db_config['db_port']}/{db_config['db_name']}"
    return db_config

def get_app_settings():
    """
    Retorna as configurações da aplicação.
    """
    return {
        "collection_name": "wine_embeddings",
        "embedding_model_name": "all-MiniLM-L6-v2",
    }

# --- Funções do Pipeline de Ingestão ---

def fetch_raw_wine_data(config, logger):
    """
    Liga-se à base de dados e extrai os dados dos vinhos a partir da VIEW.
    """
    logger.info(f"A ligar à base de dados '{config['db_name']}'...")
    try:
        with psycopg.connect(config["connection"].replace("+psycopg", "")) as conn:
            with conn.cursor() as cur:
                logger.info("Ligação à base de dados bem-sucedida.")
                cur.execute("SELECT * FROM wine.v_wine_details;")
                return cur.fetchall()
    except psycopg.Error as e:
        logger.error(f"Erro na base de dados: {e}")
        return []

def create_langchain_documents(raw_wine_data, logger):
    """
    Transforma os dados brutos numa lista de documentos LangChain.
    """
    if not raw_wine_data:
        logger.warning("Nenhum dado bruto de vinhos para processar.")
        return []
    logger.info(f"A transformar {len(raw_wine_data)} registos em documentos LangChain.")
    documents = []
    for wine_data in raw_wine_data:
        (wine_id, brand, vintage, wine_type, region, producer, 
         aroma, flavour, aspect, grapes, pairings, references) = wine_data
        page_content = (
            f"Vinho: {brand} (colheita de {vintage}).\n"
            f"Tipo: {wine_type} da região de {region}.\n"
            f"Produtor: {producer}.\n"
            f"Castas: {grapes}.\n"
            f"Notas de Prova: A cor é {aspect}. O aroma é {aroma} e o sabor é {flavour}.\n"
            f"Harmonização: Acompanha bem com {pairings}."
            f"Fonte: {references}."
        )
        metadata = {"wine_id": wine_id, "producer": producer, "brand": brand, "type": wine_type, "vintage": vintage, "region": region, "references": references}
        documents.append(Document(page_content=page_content, metadata=metadata))
    return documents

def get_embedding_model(config, logger):
    """
    Inicializa e retorna o modelo de embedding.
    """
    logger.info(f"A carregar o modelo de embedding: {config['embedding_model_name']}")
    return HuggingFaceEmbeddings(
      model_name=config['embedding_model_name'],
      model_kwargs={'device': 'cpu'},
      encode_kwargs={'normalize_embeddings': True}
    )

def populate_vector_store(documents, embeddings, config, logger):
    """
    Inicializa e popula a vector store com os documentos.
    """
    if not documents:
        logger.warning("Nenhum documento para popular a vector store. A saltar o passo.")
        return
    logger.info(f"A inicializar e popular a PGVector store com a coleção: {config['collection_name']}")
    PGVector.from_documents(
        embedding=embeddings,
        documents=documents,
        collection_name=config['collection_name'],
        connection=config['connection'],
        pre_delete_collection=True,
        distance_strategy=DistanceStrategy.COSINE,
    )
    logger.info("Vector store populada com sucesso!")

def create_hnsw_index(config, logger):
    """
    Chama uma função do PostgreSQL para criar o índice HNSW.
    """
    logger.info("A chamar a função do PostgreSQL para criar o índice HNSW...")
    try:
        with psycopg.connect(config["connection"].replace("+psycopg", "")) as conn:
            with conn.cursor() as cur:
                cur.execute("SELECT langchain.create_vector_index();")
                conn.commit()
                logger.info("Função de criação de índice do PostgreSQL executada com sucesso.")
    except psycopg.Error as e:
        logger.error(f"Falha ao executar a função de criação de índice: {e}")

# --- Função Principal de Execução ---

def main():
    """
    Função principal que orquestra a ingestão de dados.
    """
    logger = setup_logging()
    find_and_load_dotenv(logger)
    config = {**get_db_config(), **get_app_settings()}
    logger.info("Configuração da aplicação carregada.")

    # 1. Obter dados e criar documentos
    raw_data = fetch_raw_wine_data(config, logger)
    wine_documents = create_langchain_documents(raw_data, logger)
    
    # 2. Carregar modelo de embedding
    embedding_model = get_embedding_model(config, logger)

    # 3. Popular a base de dados vetorial
    populate_vector_store(wine_documents, embedding_model, config, logger)
    
    # 4. Criar o índice HNSW
    create_hnsw_index(config, logger)
    
    logger.info("Processo de ingestão de dados concluído com sucesso!")

if __name__ == "__main__":
    main()
