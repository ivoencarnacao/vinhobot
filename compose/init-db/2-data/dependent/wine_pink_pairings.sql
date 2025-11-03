-- Wine Pairings
INSERT INTO wine.wine_pairings (wine_id, pairing_id, created_at, updated_at) 
VALUES
  (
    (SELECT wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Kopke 1638' AND w.brand = 'São Luiz Winemakers Collection' AND w.wine_type = 'Rosé' AND w.vintage = 2021),
    (SELECT pairing_id FROM wine.pairings WHERE pairing_name = 'Pratos de peixe'),
    '2025-08-31T23:27',
    '2025-08-31T23:27'
  ),
  (
    (SELECT wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Kopke 1638' AND w.brand = 'São Luiz Winemakers Collection' AND w.wine_type = 'Rosé' AND w.vintage = 2021),
    (SELECT pairing_id FROM wine.pairings WHERE pairing_name = 'Mariscos'),
    '2025-08-31T23:28',
    '2025-08-31T23:28'
  ),
  (
    (SELECT wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Kopke 1638' AND w.brand = 'São Luiz Winemakers Collection' AND w.wine_type = 'Rosé' AND w.vintage = 2021),
    (SELECT pairing_id FROM wine.pairings WHERE pairing_name = 'Pratos de carnes brancas'),
    '2025-08-31T23:28',
    '2025-08-31T23:28'
  ),
  (
    (SELECT wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Kopke 1638' AND w.brand = 'São Luiz Winemakers Collection' AND w.wine_type = 'Rosé' AND w.vintage = 2021),
    (SELECT pairing_id FROM wine.pairings WHERE pairing_name = 'Queijos de média intensidade'),
    '2025-08-31T23:28',
    '2025-08-31T23:28'
  ),
  (
    (SELECT wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'António Maçanita' AND w.brand = 'Maçanita Touriga Nacional' AND w.wine_type = 'Rosé' AND w.vintage = 2023),
    (SELECT pairing_id FROM wine.pairings WHERE pairing_name = 'Pratos de peixe'),
    '2025-08-12T00:38',
    '2025-08-12T00:38'
  ),
  (
    (SELECT wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'António Maçanita' AND w.brand = 'Maçanita Touriga Nacional' AND w.wine_type = 'Rosé' AND w.vintage = 2023),
    (SELECT pairing_id FROM wine.pairings WHERE pairing_name = 'Mariscos'),
    '2025-08-12T00:38',
    '2025-08-12T00:38'
  ),
  (
    (SELECT wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'António Maçanita' AND w.brand = 'Maçanita Touriga Nacional' AND w.wine_type = 'Rosé' AND w.vintage = 2023),
    (SELECT pairing_id FROM wine.pairings WHERE pairing_name = 'Saladas'),
    '2025-08-12T00:38',
    '2025-08-12T00:38'
  ),
  (
    (SELECT wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'António Maçanita' AND w.brand = 'Maçanita Touriga Nacional' AND w.wine_type = 'Rosé' AND w.vintage = 2023),
    (SELECT pairing_id FROM wine.pairings WHERE pairing_name = 'Pratos de carnes brancas'),
    '2025-08-12T00:38',
    '2025-08-12T00:38'
  ),
  (
    (SELECT wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'António Maçanita' AND w.brand = 'Maçanita Touriga Nacional' AND w.wine_type = 'Rosé' AND w.vintage = 2023),
    (SELECT pairing_id FROM wine.pairings WHERE pairing_name = 'Comida asiática'),
    '2025-08-12T00:38',
    '2025-08-12T00:38'
  );
