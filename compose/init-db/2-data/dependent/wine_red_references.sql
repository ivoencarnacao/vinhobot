-- Wine References
INSERT INTO wine.wine_references (wine_id, source_id, source_type, wine_reference, created_at, updated_at) 
VALUES
  (   
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Natus Vini' AND w.brand = 'Natus' AND w.wine_type = 'Tinto' AND w.vintage = 2022),
    (SELECT source_id FROM wine.sources WHERE source_name = 'Natus Vini'),
    'URL',
    'https://natusvini.pt/index.php/vinhos-2/vinhos',
    '2025-08-31T03:35',
    '2025-08-31T03:35'
  ),
  (   
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Natus Vini' AND w.brand = 'Natus' AND w.wine_type = 'Tinto' AND w.vintage = 2022),
    (SELECT source_id FROM wine.sources WHERE source_name = 'Decante Vinhos'),
    'URL',
    'https://decante-vinhos.pt/produto/natus-tinto',
    '2025-08-31T05:06',
    '2025-08-31T05:06'
  ),
  (   
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Natus Vini' AND w.brand = 'Natus' AND w.wine_type = 'Tinto' AND w.vintage = 2022),
    (SELECT source_id FROM wine.sources WHERE source_name = 'Portugal Vineyards'),
    'URL',
    'https://www.portugalvineyards.com/pt/alentejo/24985-natus-red-2021.html',
    '2025-08-31T18:54',
    '2025-08-31T18:54'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Arvad' AND w.brand = 'Arvad Negra Mole' AND w.wine_type = 'Tinto' AND w.vintage = 2023),
    (SELECT source_id FROM wine.sources WHERE source_name = 'Arvad'),
    'URL',
    'https://arvad.pt/produto/negra-mole-tinto-2023',
    '2025-08-31T01:52',
    '2025-08-31T01:52'
  ),
  (   
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Arvad' AND w.brand = 'Arvad Negra Mole' AND w.wine_type = 'Tinto' AND w.vintage = 2023),
    (SELECT source_id FROM wine.sources WHERE source_name = 'Decante Vinhos'),
    'URL',
    'https://decante-vinhos.pt/produto/arvad-negra-mole',
    '2025-08-31T01:52',
    '2025-08-31T01:52'
  ),
  (   
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Casa da Passarella' AND w.brand = 'O Fugitivo Vinhas Centenárias' AND w.wine_type = 'Tinto' AND w.vintage = 2019),
    (SELECT source_id FROM wine.sources WHERE source_name = 'Portugal Vineyards'),
    'URL',
    'https://www.portugalvineyards.com/pt/dao/14224-casa-da-passarella-o-fugitivo-vinhas-centenarias-red-2014-5609613004761.html',
    null,
    null
  ),
  (   
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Quinta de Santiago x Mira do Ó' AND w.brand = 'SOU Vinha de Ramada' AND w.wine_type = 'Tinto' AND w.vintage = 2022),
    (SELECT source_id FROM wine.sources WHERE source_name = 'Portugal Vineyards'),
    'URL',
    'https://www.portugalvineyards.com/pt/vinho-verde/23997-quinta-de-santiago-mira-do-o-sou-vinha-da-ramada-red-2022-5600685285546.html',
    null,
    null
  ),
  (   
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Quinta Nova de Nossa Senhora do Carmo' AND w.brand = 'Mirabilis' AND w.wine_type = 'Tinto' AND w.vintage = 2019),
    (SELECT source_id FROM wine.sources WHERE source_name = 'Portugal Vineyards'),
    'URL',
    'https://www.portugalvineyards.com/pt/douro/20650-quinta-nova-mirabilis-grand-reserve-red-2019-5604805003416.html',
    null,
    null
  ),
  (   
    (SELECT wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'António Maçanita' AND w.brand = 'Maçanita Reserva' AND w.wine_type = 'Tinto' AND w.vintage = 2022),
    (SELECT source_id FROM wine.sources WHERE source_name = 'António Maçanita'),
    'URL',
    'https://www.antoniomacanita.com/pt/vinhos-online/macanita-vinhos/macanita-reserva-tinto-2022',
    null,
    null
  ),
  (   
    (SELECT wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Mãos & Irmãos' AND w.brand = 'Mãos Reserva' AND w.wine_type = 'Tinto' AND w.vintage = 2015),
    (SELECT source_id FROM wine.sources WHERE source_name = 'Mãos & Irmãos'),
    'URL',
    'https://maoseirmaos.com/collections/maos-signature/products/maos-reserva-tinto-douro-doc',
    null,
    null
  ),
  (   
    (SELECT wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Morgado do Quintão' AND w.brand = 'Morgado do Quintão Clarete' AND w.wine_type = 'Tinto' AND w.vintage = 2023), 
    (SELECT source_id FROM wine.sources WHERE source_name = 'Morgado do Quintão'),
    'URL',
    'https://www.morgadodoquintao.pt/en/store/clarete',
    null,
    null
  ),
  (   
    (SELECT wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Morgado do Quintão' AND w.brand = 'Morgado do Quintão Clarete' AND w.wine_type = 'Tinto' AND w.vintage = 2023), 
    (SELECT source_id FROM wine.sources WHERE source_name = 'Supermercados Apolónia'),
    'URL',
    'https://www.apolonia.com/pt/catalogo/1188224/vinho-tinto-morgado-do-quintao-clarete-75cl/',
    null,
    null
  ),
  (   
    (SELECT wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Morgado do Quintão' AND w.brand = 'Morgado do Quintão Clarete' AND w.wine_type = 'Tinto' AND w.vintage = 2023), 
    (SELECT source_id FROM wine.sources WHERE source_name = 'Garrafeira Soares'),
    'URL',
    'https://www.garrafeirasoares.pt/pt/portugal/vinhos/vinho-tinto-morgado-quintao-clarete-75-cl/item_13776.html',
    null,
    null
  ),
  (   
    (SELECT wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Quinta da Perdonda' AND w.brand = 'Quinta da Perdonda Talhões' AND w.wine_type = 'Tinto' AND w.vintage = 2018),
    (SELECT source_id FROM wine.sources WHERE source_name = 'Portugal Vineyards'),
    'URL',
    'https://www.portugalvineyards.com/pt/dao/24056-quinta-da-perdonda-talhoes-red-2018.html',
    null,
    null
  ),
  (   
    (SELECT wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Quinta da Perdonda' AND w.brand = 'Quinta da Perdonda Talhões' AND w.wine_type = 'Tinto' AND w.vintage = 2018),
    (SELECT source_id FROM wine.sources WHERE source_name = 'Mercado Delicatessen'),
    'URL',
    'https://www.mercadodelicatessen.com/product/quinta-da-perdonda-talhoes-tinto',
    null,
    null
  ),
  (   
    (SELECT wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Herdade da Cardeira' AND w.brand = 'Cardeira' AND w.wine_type = 'Tinto' AND w.vintage = 2018),
    (SELECT source_id FROM wine.sources WHERE source_name = 'Dourado Distribuição'),
    'URL',
    'https://www.dourado.com.pt/CARDEIRA-TINTO',
    null,
    null
  );
