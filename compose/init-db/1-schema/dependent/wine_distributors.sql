-- Distribuidores de vinhos, ex: Decante Vinhos
CREATE TABLE IF NOT EXISTS wine.wine_distributors (
    wine_id BIGINT NOT NULL,
    distributor_id BIGINT NOT NULL,
    created_at TIMESTAMPTZ,
    updated_at TIMESTAMPTZ,
    CONSTRAINT pk_wine_distributors PRIMARY KEY (wine_id, distributor_id),
    CONSTRAINT fk_wine_distributors_wine FOREIGN KEY (wine_id) REFERENCES wine.wines(wine_id) ON DELETE CASCADE,
    CONSTRAINT fk_wine_distributors_distributor FOREIGN KEY (distributor_id) REFERENCES wine.distributors(distributor_id) ON DELETE CASCADE
);
