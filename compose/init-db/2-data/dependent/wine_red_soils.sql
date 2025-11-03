-- Os  solos onde a/as vinhas das castas de um vinho estão plantadas,
-- ex: Granítico e franco-argiloso, etc.
INSERT INTO wine.wine_soils (wine_id, soil_id, notes, insights, created_at, updated_at) 
VALUES 
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Natus Vini' AND w.brand = 'Natus' AND w.wine_type = 'Tinto' AND w.vintage = 2022),
    (SELECT soil_id FROM wine.soils WHERE soil_name = 'Xistoso'),
    'De textura Franco Arenosa e Franco Limosa',
    null,
    '2025-08-31T18:30',
    '2025-08-31T18:30'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Arvad' AND w.brand = 'Arvad Negra Mole' AND w.wine_type = 'Tinto' AND w.vintage = 2023),
    (SELECT soil_id FROM wine.soils WHERE soil_name = 'Argilo calcário'),
    null,
    null,
    '2025-08-31T00:45',
    '2025-08-31T00:45'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Quinta de Santiago x Mira do Ó' AND w.brand = 'SOU Vinha de Ramada' AND w.wine_type = 'Tinto' AND w.vintage = 2022),
    (SELECT soil_id FROM wine.soils WHERE soil_name = 'Granítico'),
    null,
    null,
    '2025-08-28T19:26',
    '2025-08-28T19:26'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Quinta de Santiago x Mira do Ó' AND w.brand = 'SOU Vinha de Ramada' AND w.wine_type = 'Tinto' AND w.vintage = 2022),
    (SELECT soil_id FROM wine.soils WHERE soil_name = 'Franco-argiloso'),
    null,
    null,
    '2025-08-28T19:26',
    '2025-08-28T19:26'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Quinta Nova de Nossa Senhora do Carmo' AND w.brand = 'Mirabilis' AND w.wine_type = 'Tinto' AND w.vintage = 2019),
    (SELECT soil_id FROM wine.soils WHERE soil_name = 'Xistoso'),
    null,
    null,
    '2025-08-28T19:44',
    '2025-08-28T19:44'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Mãos & Irmãos' AND w.brand = 'Mãos Reserva' AND w.wine_type = 'Tinto' AND w.vintage = 2015),
    (SELECT soil_id FROM wine.soils WHERE soil_name = 'Xistoso'),
    null,
    null,
    '2025-08-28T19:50',
    '2025-08-28T19:50'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Quinta da Perdonda' AND w.brand = 'Quinta da Perdonda Talhões' AND w.wine_type = 'Tinto' AND w.vintage = 2018),
    (SELECT soil_id FROM wine.soils WHERE soil_name = 'Granítico'),
    null,
    null,
    '2025-08-28T20:07',
    '2025-08-28T20:08'
  );
