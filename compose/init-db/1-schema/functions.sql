-- Cria um índice HNSW
CREATE OR REPLACE FUNCTION langchain.create_vector_index()
RETURNS VOID AS $$
DECLARE
    embedding_dimensions INT := 384; -- Dimensões para o 'all-MiniLM-L6-v2'
BEGIN
    RAISE NOTICE 'A garantir as dimensões da coluna embedding...';

    EXECUTE format('ALTER TABLE langchain.langchain_pg_embedding ALTER COLUMN embedding TYPE vector(%s)', embedding_dimensions);
    
    RAISE NOTICE 'A criar o índice HNSW...';

    CREATE INDEX IF NOT EXISTS idx_hnsw_embedding_cosine
    ON langchain.langchain_pg_embedding
    USING HNSW (embedding vector_cosine_ops)
    WITH (m = 16, ef_construction = 64);

    RAISE NOTICE 'Função create_vector_index concluída.';
END;
$$ LANGUAGE plpgsql;