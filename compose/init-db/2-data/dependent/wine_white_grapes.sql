-- Lotes, ex: Arinto e Roupeiro 
INSERT INTO wine.wine_grapes (wine_id, grape_id, wine_grape_percentage, created_at, updated_at) 
VALUES 
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Vinevinu' AND w.brand = 'Génese' AND w.wine_type = 'Branco' AND w.vintage = 2024),
    (SELECT grape_id FROM wine.grapes WHERE grape_name = 'Alvarinho'),
    100,
    '2025-09-01T22:32',
    '2025-09-01T22:32'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'atlasland' AND w.brand = 'Oh! Amigo' AND w.wine_type = 'Branco' AND w.vintage = 2022),
    (SELECT grape_id FROM wine.grapes WHERE grape_name = 'Vinhas Velhas'),
    null,
    '2025-08-31T22:03',
    '2025-08-31T22:03'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'atlasland' AND w.brand = 'Oh! Amigo' AND w.wine_type = 'Branco' AND w.vintage = 2022),
    (SELECT grape_id FROM wine.grapes WHERE grape_name = 'Bastardo'),
    null,
    '2025-08-31T22:03',
    '2025-08-31T22:03'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'atlasland' AND w.brand = 'Oh! Amigo' AND w.wine_type = 'Branco' AND w.vintage = 2022),
    (SELECT grape_id FROM wine.grapes WHERE grape_name = 'Castelão'),
    null,
    '2025-08-31T22:03',
    '2025-08-31T22:03'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Mira do Ó' AND w.brand = 'Druida Vinha da Pedra Azul' AND w.wine_type = 'Branco' AND w.vintage = 2023),
    (SELECT grape_id FROM wine.grapes WHERE grape_name = 'Encruzado'),
    null,
    '2025-08-29T03:52',
    '2025-08-29T03:52'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Dona Berta' AND w.brand = 'Dona Berta Reserva' AND w.wine_type = 'Branco' AND w.vintage = 2023),
    (SELECT grape_id FROM wine.grapes WHERE grape_name = 'Rabigato'),
    null,
    '2025-08-25T23:04',
    '2025-08-25T23:04'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Entre Pedras' AND w.brand = 'Efusivo' AND w.wine_type = 'Branco' AND w.vintage = 2023),
    (SELECT grape_id FROM wine.grapes WHERE grape_name = 'Arinto dos Açores'),
    60,
    '2025-08-11T23:26',
    '2025-08-12T00:35'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Entre Pedras' AND w.brand = 'Efusivo' AND w.wine_type = 'Branco' AND w.vintage = 2023),
    (SELECT grape_id FROM wine.grapes WHERE grape_name = 'Verdelho'),
    30,
    '2025-08-11T23:26',
    '2025-08-12T00:35'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Entre Pedras' AND w.brand = 'Efusivo' AND w.wine_type = 'Branco' AND w.vintage = 2023),
    (SELECT grape_id FROM wine.grapes WHERE grape_name = 'Terrantez do Pico'),
    10,
    '2025-08-11T23:27',
    '2025-08-12T00:35'
  ),
  (
    (SELECT wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Miguel Louro Wines' AND w.brand = 'Primeiro Nome' AND w.wine_type = 'Branco' AND w.vintage = 2019),
    (SELECT grape_id FROM wine.grapes WHERE grape_name = 'Arinto'),
    30,
    '2025-08-11T23:27',
    '2025-08-11T23:27'
  ),
  (
    (SELECT wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Miguel Louro Wines' AND w.brand = 'Primeiro Nome' AND w.wine_type = 'Branco' AND w.vintage = 2019),
    (SELECT grape_id FROM wine.grapes WHERE grape_name = 'Rabigato'),
    30,
    '2025-08-11T23:27',
    '2025-08-11T23:27'
  ),
  (
    (SELECT wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Miguel Louro Wines' AND w.brand = 'Primeiro Nome' AND w.wine_type = 'Branco' AND w.vintage = 2019),
    (SELECT grape_id FROM wine.grapes WHERE grape_name = 'Alvarinho'),
    20,
    '2025-08-11T23:27',
    '2025-08-11T23:27'
  ),
  (
    (SELECT wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Miguel Louro Wines' AND w.brand = 'Primeiro Nome' AND w.wine_type = 'Branco' AND w.vintage = 2019),
    (SELECT grape_id FROM wine.grapes WHERE grape_name = 'Verdelho'),
    10,
    '2025-08-11T23:28',
    '2025-08-11T23:28'
  ),
  (
    (SELECT wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Miguel Louro Wines' AND w.brand = 'Primeiro Nome' AND w.wine_type = 'Branco' AND w.vintage = 2019),
    (SELECT grape_id FROM wine.grapes WHERE grape_name = 'Roupeiro'),
    10,
    '2025-08-11T23:28',
    '2025-08-11T23:28'
  ),
  (
    (SELECT wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Quinta da Perdonda' AND w.brand = 'Quinta da Perdonda Talhões' AND w.wine_type = 'Branco' AND w.vintage = 2021),
    (SELECT grape_id FROM wine.grapes WHERE grape_name = 'Vinhas Velhas'),
    null,
    '2025-08-11T23:28',
    '2025-08-11T23:28'
  ),
  (
    (SELECT wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Quinta das Marias' AND w.brand = 'Quinta das Marias Encruzado' AND w.wine_type = 'Branco' AND w.vintage = 2022),
    (SELECT grape_id FROM wine.grapes WHERE grape_name = 'Encruzado'),
    null,
    '2025-08-11T23:28',
    '2025-08-11T23:28'
  );
