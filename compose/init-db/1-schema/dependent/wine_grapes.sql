-- Lotes, ex: Arinto e Roupeiro 
CREATE TABLE IF NOT EXISTS wine.wine_grapes (
    wine_id BIGINT NOT NULL,
    grape_id BIGINT NOT NULL,
    wine_grape_percentage NUMERIC(5,2),
    created_at TIMESTAMPTZ,
    updated_at TIMESTAMPTZ,
    CONSTRAINT pk_wine_grapes PRIMARY KEY (wine_id, grape_id),
    CONSTRAINT fk_wine_grapes_wine FOREIGN KEY (wine_id) REFERENCES wine.wines(wine_id) ON DELETE CASCADE,
    CONSTRAINT fk_wine_grapes_grape FOREIGN KEY (grape_id) REFERENCES wine.grapes(grape_id) ON DELETE CASCADE
);
