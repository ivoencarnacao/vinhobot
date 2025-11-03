-- Lotes, ex: Touriga Nacional, Jaen, Alfrocheiro 
INSERT INTO wine.wine_grapes (wine_id, grape_id, wine_grape_percentage, created_at, updated_at) 
VALUES 
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Natus Vini' AND w.brand = 'Natus' AND w.wine_type = 'Tinto' AND w.vintage = 2022),
    (SELECT grape_id FROM wine.grapes WHERE grape_name = 'Trincadeira'),
    null,
    '2025-08-31T18:22',
    '2025-08-31T18:22'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Natus Vini' AND w.brand = 'Natus' AND w.wine_type = 'Tinto' AND w.vintage = 2022),
    (SELECT grape_id FROM wine.grapes WHERE grape_name = 'Castelão'),
    null,
    '2025-08-31T18:23',
    '2025-08-31T18:23'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Arvad' AND w.brand = 'Arvad Negra Mole' AND w.wine_type = 'Tinto' AND w.vintage = 2023),
    (SELECT grape_id FROM wine.grapes WHERE grape_name = 'Negra Mole'),
    null,
    '2025-08-31T00:41',
    '2025-08-31T00:41'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Casa da Passarella' AND w.brand = 'O Fugitivo Vinhas Centenárias' AND w.wine_type = 'Tinto' AND w.vintage = 2019),
    (SELECT grape_id FROM wine.grapes WHERE grape_name = 'Touriga Nacional'),
    null,
    '2025-08-29T03:56',
    '2025-08-29T03:56'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Casa da Passarella' AND w.brand = 'O Fugitivo Vinhas Centenárias' AND w.wine_type = 'Tinto' AND w.vintage = 2019),
    (SELECT grape_id FROM wine.grapes WHERE grape_name = 'Jaen'),
    null,
    '2025-08-29T03:56',
    '2025-08-29T03:56'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Casa da Passarella' AND w.brand = 'O Fugitivo Vinhas Centenárias' AND w.wine_type = 'Tinto' AND w.vintage = 2019),
    (SELECT grape_id FROM wine.grapes WHERE grape_name = 'Alfrocheiro'),
    null,
    '2025-08-29T03:56',
    '2025-08-29T03:56'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Quinta de Santiago x Mira do Ó' AND w.brand = 'SOU Vinha de Ramada' AND w.wine_type = 'Tinto' AND w.vintage = 2022),
    (SELECT grape_id FROM wine.grapes WHERE grape_name = 'Alvarinho'),
    null,
    '2025-08-28T18:53',
    '2025-08-28T18:53'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Quinta de Santiago x Mira do Ó' AND w.brand = 'SOU Vinha de Ramada' AND w.wine_type = 'Tinto' AND w.vintage = 2022),
    (SELECT grape_id FROM wine.grapes WHERE grape_name = 'Vinhão'),
    null,
    '2025-08-28T18:54',
    '2025-08-28T18:54'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Quinta de Santiago x Mira do Ó' AND w.brand = 'SOU Vinha de Ramada' AND w.wine_type = 'Tinto' AND w.vintage = 2022),
    (SELECT grape_id FROM wine.grapes WHERE grape_name = 'Alvarelhão'),
    null,
    '2025-08-28T18:56',
    '2025-08-28T18:56'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Quinta de Santiago x Mira do Ó' AND w.brand = 'SOU Vinha de Ramada' AND w.wine_type = 'Tinto' AND w.vintage = 2022),
    (SELECT grape_id FROM wine.grapes WHERE grape_name = 'Borraçal'),
    null,
    '2025-08-28T18:57',
    '2025-08-28T18:57'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Quinta de Santiago x Mira do Ó' AND w.brand = 'SOU Vinha de Ramada' AND w.wine_type = 'Tinto' AND w.vintage = 2022),
    (SELECT grape_id FROM wine.grapes WHERE grape_name = 'Caínho'),
    null,
    '2025-08-28T18:57',
    '2025-08-28T18:57'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Quinta de Santiago x Mira do Ó' AND w.brand = 'SOU Vinha de Ramada' AND w.wine_type = 'Tinto' AND w.vintage = 2022),
    (SELECT grape_id FROM wine.grapes WHERE grape_name = 'Pedral'),
    null,
    '2025-08-28T18:57',
    '2025-08-28T18:57'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Quinta Nova de Nossa Senhora do Carmo' AND w.brand = 'Mirabilis' AND w.wine_type = 'Tinto' AND w.vintage = 2019),
    (SELECT grape_id FROM wine.grapes WHERE grape_name = 'Tinta Amarela'),
    null,
    '2025-08-25T19:33',
    '2025-08-25T19:33'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Quinta Nova de Nossa Senhora do Carmo' AND w.brand = 'Mirabilis' AND w.wine_type = 'Tinto' AND w.vintage = 2019),
    (SELECT grape_id FROM wine.grapes WHERE grape_name = 'Vinha Centenária'),
    null,
    '2025-08-25T19:35',
    '2025-08-25T19:51'
  ),
  (
    (SELECT wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'António Maçanita' AND w.brand = 'Maçanita Reserva' AND w.wine_type = 'Tinto' AND w.vintage = 2022),
    (SELECT grape_id FROM wine.grapes WHERE grape_name = 'Sousão'),
    40,
    '2025-08-11T23:27',
    '2025-08-11T23:27'
  ),
  (
    (SELECT wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'António Maçanita' AND w.brand = 'Maçanita Reserva' AND w.wine_type = 'Tinto' AND w.vintage = 2022),
    (SELECT grape_id FROM wine.grapes WHERE grape_name = 'Touriga Nacional'),
    40,
    '2025-08-11T23:27',
    '2025-08-11T23:27'
  ),
  (
    (SELECT wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'António Maçanita' AND w.brand = 'Maçanita Reserva' AND w.wine_type = 'Tinto' AND w.vintage = 2022),
    (SELECT grape_id FROM wine.grapes WHERE grape_name = 'Mistura de castas tradicionais do Douro'),
    20,
    '2025-08-11T23:27',
    '2025-08-11T23:27'
  ),
  (
    (SELECT wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Mãos & Irmãos' AND w.brand = 'Mãos Reserva' AND w.wine_type = 'Tinto' AND w.vintage = 2015),
    (SELECT grape_id FROM wine.grapes WHERE grape_name = 'Touriga Nacional'),
    60,
    '2025-08-11T23:27',
    '2025-08-11T23:27'
  ),
  (
    (SELECT wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Mãos & Irmãos' AND w.brand = 'Mãos Reserva' AND w.wine_type = 'Tinto' AND w.vintage = 2015),
    (SELECT grape_id FROM wine.grapes WHERE grape_name = 'Tinta Roriz'),
    40,
    '2025-08-11T23:27',
    '2025-08-11T23:27'
  ),
  (
    (SELECT wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Morgado do Quintão' AND w.brand = 'Morgado do Quintão Clarete' AND w.wine_type = 'Tinto' AND w.vintage = 2023), 
    (SELECT grape_id FROM wine.grapes WHERE grape_name = 'Negra Mole'),
    null,
    '2025-08-11T23:27',
    '2025-08-11T23:27'
  ),
  (
    (SELECT wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Quinta da Perdonda' AND w.brand = 'Quinta da Perdonda Talhões' AND w.wine_type = 'Tinto' AND w.vintage = 2018),
    (SELECT grape_id FROM wine.grapes WHERE grape_name = 'Vinhas Velhas'),
    null,
    '2025-08-11T23:28',
    '2025-08-11T23:28'
  );