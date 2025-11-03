-- Wine Pairings
INSERT INTO wine.wine_pairings (wine_id, pairing_id, created_at, updated_at) 
VALUES
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Natus Vini' AND w.brand = 'Natus' AND w.wine_type = 'Tinto' AND w.vintage = 2022),
    (SELECT pairing_id FROM wine.pairings WHERE pairing_name = 'Carnes vermelhas'),
    '2025-08-31T18:51',
    '2025-08-31T18:51'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Natus Vini' AND w.brand = 'Natus' AND w.wine_type = 'Tinto' AND w.vintage = 2022),
    (SELECT pairing_id FROM wine.pairings WHERE pairing_name = 'Enchidos'),
    '2025-08-31T18:53',
    '2025-08-31T18:53'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Natus Vini' AND w.brand = 'Natus' AND w.wine_type = 'Tinto' AND w.vintage = 2022),
    (SELECT pairing_id FROM wine.pairings WHERE pairing_name = 'Queijos de cura'),
    '2025-08-31T18:53',
    '2025-08-31T18:53'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Natus Vini' AND w.brand = 'Natus' AND w.wine_type = 'Tinto' AND w.vintage = 2022),
    (SELECT pairing_id FROM wine.pairings WHERE pairing_name = 'Queijos de meia cura'),
    '2025-08-31T18:53',
    '2025-08-31T18:53'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Arvad' AND w.brand = 'Arvad Negra Mole' AND w.wine_type = 'Tinto' AND w.vintage = 2023),
    (SELECT pairing_id FROM wine.pairings WHERE pairing_name = 'Saladas'),
    '2025-08-31T00:42',
    '2025-08-31T00:42'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Arvad' AND w.brand = 'Arvad Negra Mole' AND w.wine_type = 'Tinto' AND w.vintage = 2023),
    (SELECT pairing_id FROM wine.pairings WHERE pairing_name = 'Pizzas'),
    '2025-08-31T00:43',
    '2025-08-31T00:43'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Arvad' AND w.brand = 'Arvad Negra Mole' AND w.wine_type = 'Tinto' AND w.vintage = 2023),
    (SELECT pairing_id FROM wine.pairings WHERE pairing_name = 'Sardinhas assadas'),
    '2025-08-31T00:43',
    '2025-08-31T00:43'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Arvad' AND w.brand = 'Arvad Negra Mole' AND w.wine_type = 'Tinto' AND w.vintage = 2023),
    (SELECT pairing_id FROM wine.pairings WHERE pairing_name = 'Atum braseado'),
    '2025-08-31T00:44',
    '2025-08-31T00:44'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Casa da Passarella' AND w.brand = 'O Fugitivo Vinhas Centenárias' AND w.wine_type = 'Tinto' AND w.vintage = 2019),
    (SELECT pairing_id FROM wine.pairings WHERE pairing_name = 'Carnes vermelhas'),
    '2025-08-28T23:57',
    '2025-08-28T23:57'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Casa da Passarella' AND w.brand = 'O Fugitivo Vinhas Centenárias' AND w.wine_type = 'Tinto' AND w.vintage = 2019),
    (SELECT pairing_id FROM wine.pairings WHERE pairing_name = 'Carnes grelhadas'),
    '2025-08-28T23:57',
    '2025-08-28T23:57'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Casa da Passarella' AND w.brand = 'O Fugitivo Vinhas Centenárias' AND w.wine_type = 'Tinto' AND w.vintage = 2019),
    (SELECT pairing_id FROM wine.pairings WHERE pairing_name = 'Rosbife'),
    '2025-08-28T23:57',
    '2025-08-28T23:57'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Quinta de Santiago x Mira do Ó' AND w.brand = 'SOU Vinha de Ramada' AND w.wine_type = 'Tinto' AND w.vintage = 2022),
    (SELECT pairing_id FROM wine.pairings WHERE pairing_name = 'Cozinha tradicional'),
    '2025-08-28T21:02',
    '2025-08-28T21:02'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Quinta de Santiago x Mira do Ó' AND w.brand = 'SOU Vinha de Ramada' AND w.wine_type = 'Tinto' AND w.vintage = 2022),
    (SELECT pairing_id FROM wine.pairings WHERE pairing_name = 'Pratos vegetarianos'),
    '2025-08-28T21:02',
    '2025-08-28T21:02'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Quinta de Santiago x Mira do Ó' AND w.brand = 'SOU Vinha de Ramada' AND w.wine_type = 'Tinto' AND w.vintage = 2022),
    (SELECT pairing_id FROM wine.pairings WHERE pairing_name = 'Aves'),
    '2025-08-28T21:03',
    '2025-08-28T21:03'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Quinta de Santiago x Mira do Ó' AND w.brand = 'SOU Vinha de Ramada' AND w.wine_type = 'Tinto' AND w.vintage = 2022),
    (SELECT pairing_id FROM wine.pairings WHERE pairing_name = 'Pratos de carnes brancas'),
    '2025-08-28T21:03',
    '2025-08-28T21:03'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Quinta de Santiago x Mira do Ó' AND w.brand = 'SOU Vinha de Ramada' AND w.wine_type = 'Tinto' AND w.vintage = 2022),
    (SELECT pairing_id FROM wine.pairings WHERE pairing_name = 'Frutos do mar'),
    '2025-08-28T21:03',
    '2025-08-28T21:03'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Quinta de Santiago x Mira do Ó' AND w.brand = 'SOU Vinha de Ramada' AND w.wine_type = 'Tinto' AND w.vintage = 2022),
    (SELECT pairing_id FROM wine.pairings WHERE pairing_name = 'Carnes grelhadas'),
    '2025-08-28T21:03',
    '2025-08-28T21:03'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Quinta de Santiago x Mira do Ó' AND w.brand = 'SOU Vinha de Ramada' AND w.wine_type = 'Tinto' AND w.vintage = 2022),
    (SELECT pairing_id FROM wine.pairings WHERE pairing_name = 'Peixes grelhados'),
    '2025-08-28T21:04',
    '2025-08-28T21:04'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Quinta de Santiago x Mira do Ó' AND w.brand = 'SOU Vinha de Ramada' AND w.wine_type = 'Tinto' AND w.vintage = 2022),
    (SELECT pairing_id FROM wine.pairings WHERE pairing_name = 'Pratos de peixe'),
    '2025-08-28T21:04',
    '2025-08-28T21:04'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Quinta de Santiago x Mira do Ó' AND w.brand = 'SOU Vinha de Ramada' AND w.wine_type = 'Tinto' AND w.vintage = 2022),
    (SELECT pairing_id FROM wine.pairings WHERE pairing_name = 'Queijos'),
    '2025-08-28T21:05',
    '2025-08-28T21:05'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Quinta de Santiago x Mira do Ó' AND w.brand = 'SOU Vinha de Ramada' AND w.wine_type = 'Tinto' AND w.vintage = 2022),
    (SELECT pairing_id FROM wine.pairings WHERE pairing_name = 'Saladas'),
    '2025-08-28T21:05',
    '2025-08-28T21:05'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Quinta de Santiago x Mira do Ó' AND w.brand = 'SOU Vinha de Ramada' AND w.wine_type = 'Tinto' AND w.vintage = 2022),
    (SELECT pairing_id FROM wine.pairings WHERE pairing_name = 'Sushi'),
    '2025-08-28T21:05',
    '2025-08-28T21:05'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Quinta Nova de Nossa Senhora do Carmo' AND w.brand = 'Mirabilis' AND w.wine_type = 'Tinto' AND w.vintage = 2019),
    (SELECT pairing_id FROM wine.pairings WHERE pairing_name = 'Carnes vermelhas'),
    '2025-08-25T19:41',
    '2025-08-25T19:41'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Quinta Nova de Nossa Senhora do Carmo' AND w.brand = 'Mirabilis' AND w.wine_type = 'Tinto' AND w.vintage = 2019),
    (SELECT pairing_id FROM wine.pairings WHERE pairing_name = 'Carnes grelhadas'),
    '2025-08-25T19:42',
    '2025-08-25T19:42'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Quinta Nova de Nossa Senhora do Carmo' AND w.brand = 'Mirabilis' AND w.wine_type = 'Tinto' AND w.vintage = 2019),
    (SELECT pairing_id FROM wine.pairings WHERE pairing_name = 'Rosbife'),
    '2025-08-25T19:42',
    '2025-08-25T19:42'
  ),
  (
    (SELECT wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'António Maçanita' AND w.brand = 'Maçanita Reserva' AND w.wine_type = 'Tinto' AND w.vintage = 2022),
    (SELECT pairing_id FROM wine.pairings WHERE pairing_name = 'Pratos de carnes brancas, tanto na cozinha tradicional como na cozinha moderna.'),
    '2025-08-12T00:37',
    '2025-08-12T00:37'
  ),
  (
    (SELECT wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'António Maçanita' AND w.brand = 'Maçanita Reserva' AND w.wine_type = 'Tinto' AND w.vintage = 2022),
    (SELECT pairing_id FROM wine.pairings WHERE pairing_name = 'Pratos de carnes vermelhas, tanto na cozinha tradicional como na cozinha moderna.'),
    '2025-08-12T00:37',
    '2025-08-12T00:37'
  ),
  (
    (SELECT wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Mãos & Irmãos' AND w.brand = 'Mãos Reserva' AND w.wine_type = 'Tinto' AND w.vintage = 2015),
    (SELECT pairing_id FROM wine.pairings WHERE pairing_name = 'Carnes de caça'),
    '2025-08-12T00:38',
    '2025-08-12T00:38'
  ),
  (
    (SELECT wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Morgado do Quintão' AND w.brand = 'Morgado do Quintão Clarete' AND w.wine_type = 'Tinto' AND w.vintage = 2023), 
    (SELECT pairing_id FROM wine.pairings WHERE pairing_name = 'Pratos regionais'),
    '2025-08-12T00:38',
    '2025-08-12T00:38'
  ),
  (
    (SELECT wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Morgado do Quintão' AND w.brand = 'Morgado do Quintão Clarete' AND w.wine_type = 'Tinto' AND w.vintage = 2023), 
    (SELECT pairing_id FROM wine.pairings WHERE pairing_name = 'Pratos de peixe'),
    '2025-08-12T00:38',
    '2025-08-12T00:38'
  ),
  (
    (SELECT wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Morgado do Quintão' AND w.brand = 'Morgado do Quintão Clarete' AND w.wine_type = 'Tinto' AND w.vintage = 2023), 
    (SELECT pairing_id FROM wine.pairings WHERE pairing_name = 'Especialmente sardinhas'),
    '2025-08-12T00:38',
    '2025-08-12T00:38'
  ),
  (
    (SELECT wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Quinta da Perdonda' AND w.brand = 'Quinta da Perdonda Talhões' AND w.wine_type = 'Tinto' AND w.vintage = 2018),
    (SELECT pairing_id FROM wine.pairings WHERE pairing_name = 'Carnes picantes grelhadas e assadas'),
    '2025-08-12T00:39',
    '2025-08-12T00:39'
  );
