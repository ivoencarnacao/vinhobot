CREATE TABLE IF NOT EXISTS wine.wine_pairings (
    wine_id BIGINT NOT NULL,
    pairing_id BIGINT NOT NULL,
    created_at TIMESTAMPTZ,
    updated_at TIMESTAMPTZ,
    CONSTRAINT pk_wine_pairings PRIMARY KEY (wine_id, pairing_id),
    CONSTRAINT fk_wine_pairings_wine FOREIGN KEY (wine_id) REFERENCES wine.wines(wine_id) ON DELETE CASCADE,
    CONSTRAINT fk_wine_pairings_pairing FOREIGN KEY (pairing_id) REFERENCES wine.pairings(pairing_id) ON DELETE CASCADE
);
