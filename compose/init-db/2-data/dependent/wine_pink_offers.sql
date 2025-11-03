-- Preços e stocks
INSERT INTO wine.wine_offers (wine_id, vendor_id, price_eur, stock_type, wine_offer_url, created_at, updated_at)
VALUES
  (
    (SELECT wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'António Maçanita' AND w.brand = 'Maçanita Touriga Nacional' AND w.wine_type = 'Rosé' AND w.vintage = 2023),
    (SELECT vendor_id FROM wine.vendors WHERE vendor_name = 'Portugal Vineyards'),
    10.25,
    'Disponível para entrega',
    'https://www.portugalvineyards.com/pt/douro/7312-macanita-touriga-nacional-em-rose-2018-5600789937105.html',
    '2025-08-12T00:45',
    '2025-08-12T00:45'
  );
