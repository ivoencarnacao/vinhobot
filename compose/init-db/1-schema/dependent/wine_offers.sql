-- Preços e disponibilidade de um vinho
CREATE TABLE IF NOT EXISTS wine.wine_offers (
    wine_id BIGINT NOT NULL,
    vendor_id BIGINT NOT NULL,
    price_eur NUMERIC(10, 2) NOT NULL,
    stock_type wine.stock_type,
    wine_offer_url VARCHAR(2048),
    created_at TIMESTAMPTZ,
    updated_at TIMESTAMPTZ,
    CONSTRAINT pk_wine_offers PRIMARY KEY (wine_id, vendor_id),
    CONSTRAINT fk_wine_offers_wine FOREIGN KEY (wine_id) REFERENCES wine.wines(wine_id) ON DELETE CASCADE,
    CONSTRAINT fk_wine_offers_vendor FOREIGN KEY (vendor_id) REFERENCES wine.vendors(vendor_id) ON DELETE CASCADE,
    CONSTRAINT uq_wine_vendor UNIQUE (wine_id, vendor_id)
);