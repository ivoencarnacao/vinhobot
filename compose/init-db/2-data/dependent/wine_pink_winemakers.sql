-- Enólogos
INSERT INTO wine.wine_winemakers (wine_id, winemaker_id, created_at, updated_at) 
VALUES 
  (
    (SELECT wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Kopke 1638' AND w.brand = 'São Luiz Winemakers Collection' AND w.wine_type = 'Rosé' AND w.vintage = 2021),
    (SELECT winemaker_id FROM wine.winemakers WHERE winemaker_name = 'Ricardo Macedo'),
    '2025-08-31T23:30',
    '2025-08-31T23:30'
  ),
  (
    (SELECT wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'António Maçanita' AND w.brand = 'Maçanita Touriga Nacional' AND w.wine_type = 'Rosé' AND w.vintage = 2023),
    (SELECT winemaker_id FROM wine.winemakers WHERE winemaker_name = 'Joana Maçanita'),
    '2025-08-11T23:58',
    '2025-08-11T23:58'
  ),
  (
    (SELECT wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'António Maçanita' AND w.brand = 'Maçanita Touriga Nacional' AND w.wine_type = 'Rosé' AND w.vintage = 2023),
    (SELECT winemaker_id FROM wine.winemakers WHERE winemaker_name = 'António Maçanita'),
    '2025-08-11T23:58',
    '2025-08-11T23:58'
  );