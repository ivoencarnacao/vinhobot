-- Enólogos
CREATE TABLE IF NOT EXISTS wine.wine_winemakers (
    wine_id BIGINT NOT NULL,
    winemaker_id BIGINT NOT NULL,
    created_at TIMESTAMPTZ,
    updated_at TIMESTAMPTZ,
    CONSTRAINT pk_wine_winemakers PRIMARY KEY (wine_id, winemaker_id),
    CONSTRAINT fk_wine_winemakers_wine FOREIGN KEY (wine_id) REFERENCES wine.wines(wine_id) ON DELETE CASCADE,
    CONSTRAINT fk_wine_winemakers_winemaker FOREIGN KEY (winemaker_id) REFERENCES wine.winemakers(winemaker_id) ON DELETE CASCADE
);
