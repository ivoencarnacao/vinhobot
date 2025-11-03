-- Enums
CREATE TYPE wine.wine_type AS ENUM('Tinto', 'Branco', 'Rosé');
CREATE TYPE wine.source_type AS ENUM('URL', 'PDF');

-- In stock / Out of stock
CREATE TYPE wine.stock_type AS ENUM('Disponível para entrega', 'Não disponível');
