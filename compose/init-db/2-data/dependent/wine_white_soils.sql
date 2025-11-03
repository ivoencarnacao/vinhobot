-- Os  solos onde a/as vinhas das castas de um vinho estão plantadas,
-- ex: Granítico e franco-argiloso, etc.
INSERT INTO wine.wine_soils (wine_id, soil_id, notes, insights, created_at, updated_at) 
VALUES 
  (
    (SELECT w.wine_id
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Vinevinu' AND w.brand = 'Génese' AND w.wine_type = 'Branco' AND w.vintage = 2024),
    (SELECT soil_id FROM wine.soils WHERE soil_name = 'Granítico'),
    null,
    null,
    '2025-09-01T22:20',
    '2025-09-01T22:20'
  ),
  (
    (SELECT w.wine_id
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Vinevinu' AND w.brand = 'Génese' AND w.wine_type = 'Branco' AND w.vintage = 2024),
    (SELECT soil_id FROM wine.soils WHERE soil_name = 'Arenoso'),
    'E com baixo teor em argila.',
    'Solo pobre e de acidez alta, o que influencia o perfil dos vinhos de forma correspondente.',
    '2025-09-01T22:21',
    '2025-09-01T22:21'
  ),
  (
    (SELECT w.wine_id
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Quinta da Perdonda' AND w.brand = 'Quinta da Perdonda Talhões' AND w.wine_type = 'Branco' AND w.vintage = 2021),
    (SELECT soil_id FROM wine.soils WHERE soil_name = 'Granítico'),
    null,
    null,
    '2025-08-28T20:27',
    '2025-08-28T20:27'
  ),
  (
    (SELECT w.wine_id
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Miguel Louro Wines' AND w.brand = 'Primeiro Nome' AND w.wine_type = 'Branco' AND w.vintage = 2019),
    (SELECT soil_id FROM wine.soils WHERE soil_name = 'Xistoso'),
    null,
    null,
    '2025-08-28T20:25',
    '2025-08-28T20:25'
  );

