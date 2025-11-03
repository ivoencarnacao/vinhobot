CREATE INDEX idx_wines_producer_id ON wine.wines(producer_id);
CREATE INDEX idx_wines_region_id ON wine.wines(region_id);
CREATE INDEX idx_wines_appellation_id ON wine.wines(appellation_id);

CREATE INDEX idx_wine_grapes_grape_id ON wine.wine_grapes(grape_id);

CREATE INDEX idx_wine_pairings_pairing_id ON wine.wine_pairings(pairing_id);