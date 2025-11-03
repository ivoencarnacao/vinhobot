-- Enólogos, ex: Paulo Nunes
INSERT INTO wine.wine_winemakers (wine_id, winemaker_id, created_at, updated_at) 
VALUES 
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Natus Vini' AND w.brand = 'Natus' AND w.wine_type = 'Tinto' AND w.vintage = 2022),
    (SELECT winemaker_id FROM wine.winemakers WHERE winemaker_name = 'Hamilton Reis'),
    '2025-08-31T05:08',
    '2025-08-31T05:08'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Arvad' AND w.brand = 'Arvad Negra Mole' AND w.wine_type = 'Tinto' AND w.vintage = 2023),
    (SELECT winemaker_id FROM wine.winemakers WHERE winemaker_name = 'Bernardo Cabral'),
    '2025-08-31T00:48',
    '2025-08-31T00:48'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Casa da Passarella' AND w.brand = 'O Fugitivo Vinhas Centenárias' AND w.wine_type = 'Tinto' AND w.vintage = 2019),
    (SELECT winemaker_id FROM wine.winemakers WHERE winemaker_name = 'Paulo Nunes'),
    '2025-08-29T00:17',
    '2025-08-29T00:17'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Quinta de Santiago x Mira do Ó' AND w.brand = 'SOU Vinha de Ramada' AND w.wine_type = 'Tinto' AND w.vintage = 2022),
    (SELECT winemaker_id FROM wine.winemakers WHERE winemaker_name = 'José Domingues'),
    '2025-08-28T21:09',
    '2025-08-28T21:09'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Quinta de Santiago x Mira do Ó' AND w.brand = 'SOU Vinha de Ramada' AND w.wine_type = 'Tinto' AND w.vintage = 2022),
    (SELECT winemaker_id FROM wine.winemakers WHERE winemaker_name = 'Nuno Mira do Ó'),
    '2025-08-28T21:10',
    '2025-08-28T21:10'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Quinta Nova de Nossa Senhora do Carmo' AND w.brand = 'Mirabilis' AND w.wine_type = 'Tinto' AND w.vintage = 2019),
    (SELECT winemaker_id FROM wine.winemakers WHERE winemaker_name = 'Jorge Alves'),
    '2025-08-25T19:46',
    '2025-08-25T19:46'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Quinta Nova de Nossa Senhora do Carmo' AND w.brand = 'Mirabilis' AND w.wine_type = 'Tinto' AND w.vintage = 2019),
    (SELECT winemaker_id FROM wine.winemakers WHERE winemaker_name = 'Sónia Pereira'),
    '2025-08-25T19:46',
    '2025-08-25T19:46'
  ),
  (
    (SELECT wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'António Maçanita' AND w.brand = 'Maçanita Reserva' AND w.wine_type = 'Tinto' AND w.vintage = 2022),
    (SELECT winemaker_id FROM wine.winemakers WHERE winemaker_name = 'Joana Maçanita'),
    '2025-08-11T23:58',
    '2025-08-11T23:58'
  ),
  (
    (SELECT wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'António Maçanita' AND w.brand = 'Maçanita Reserva' AND w.wine_type = 'Tinto' AND w.vintage = 2022),
    (SELECT winemaker_id FROM wine.winemakers WHERE winemaker_name = 'António Maçanita'),
    '2025-08-11T23:58',
    '2025-08-11T23:58'
  ),
  (
    (SELECT wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Morgado do Quintão' AND w.brand = 'Morgado do Quintão Clarete' AND w.wine_type = 'Tinto' AND w.vintage = 2023), 
    (SELECT winemaker_id FROM wine.winemakers WHERE winemaker_name = 'Joana Maçanita'),
    '2025-08-11T23:59',
    '2025-08-11T23:59'
  ),
  (
    (SELECT wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Quinta da Perdonda' AND w.brand = 'Quinta da Perdonda Talhões' AND w.wine_type = 'Tinto' AND w.vintage = 2018),
    (SELECT winemaker_id FROM wine.winemakers WHERE winemaker_name = 'Paulo Nunes'),
    '2025-08-11T23:59',
    '2025-08-11T23:59'
  );
