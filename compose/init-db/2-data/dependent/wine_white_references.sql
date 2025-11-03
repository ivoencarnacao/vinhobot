-- Wine References
INSERT INTO wine.wine_references (wine_id, source_id, source_type, wine_reference, created_at, updated_at) 
VALUES
  (   
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Vinevinu' AND w.brand = 'Génese' AND w.wine_type = 'Branco' AND w.vintage = 2024),
    (SELECT source_id FROM wine.sources WHERE source_name = 'Vinevinu'),
    'URL',
    'https://vinevinu.com/vinho-genese/#1733277499976-6d97c35a-6dd2',
    '2025-09-01T22:24',
    '2025-09-01T22:24'
  ),
  (   
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Vinevinu' AND w.brand = 'Génese' AND w.wine_type = 'Branco' AND w.vintage = 2024),
    (SELECT source_id FROM wine.sources WHERE source_name = 'Portugal Vineyards'),
    'URL',
    'https://www.portugalvineyards.com/pt/vinho-verde/27000-vinevinu-genese-terroir-montanha-white-2024.html',
    '2025-09-01T22:24',
    '2025-09-01T22:24'
  ),
  (   
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'atlasland' AND w.brand = 'Oh! Amigo' AND w.wine_type = 'Branco' AND w.vintage = 2022),
    (SELECT source_id FROM wine.sources WHERE source_name = 'winebit'),
    'URL',
    'https://www.winebit.pt/product/oh-amigo',
    '2025-08-31T22:00',
    '2025-08-31T22:00'
  ),
  (   
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'atlasland' AND w.brand = 'Oh! Amigo' AND w.wine_type = 'Branco' AND w.vintage = 2022),
    (SELECT source_id FROM wine.sources WHERE source_name = 'Raisin'),
    'URL',
    'https://www.raisin.digital/en/profile/Luseebcn/wines/oh-amigo-atlas-land-filippo-pozzi-2022-248882',
    '2025-08-31T22:20',
    '2025-08-31T22:20'
  ),
  (   
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Mira do Ó' AND w.brand = 'Druida Vinha da Pedra Azul' AND w.wine_type = 'Branco' AND w.vintage = 2023),
    (SELECT source_id FROM wine.sources WHERE source_name = 'Portugal Vineyards'),
    'URL',
    'https://www.portugalvineyards.com/pt/dao/24075-druida-encruzado-vinha-da-pedra-azul-white-2022-5060356870134.html',
    null,
    null
  ),
  (   
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Dona Berta' AND w.brand = 'Dona Berta Reserva' AND w.wine_type = 'Branco' AND w.vintage = 2023),
    (SELECT source_id FROM wine.sources WHERE source_name = 'Portugal Vineyards'),
    'URL',
    'https://www.portugalvineyards.com/pt/douro/5902-dona-berta-reserve-rabigato-old-vines-white-2018-5608606002081.html',
    null,
    null
  ),
  (   
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Entre Pedras' AND w.brand = 'Efusivo' AND w.wine_type = 'Branco' AND w.vintage = 2023),
    (SELECT source_id FROM wine.sources WHERE source_name = 'Tourinto'),
    'URL',
    'https://www.tourinto.pt/product/entre-pedras-efusivo',
    null,
    null
  ),
  (   
    (SELECT wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Miguel Louro Wines' AND w.brand = 'Primeiro Nome' AND w.wine_type = 'Branco' AND w.vintage = 2019),
    (SELECT source_id FROM wine.sources WHERE source_name = 'Dourado Distribuição'),
    'URL',
    'https://www.dourado.com.pt/PRIMEIRO-NOME-BRANCO',
    null,
    null
  ),
  (   
    (SELECT wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Quinta da Perdonda' AND w.brand = 'Quinta da Perdonda Talhões' AND w.wine_type = 'Branco' AND w.vintage = 2021),
    (SELECT source_id FROM wine.sources WHERE source_name = 'Mercado Delicatessen'),
    'URL',
    'https://www.mercadodelicatessen.com/product/quinta-da-perdonda-talhoes-branco',
    null,
    null
  ),
  (   
    (SELECT wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Quinta da Perdonda' AND w.brand = 'Quinta da Perdonda Talhões' AND w.wine_type = 'Branco' AND w.vintage = 2021),
    (SELECT source_id FROM wine.sources WHERE source_name = 'Portugal Vineyards'),
    'URL',
    'https://www.portugalvineyards.com/pt/dao/24055-quinta-da-perdonda-escolha-de-talhoes-white-2021.html',
    null,
    null
  ),
  (   
    (SELECT wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Quinta das Marias' AND w.brand = 'Quinta das Marias Encruzado' AND w.wine_type = 'Branco' AND w.vintage = 2022),
    (SELECT source_id FROM wine.sources WHERE source_name = 'Quinta das Marias'),
    'URL',
    'https://www.quintadasmarias.com/wp-content/uploads/2023/04/Ficha-Tecnica-Encruzado-22-PT.pdf',
    null,
    null

  ),
  (   
    (SELECT wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Quinta das Marias' AND w.brand = 'Quinta das Marias Encruzado' AND w.wine_type = 'Branco' AND w.vintage = 2022),
    (SELECT source_id FROM wine.sources WHERE source_name = 'WinerShop'),
    'URL',
    'https://www.winershop.com/pt/vinho-branco/4783-2022-vinho-branco-quinta-das-marias-encruzado-vinho-branco-5600241725752.html',
    null,
    null
  );
