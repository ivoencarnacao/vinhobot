CREATE TABLE IF NOT EXISTS wine.wine_references (
    wine_id BIGINT NOT NULL,
    source_id BIGINT NOT NULL,
    source_type wine.source_type NOT NULL,
    wine_reference VARCHAR(2048) NOT NULL,
    created_at TIMESTAMPTZ,
    updated_at TIMESTAMPTZ,
    CONSTRAINT pk_wine_references PRIMARY KEY (wine_id, source_id),
    CONSTRAINT fk_wine_references_wine FOREIGN KEY (wine_id) REFERENCES wine.wines(wine_id) ON DELETE CASCADE,
    CONSTRAINT fk_wine_references_source FOREIGN KEY (source_id) REFERENCES wine.sources(source_id) ON DELETE CASCADE,
    CONSTRAINT uq_wine_source UNIQUE (wine_id, source_id)
);
