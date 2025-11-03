-- Os  solos onde a/as vinhas das castas de um vinho estão plantadas,
-- ex: Granítico e franco-argiloso, etc.
CREATE TABLE IF NOT EXISTS wine.wine_soils (
    wine_id BIGINT NOT NULL,
    soil_id BIGINT NOT NULL,
    notes TEXT,
    insights TEXT,
    created_at TIMESTAMPTZ,
    updated_at TIMESTAMPTZ,
    CONSTRAINT pk_wine_soils PRIMARY KEY (wine_id, soil_id),
    CONSTRAINT fk_wine_soils_wine FOREIGN KEY (wine_id) REFERENCES wine.wines(wine_id) ON DELETE CASCADE,
    CONSTRAINT fk_wine_soils_soil FOREIGN KEY (soil_id) REFERENCES wine.soils(soil_id) ON DELETE CASCADE
);
