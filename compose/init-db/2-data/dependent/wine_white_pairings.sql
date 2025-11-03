-- Wine Pairings
INSERT INTO wine.wine_pairings (wine_id, pairing_id, created_at, updated_at) 
VALUES
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Vinevinu' AND w.brand = 'Génese' AND w.wine_type = 'Branco' AND w.vintage = 2024),
    (SELECT pairing_id FROM wine.pairings WHERE pairing_name = 'Entradas'),
    '2025-09-01T22:34',
    '2025-09-01T22:34'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Vinevinu' AND w.brand = 'Génese' AND w.wine_type = 'Branco' AND w.vintage = 2024),
    (SELECT pairing_id FROM wine.pairings WHERE pairing_name = 'Mariscos'),
    '2025-09-01T22:34',
    '2025-09-01T22:34'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Vinevinu' AND w.brand = 'Génese' AND w.wine_type = 'Branco' AND w.vintage = 2024),
    (SELECT pairing_id FROM wine.pairings WHERE pairing_name = 'Pratos de peixe'),
    '2025-09-01T22:35',
    '2025-09-01T22:35'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Vinevinu' AND w.brand = 'Génese' AND w.wine_type = 'Branco' AND w.vintage = 2024),
    (SELECT pairing_id FROM wine.pairings WHERE pairing_name = 'Saladas'),
    '2025-09-01T22:35',
    '2025-09-01T22:35'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Vinevinu' AND w.brand = 'Génese' AND w.wine_type = 'Branco' AND w.vintage = 2024),
    (SELECT pairing_id FROM wine.pairings WHERE pairing_name = 'Sem qualquer acompanhamento'),
    '2025-09-01T22:35',
    '2025-09-01T22:35'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Mira do Ó' AND w.brand = 'Druida Vinha da Pedra Azul' AND w.wine_type = 'Branco' AND w.vintage = 2023),
    (SELECT pairing_id FROM wine.pairings WHERE pairing_name = 'Peixes assados'),
    '2025-08-29T03:59',
    '2025-08-29T03:59'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Mira do Ó' AND w.brand = 'Druida Vinha da Pedra Azul' AND w.wine_type = 'Branco' AND w.vintage = 2023),
    (SELECT pairing_id FROM wine.pairings WHERE pairing_name = 'Queijos de cabra macios'),
    '2025-08-29T03:59',
    '2025-08-29T03:59'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Mira do Ó' AND w.brand = 'Druida Vinha da Pedra Azul' AND w.wine_type = 'Branco' AND w.vintage = 2023),
    (SELECT pairing_id FROM wine.pairings WHERE pairing_name = 'Pratos de carnes brancas'),
    '2025-08-29T03:59',
    '2025-08-29T03:59'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Mira do Ó' AND w.brand = 'Druida Vinha da Pedra Azul' AND w.wine_type = 'Branco' AND w.vintage = 2023),
    (SELECT pairing_id FROM wine.pairings WHERE pairing_name = 'Pratos de bacalhau'),
    '2025-08-29T04:00',
    '2025-08-29T04:00'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Dona Berta' AND w.brand = 'Dona Berta Reserva' AND w.wine_type = 'Branco' AND w.vintage = 2023),
    (SELECT pairing_id FROM wine.pairings WHERE pairing_name = 'Pratos ligeiros de marisco (enquanto jovem)'),
    '2025-08-25T23:13',
    '2025-08-25T23:13'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Dona Berta' AND w.brand = 'Dona Berta Reserva' AND w.wine_type = 'Branco' AND w.vintage = 2023),
    (SELECT pairing_id FROM wine.pairings WHERE pairing_name = 'Pratos de aves de capoeira (quando envelhecido)'),
    '2025-08-25T23:15',
    '2025-08-25T23:15'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Dona Berta' AND w.brand = 'Dona Berta Reserva' AND w.wine_type = 'Branco' AND w.vintage = 2023),
    (SELECT pairing_id FROM wine.pairings WHERE pairing_name = 'Queijos curados (quando envelhecido)'),
    '2025-08-25T23:15',
    '2025-08-25T23:15'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Dona Berta' AND w.brand = 'Dona Berta Reserva' AND w.wine_type = 'Branco' AND w.vintage = 2023),
    (SELECT pairing_id FROM wine.pairings WHERE pairing_name = 'Queijos condimentados (quando envelhecido)'),
    '2025-08-25T23:16',
    '2025-08-25T23:16'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Entre Pedras' AND w.brand = 'Efusivo' AND w.wine_type = 'Branco' AND w.vintage = 2023),
    (SELECT pairing_id FROM wine.pairings WHERE pairing_name = 'Ostras'),
    '2025-08-12T00:36',
    '2025-08-12T00:36'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Entre Pedras' AND w.brand = 'Efusivo' AND w.wine_type = 'Branco' AND w.vintage = 2023),
    (SELECT pairing_id FROM wine.pairings WHERE pairing_name = 'Cracas'),
    '2025-08-12T00:36',
    '2025-08-12T00:36'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Entre Pedras' AND w.brand = 'Efusivo' AND w.wine_type = 'Branco' AND w.vintage = 2023),
    (SELECT pairing_id FROM wine.pairings WHERE pairing_name = 'Bivalves'),
    '2025-08-12T00:37',
    '2025-08-12T00:37'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Entre Pedras' AND w.brand = 'Efusivo' AND w.wine_type = 'Branco' AND w.vintage = 2023),
    (SELECT pairing_id FROM wine.pairings WHERE pairing_name = 'Peixes grelhados'),
    '2025-08-12T00:37',
    '2025-08-12T00:37'
  ),
  (
    (SELECT wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Miguel Louro Wines' AND w.brand = 'Primeiro Nome' AND w.wine_type = 'Branco' AND w.vintage = 2019),
    (SELECT pairing_id FROM wine.pairings WHERE pairing_name = 'Mariscos'),
    '2025-08-12T00:38',
    '2025-08-12T00:38'
  ),
  (
    (SELECT wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Miguel Louro Wines' AND w.brand = 'Primeiro Nome' AND w.wine_type = 'Branco' AND w.vintage = 2019),
    (SELECT pairing_id FROM wine.pairings WHERE pairing_name = 'Pratos de carnes brancas'),
    '2025-08-12T00:38',
    '2025-08-12T00:38'
  ),
  (
    (SELECT wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Miguel Louro Wines' AND w.brand = 'Primeiro Nome' AND w.wine_type = 'Branco' AND w.vintage = 2019),
    (SELECT pairing_id FROM wine.pairings WHERE pairing_name = 'Queijos de pasta mole'),
    '2025-08-12T00:39',
    '2025-08-12T00:39'
  ),
  (
    (SELECT wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Miguel Louro Wines' AND w.brand = 'Primeiro Nome' AND w.wine_type = 'Branco' AND w.vintage = 2019),
    (SELECT pairing_id FROM wine.pairings WHERE pairing_name = 'Sushi (combinação perfeita)'),
    '2025-08-12T00:39',
    '2025-08-12T00:39'
  ),
  (
    (SELECT wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Quinta da Perdonda' AND w.brand = 'Quinta da Perdonda Talhões' AND w.wine_type = 'Branco' AND w.vintage = 2021),
    (SELECT pairing_id FROM wine.pairings WHERE pairing_name = 'Peixes, mesmo com molhos'),
    '2025-08-12T00:39',
    '2025-08-12T00:39'
  ),
  (
    (SELECT wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Quinta da Perdonda' AND w.brand = 'Quinta da Perdonda Talhões' AND w.wine_type = 'Branco' AND w.vintage = 2021),
    (SELECT pairing_id FROM wine.pairings WHERE pairing_name = 'Mariscos, mesmo com molhos'),
    '2025-08-12T00:39',
    '2025-08-12T00:39'
  ),
  (
    (SELECT wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Quinta da Perdonda' AND w.brand = 'Quinta da Perdonda Talhões' AND w.wine_type = 'Branco' AND w.vintage = 2021),
    (SELECT pairing_id FROM wine.pairings WHERE pairing_name = 'Carnes magras'),
    '2025-08-12T00:39',
    '2025-08-12T00:39'
  ),
  (
    (SELECT wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Quinta da Perdonda' AND w.brand = 'Quinta da Perdonda Talhões' AND w.wine_type = 'Branco' AND w.vintage = 2021),
    (SELECT pairing_id FROM wine.pairings WHERE pairing_name = 'Queijos de cabra'),
    '2025-08-12T00:39',
    '2025-08-12T00:39'
  );
