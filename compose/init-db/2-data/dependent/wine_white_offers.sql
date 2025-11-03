-- Preços e stocks
INSERT INTO wine.wine_offers (wine_id, vendor_id, price_eur, stock_type, wine_offer_url, created_at, updated_at)
VALUES
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Vinevinu' AND w.brand = 'Génese' AND w.wine_type = 'Branco' AND w.vintage = 2024),
    (SELECT vendor_id FROM wine.vendors WHERE vendor_name = 'Portugal Vineyards'),
    15.95,
    'Disponível para entrega',
    'https://www.portugalvineyards.com/pt/vinho-verde/27000-vinevinu-genese-terroir-montanha-white-2024.html',
    '2025-09-01T22:26',
    '2025-09-01T22:26'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Vinevinu' AND w.brand = 'Génese' AND w.wine_type = 'Branco' AND w.vintage = 2024),
    (SELECT vendor_id FROM wine.vendors WHERE vendor_name = 'Supermercados Apolónia'),
    15.95,
    'Disponível para entrega',
    'https://www.apolonia.com/pt/catalogo/1415017/vinho-branco-genese-75cl',
    '2025-09-01T22:29',
    '2025-09-01T22:29'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'atlasland' AND w.brand = 'Oh! Amigo' AND w.wine_type = 'Branco' AND w.vintage = 2022),
    (SELECT vendor_id FROM wine.vendors WHERE vendor_name = 'winebit'),
    26.90,
    'Não disponível',
    'https://www.winebit.pt/product/oh-amigo',
    '2025-08-31T21:58',
    '2025-08-31T21:58'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'atlasland' AND w.brand = 'Oh! Amigo' AND w.wine_type = 'Branco' AND w.vintage = 2022),
    (SELECT vendor_id FROM wine.vendors WHERE vendor_name = 'The Lab Porto'),
    33.00,
    'Disponível para entrega',
    'https://thelabporto.com/products/atlasland-oh-amigo-branco',
    '2025-08-31T22:16',
    '2025-08-31T22:16'
  ),


  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Mira do Ó' AND w.brand = 'Druida Vinha da Pedra Azul' AND w.wine_type = 'Branco' AND w.vintage = 2023),
    (SELECT vendor_id FROM wine.vendors WHERE vendor_name = 'Portugal Vineyards'),
    25.45,
    'Disponível para entrega',
    'https://www.portugalvineyards.com/pt/dao/24075-druida-encruzado-vinha-da-pedra-azul-white-2022-5060356870134.html',
    '2025-08-29T03:49',
    '2025-08-29T03:49'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Dona Berta' AND w.brand = 'Dona Berta Reserva' AND w.wine_type = 'Branco' AND w.vintage = 2023),
    (SELECT vendor_id FROM wine.vendors WHERE vendor_name = 'Portugal Vineyards'),
    19.45,
    'Disponível para entrega',
    'https://www.portugalvineyards.com/pt/douro/5902-dona-berta-reserve-rabigato-old-vines-white-2018-5608606002081.html',
    '2025-08-25T23:06',
    '2025-08-25T23:06'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Entre Pedras' AND w.brand = 'Efusivo' AND w.wine_type = 'Branco' AND w.vintage = 2023),
    (SELECT vendor_id FROM wine.vendors WHERE vendor_name = 'Tourinto Premium Wines'),
    29.90,
    'Disponível para entrega',
    'https://www.wineclick.pt/pt/acores/2296-entre-pedras-efusivo-branco-2023.html',
    '2025-08-12T00:44',
    '2025-08-12T00:44'
  ),
  (
    (SELECT wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Miguel Louro Wines' AND w.brand = 'Primeiro Nome' AND w.wine_type = 'Branco' AND w.vintage = 2019),
    (SELECT vendor_id FROM wine.vendors WHERE vendor_name = 'Dourado Distribuição'),
    26.30,
    null,
    'https://www.dourado.com.pt/PRIMEIRO-NOME-BRANCO',
    '2025-08-12T00:45',
    '2025-08-12T00:45'
  ),
  (
    (SELECT wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Quinta da Perdonda' AND w.brand = 'Quinta da Perdonda Talhões' AND w.wine_type = 'Branco' AND w.vintage = 2021),
    (SELECT vendor_id FROM wine.vendors WHERE vendor_name = 'Portugal Vineyards'),
    25.65,
    null,
    'https://www.portugalvineyards.com/pt/dao/24055-quinta-da-perdonda-escolha-de-talhoes-white-2021.html',
    '2025-08-12T00:46',
    '2025-08-12T00:46'
  ),
  (
    (SELECT wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Quinta das Marias' AND w.brand = 'Quinta das Marias Encruzado' AND w.wine_type = 'Branco' AND w.vintage = 2022),
    (SELECT vendor_id FROM wine.vendors WHERE vendor_name = 'WinerShop'),
    12.26,
    null,
    'https://www.winershop.com/pt/vinho-branco/4783-2022-vinho-branco-quinta-das-marias-encruzado-vinho-branco-5600241725752.html',
    '2025-08-12T00:46',
    '2025-08-12T00:46'
  );
