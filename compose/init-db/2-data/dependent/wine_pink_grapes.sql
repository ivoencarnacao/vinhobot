-- Lotes, ex: Touriga Nacional
INSERT INTO wine.wine_grapes (wine_id, grape_id, wine_grape_percentage, created_at, updated_at) 
VALUES 
  (
    (SELECT wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Kopke 1638' AND w.brand = 'São Luiz Winemakers Collection' AND w.wine_type = 'Rosé' AND w.vintage = 2021),
    (SELECT grape_id FROM wine.grapes WHERE grape_name = 'Tinto Cão'),
    100,
    '2025-08-31T23:09',
    '2025-08-31T23:09'
  ),
  (
    (SELECT wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'António Maçanita' AND w.brand = 'Maçanita Touriga Nacional' AND w.wine_type = 'Rosé' AND w.vintage = 2023),
    (SELECT grape_id FROM wine.grapes WHERE grape_name = 'Touriga Nacional'),
    100,
    '2025-08-11T23:27',
    '2025-08-11T23:27'
  );
