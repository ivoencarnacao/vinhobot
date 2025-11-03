-- Vinhos Brancos
INSERT INTO wine.wines 
(
  brand,
  producer_id,
  wine_type,
  vintage,

  -- Location
  appellation_id,
  region_id,
  sub_region_id,

  -- Terroir
  climate,

  -- Tasting Notes
  aspect,
  aroma,
  flavour,

  -- Technical
  alcohol_by_volume_percentage,
  total_acidity_g_l,
  volatile_acidity_g_l,
  residual_sugar_g_l,
  ph,

  -- Serving
  service_temperature_min_celsius,
  service_temperature_max_celsius,
  allergens,
  volume_ml,

  -- Timestamps
  created_at,
  updated_at
)
VALUES
  (
  'Génese',
  (SELECT producer_id FROM wine.producers WHERE producer_name = 'Vinevinu'),
  'Branco',
  2024,
  -- Location
  (SELECT appellation_id FROM wine.appellations WHERE appellation_name = 'DOC'),
  (SELECT region_id FROM wine.regions WHERE region_name = 'Vinho Verde'),
  (SELECT sub_region_id FROM wine.sub_regions WHERE sub_region_name = 'Monção e Melgaço'),
  'Vale protegido por montanhas com baixa influência marítima. Vinhas em altitude com verão quente e seco e inverno frio. Durante a maturação, a amplitude térmica é elevada, com dias quentes e noites frias. A maturação é lenta nestas vinhas de altitude, onde a elegância e a acidez são preservadas.',
  -- Tasting Notes
  'Cor amarelo de intensidade média.',
  'Aroma profundo e complexo.',
  'Sabor fresco, redondo e persistente. Boa capacidade de envelhecimento.',
  -- Technical
  12.5,
  5.4,
  0.49,
  null,
  3.36,
  -- Serving
  10,
  12,
  'Sulfitos',
  750,
  '2025-09-01T21:49',
  '2025-09-01T21:59'
  ),
  (
  'Oh! Amigo',
  (SELECT producer_id FROM wine.producers WHERE producer_name = 'atlasland'),
  'Branco',
  2022,
  -- Location
  (SELECT appellation_id FROM wine.appellations WHERE appellation_name = 'Vinho de Portugal'),
  null,
  null,
  null,
  -- Tasting Notes
  null,
  null,
  null,
  -- Technical
  13.5,
  null,
  null,
  null,
  null,
  -- Serving
  null,
  null,
  'Sulfitos',
  750,
  --null,
  '2025-08-31T21:46',
  '2025-08-31T21:46'
  ),
  (
  'Druida Vinha da Pedra Azul',
  (SELECT producer_id FROM wine.producers WHERE producer_name = 'Mira do Ó'),
  'Branco',
  2023,
  -- Location
  (SELECT appellation_id FROM wine.appellations WHERE appellation_name = 'DOC'),
  (SELECT region_id FROM wine.regions WHERE region_name = 'Dão'),
  null,
  null,
  -- Tasting Notes
  null,
  null,
  'Criado a 500m de altitude, este vinho capta a essência do granito azul das suas vinhas, resultando numa expressão única de frescura e complexidade. Fermentado e maturado em ovos de betão, revela-se através de uma textura sedosa e aromas intensos.',
  -- Technical
  12.5,
  null,
  null,
  null,
  null,
  -- Serving
  10,
  11,
  'Sulfitos',
  750,
  --null,
  '2025-08-29T03:46',
  '2025-08-30T22:13'
  ),
  (
  'Dona Berta Reserva',
  (SELECT producer_id FROM wine.producers WHERE producer_name = 'Dona Berta'),
  'Branco',
  2023,
  -- Location
  (SELECT appellation_id FROM wine.appellations WHERE appellation_name = 'DOC'),
  (SELECT region_id FROM wine.regions WHERE region_name = 'Douro'),
  null,
  null,
  -- Tasting Notes
  'Apresenta uma cor citrina e um aspeto brilhante.',
  'O aroma é delicado com notas frutadas e florais, lembrando a maçã verde e a madressilva, respetivamente.',
  'Na boca, surpreende pela acidez marcante, pela estrutura marcante, pela textura cremosa e pelo delicado aroma retro nasal, que lhe conferem um final longo e atraente.',
  -- Technical
  14,
  null,
  null,
  null,
  null,
  -- Serving
  8,
  10,
  'Sulfitos',
  750,
  --null,
  '2025-08-25T23:01',
  '2025-08-30T22:15'
  ),
  (
  'Efusivo',
  (SELECT producer_id FROM wine.producers WHERE producer_name = 'Entre Pedras'),
  'Branco',
  2023,
  -- Location
  (SELECT appellation_id FROM wine.appellations WHERE appellation_name = 'Regional'),
  (SELECT region_id FROM wine.regions WHERE region_name = 'Açores'),
  null,
  null,
  -- Tasting Notes
  'Cor cristalina.',
  'Nariz com toque de madeira bastante subtil sem nunca abafar a pureza da fruta.',
  'Na boca entra cremoso e elegante com bastantes notas salinas e de maré vazia, termina bastante untuoso mas com uma tensão bem açoriana...Consegue combinar com refeições mais desafiantes.',
  -- Technical
  12.5,
  5.8,
  null,
  0.9,
  3.36,
  -- Serving
  10,
  12,
  'Sulfitos',
  750,
  --null,
  '2025-08-11T23:18',
  '2025-08-30T22:15'
 ),
 (
  'Primeiro Nome',
  (SELECT producer_id FROM wine.producers WHERE producer_name = 'Miguel Louro Wines'),
  'Branco',
  2019,
  -- Location
  (SELECT appellation_id FROM wine.appellations WHERE appellation_name = 'Regional'),
  (SELECT region_id FROM wine.regions WHERE region_name = 'Alentejo'),
  null,
  null,
  -- Tasting Notes
  'Cor amarelo limão.',
  'Vinho seco onde se destacam notas vegetais, maçã verde com um ligeiro toque floral. Sem ser exuberante, mostra alguma tosta a dar complexidade e seriedade,',
  'Corpo médio com textura sedosa e acidez crocante e final persistente.',
  -- Technical
  12.4,
  7.2,
  null,
  null,
  3.08,
  -- Serving
  10,
  12,
  'Sulfitos',
  750,
  --'primeiro-nome-branco-2019',
  '2025-08-30T22:16',
  '2025-08-30T22:16'
),
 (
  'Quinta da Perdonda Talhões',
  (SELECT producer_id FROM wine.producers WHERE producer_name = 'Quinta da Perdonda'),
  'Branco',
  2021,
  -- Location
  (SELECT appellation_id FROM wine.appellations WHERE appellation_name = 'DOC'),
  (SELECT region_id FROM wine.regions WHERE region_name = 'Dão'),
  (SELECT sub_region_id FROM wine.sub_regions WHERE sub_region_name = 'Serra da Estrela'),
  null,
  -- Tasting Notes
  null,
  'Provém da restante uva branca da propriedade que não integra o Branco da Estrela. Mais imediato no aroma, com floral fresco, caruma, especiado e leve citrino ao fundo.',
  'A prova de boca surpreende, texturada mas fina, bela acidez e corpo meio cheio, com muito sabor e pronto a beber.',
  -- Technical
  12.5,
  null,
  null,
  null,
  null,
  -- Serving
  10,
  12,
  'Sulfitos',
  750,
  --'quinta-da-perdonda-talhoes-branco-2021',
  '2025-08-30T22:16',
  '2025-08-30T22:16'
 ),
 (
  'Quinta das Marias Encruzado',
  (SELECT producer_id FROM wine.producers WHERE producer_name = 'Quinta das Marias'),
  'Branco',
  2022,
  -- Location
  (SELECT appellation_id FROM wine.appellations WHERE appellation_name = 'DOC'),
  (SELECT region_id FROM wine.regions WHERE region_name = 'Dão'),
  null,
  null,
  -- Tasting Notes
  null,
  'Muito aromático com notas delicadas de fruta, principalmente citrinos e muito mineral.',
  'Boca fresca e elegante com boa estrutura, acidez viva e discreta mas perfeitamente integrada.',
  -- Technical
  13.5,
  6.24,
  null,
  0.5,
  null,
  -- Serving
  10,
  12,
  'Sulfitos',
  750,
  --'quinta-das-marias-encruzado-branco-2022',
  '2025-08-30T22:18',
  '2025-08-30T22:18'
 );
