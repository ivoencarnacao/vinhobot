-- Preços e stocks
INSERT INTO wine.wine_offers (wine_id, vendor_id, price_eur, stock_type, wine_offer_url, created_at, updated_at)
VALUES
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Natus Vini' AND w.brand = 'Natus' AND w.wine_type = 'Tinto' AND w.vintage = 2022),
    (SELECT vendor_id FROM wine.vendors WHERE vendor_name = 'Portugal Vineyards'),
    30.65,
    'Disponível para entrega',
    'https://www.portugalvineyards.com/pt/alentejo/24985-natus-red-2021.html',
    '2025-08-31T18:47',
    '2025-08-31T18:47'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Natus Vini' AND w.brand = 'Natus' AND w.wine_type = 'Tinto' AND w.vintage = 2022),
    (SELECT vendor_id FROM wine.vendors WHERE vendor_name = 'Supermercados Apolónia'),
    32.95,
    'Disponível para entrega',
    'https://www.apolonia.com/pt/catalogo/1315897/vinho-tinto-natus-75cl',
    '2025-08-31T18:38',
    '2025-08-31T18:38'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Arvad' AND w.brand = 'Arvad Negra Mole' AND w.wine_type = 'Tinto' AND w.vintage = 2023),
    (SELECT vendor_id FROM wine.vendors WHERE vendor_name = 'Quinta do Marisco'),
    16.50,
    'Disponível para entrega',
    'https://vinhos.quintadomarisco.com/wine/lm6n3q7spv852dirxaekjy4r',
    '2025-08-31T02:02',
    '2025-08-31T02:02'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Arvad' AND w.brand = 'Arvad Negra Mole' AND w.wine_type = 'Tinto' AND w.vintage = 2023),
    (SELECT vendor_id FROM wine.vendors WHERE vendor_name = 'Portugal Vineyards'),
    17.55,
    'Disponível para entrega',
    'https://www.portugalvineyards.com/pt/algarve/17075-arvad-negra-mole-red-2019-5600190255850.html',
    '2025-08-31T02:07',
    '2025-08-31T02:07'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Arvad' AND w.brand = 'Arvad Negra Mole' AND w.wine_type = 'Tinto' AND w.vintage = 2023),
    (SELECT vendor_id FROM wine.vendors WHERE vendor_name = 'Supermercados Apolónia'),
    19.95,
    'Disponível para entrega',
    'https://www.apolonia.com/pt/catalogo/1366181/vinho-tinto-arvad-negra-mole-75cl',
    '2025-08-31T02:12',
    '2025-08-31T02:12'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Casa da Passarella' AND w.brand = 'O Fugitivo Vinhas Centenárias' AND w.wine_type = 'Tinto' AND w.vintage = 2019),
    (SELECT vendor_id FROM wine.vendors WHERE vendor_name = 'Casa da Passarella'),
    31.80,
    'Disponível para entrega',
    'https://loja.casadapassarella.pt/loja/o-fugitivo-vinhas-centenarias',
    '2025-08-29T00:09',
    '2025-08-29T00:09'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Casa da Passarella' AND w.brand = 'O Fugitivo Vinhas Centenárias' AND w.wine_type = 'Tinto' AND w.vintage = 2019),
    (SELECT vendor_id FROM wine.vendors WHERE vendor_name = 'Portugal Vineyards'),
    33.65,
    'Disponível para entrega',
    'https://www.portugalvineyards.com/pt/dao/14224-casa-da-passarella-o-fugitivo-vinhas-centenarias-red-2014-5609613004761.html',
    '2025-08-29T00:09',
    '2025-08-29T00:09'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Quinta de Santiago x Mira do Ó' AND w.brand = 'SOU Vinha de Ramada' AND w.wine_type = 'Tinto' AND w.vintage = 2022),
    (SELECT vendor_id FROM wine.vendors WHERE vendor_name = 'Quinta de Santiago'),
    18.00,
    'Disponível para entrega',
    'https://loja.quintadesantiago.pt/loja-online/sou-tinto',
    '2025-08-28T20:50',
    '2025-08-28T20:50'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Quinta de Santiago x Mira do Ó' AND w.brand = 'SOU Vinha de Ramada' AND w.wine_type = 'Tinto' AND w.vintage = 2022),
    (SELECT vendor_id FROM wine.vendors WHERE vendor_name = 'Portugal Vineyards'),
    20.85,
    'Disponível para entrega',
    'https://www.portugalvineyards.com/pt/vinho-verde/23997-quinta-de-santiago-mira-do-o-sou-vinha-da-ramada-red-2022-5600685285546.html',
    '2025-08-28T20:36',
    '2025-08-28T20:06'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Quinta Nova de Nossa Senhora do Carmo' AND w.brand = 'Mirabilis' AND w.wine_type = 'Tinto' AND w.vintage = 2019),
    (SELECT vendor_id FROM wine.vendors WHERE vendor_name = 'Tourinto Premium Wines'),
    215.25,
    'Disponível para entrega',
    'https://www.portugalvineyards.com/pt/douro/20650-quinta-nova-mirabilis-grand-reserve-red-2019-5604805003416.html',
    '2025-08-25T19:38',
    '2025-08-25T19:39'
  ),
  (
    (SELECT wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'António Maçanita' AND w.brand = 'Maçanita Reserva' AND w.wine_type = 'Tinto' AND w.vintage = 2022),
    (SELECT vendor_id FROM wine.vendors WHERE vendor_name = 'Portugal Vineyards'),
    23.45,
    'Disponível para entrega',
    'https://www.portugalvineyards.com/pt/douro/7312-macanita-touriga-nacional-em-rose-2018-5600789937105.html',
    '2025-08-12T00:45',
    '2025-08-12T00:45'
  ),
  (
    (SELECT wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Mãos & Irmãos' AND w.brand = 'Mãos Reserva' AND w.wine_type = 'Tinto' AND w.vintage = 2015),
    (SELECT vendor_id FROM wine.vendors WHERE vendor_name = 'Mãos & Irmãos'),
    25.90,
    'Disponível para entrega',
    'https://www.morgadodoquintao.pt/en/store/clarete',
    '2025-08-12T00:45',
    '2025-08-12T00:45'
  ),
  (
    (SELECT wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Morgado do Quintão' AND w.brand = 'Morgado do Quintão Clarete' AND w.wine_type = 'Tinto' AND w.vintage = 2023), 
    (SELECT vendor_id FROM wine.vendors WHERE vendor_name = 'Morgado do Quintão'),
    17.00,
    'Disponível para entrega',
    'https://www.morgadodoquintao.pt/en/store/clarete',
    '2025-08-12T00:45',
    '2025-08-12T00:45'
  ),
  (
    (SELECT wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Quinta da Perdonda' AND w.brand = 'Quinta da Perdonda Talhões' AND w.wine_type = 'Tinto' AND w.vintage = 2018),
    (SELECT vendor_id FROM wine.vendors WHERE vendor_name = 'Portugal Vineyards'),
    26.65,
    null,
    'https://www.portugalvineyards.com/pt/dao/24056-quinta-da-perdonda-talhoes-red-2018.html',
    '2025-08-12T00:45',
    '2025-08-12T00:45'
  ),
  (
    (SELECT wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Herdade da Cardeira' AND w.brand = 'Cardeira' AND w.wine_type = 'Tinto' AND w.vintage = 2018),
    (SELECT vendor_id FROM wine.vendors WHERE vendor_name = 'Dourado Distribuição'),
    19.78,
    null,
    'https://www.dourado.com.pt/CARDEIRA-TINTO',
    '2025-08-12T00:46',
    '2025-08-12T00:46'
  );
