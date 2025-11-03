-- Enólogos
INSERT INTO wine.wine_winemakers (wine_id, winemaker_id, created_at, updated_at) 
VALUES 
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Vinevinu' AND w.brand = 'Génese' AND w.wine_type = 'Branco' AND w.vintage = 2024),
    (SELECT winemaker_id FROM wine.winemakers WHERE winemaker_name = 'António Luís Cerdeira'),
    '2025-09-01T22:22',
    '2025-09-01T22:22'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Vinevinu' AND w.brand = 'Génese' AND w.wine_type = 'Branco' AND w.vintage = 2024),
    (SELECT winemaker_id FROM wine.winemakers WHERE winemaker_name = 'Manuel Cerdeira'),
    '2025-09-01T22:22',
    '2025-09-01T22:22'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'atlasland' AND w.brand = 'Oh! Amigo' AND w.wine_type = 'Branco' AND w.vintage = 2022),
    (SELECT winemaker_id FROM wine.winemakers WHERE winemaker_name = 'Filippo Pozzi'),
    '2025-08-31T22:37',
    '2025-08-31T22:37'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Dona Berta' AND w.brand = 'Dona Berta Reserva' AND w.wine_type = 'Branco' AND w.vintage = 2023),
    (SELECT winemaker_id FROM wine.winemakers WHERE winemaker_name = 'Hernâni Verdelho'),
    '2025-08-25T23:18',
    '2025-08-25T23:18'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Entre Pedras' AND w.brand = 'Efusivo' AND w.wine_type = 'Branco' AND w.vintage = 2023),
    (SELECT winemaker_id FROM wine.winemakers WHERE winemaker_name = 'André Ribeiro'),
    '2025-08-11T23:58',
    '2025-08-12T00:40'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Entre Pedras' AND w.brand = 'Efusivo' AND w.wine_type = 'Branco' AND w.vintage = 2023),
    (SELECT winemaker_id FROM wine.winemakers WHERE winemaker_name = 'Ricardo Pinto'),
    '2025-08-11T23:58',
    '2025-08-12T00:40'
  ),
  (
    (SELECT wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Quinta da Perdonda' AND w.brand = 'Quinta da Perdonda Talhões' AND w.wine_type = 'Branco' AND w.vintage = 2021),
    (SELECT winemaker_id FROM wine.winemakers WHERE winemaker_name = 'Paulo Nunes'),
    '2025-08-11T23:59',
    '2025-08-11T23:59'
  ),
  (
    (SELECT wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Quinta das Marias' AND w.brand = 'Quinta das Marias Encruzado' AND w.wine_type = 'Branco' AND w.vintage = 2022),
    (SELECT winemaker_id FROM wine.winemakers WHERE winemaker_name = 'Eng. Luís Lopes'),
    '2025-08-11T23:59',
    '2025-08-11T23:59'
  );
