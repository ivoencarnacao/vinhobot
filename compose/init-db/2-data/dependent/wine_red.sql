-- Vinhos Tintos
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
  'Natus',
  (SELECT producer_id FROM wine.producers WHERE producer_name = 'Natus Vini'),
  'Tinto',
  2022,
  -- Location
  (SELECT appellation_id FROM wine.appellations WHERE appellation_name = 'Regional'),
  (SELECT region_id FROM wine.regions WHERE region_name = 'Alentejo'),
  null,
  null,
  -- Tasting Notes
  'Vibrante vermelho rubi, com reflexos granados.',
  'Aromas de balsamo e especiarias, envolvidos em fruta vermelha fresca.',
  'Notas de bosque com chão de caruma, taninos delicados e muito finos, que traduzem em boca acidez reactiva. Textura tensa, crocante e elegante. Faz da frescura o seu caracter e identidade, nunca cansativo desdobra várias camadas de sabores, desafia os sentidos e dispõem à mesa.',
  -- Technical
  13,
  5.6,
  null,
  0.5,
  3.59,
  -- Serving
  16,
  18,
  'Sulfitos',
  750,
  '2025-08-31T03:30',
  '2025-08-31T03:30'
 ),
 (
  'Arvad Negra Mole',
  (SELECT producer_id FROM wine.producers WHERE producer_name = 'Arvad'),
  'Tinto',
  2023,
  -- Location
  (SELECT appellation_id FROM wine.appellations WHERE appellation_name = 'Regional'),
  (SELECT region_id FROM wine.regions WHERE region_name = 'Algarve'),
  null,
  'Mediterrâneo com influência atlântica.',
  -- Tasting Notes
  'Cor rubi muito aberto.',
  'Com aroma a morangos frescos, cerejas e framboesas, mostra encantadoras notas de barro e ervas aromáticas num segundo plano, que conferem um carácter único a este vinho.',
  'Mostra toda a elegância da casta Negra Mole, vibrante, muito suave e medianamente longa.',
  -- Technical
  12.5,
  5.4,
  null,
  0.2,
  3.6,
  -- Serving
  null,
  12,
  'Sulfitos',
  750,
  '2025-08-31T00:38',
  '2025-08-31T00:38'
 ),
 (
  'O Fugitivo Vinhas Centenárias',
  (SELECT producer_id FROM wine.producers WHERE producer_name = 'Casa da Passarella'),
  'Tinto',
  2019,
  -- Location
  (SELECT appellation_id FROM wine.appellations WHERE appellation_name = 'DOC'),
  (SELECT region_id FROM wine.regions WHERE region_name = 'Dão'),
  (SELECT sub_region_id FROM wine.sub_regions WHERE sub_region_name = 'Serra da Estrela'),
  null,
  -- Tasting Notes
  'Cor rubi intensa.',
  'Aromas de frutos do bosque, notas de pinho, algumas agulhas de pinheiro, turfa fresca, muita frescura.',
  'Boca intensa, seca, mesmo austera, com fruta nova, suculenta, viva, arrebatadora. Final persistente.',
  -- Technical
  13,
  null,
  null,
  null,
  null,
  -- Serving
  16,
  18,
  'Sulfitos',
  750,
  --null,
  '2025-08-28T23:49',
  '2025-08-30T22:08'
 ),
 (
  'SOU Vinha de Ramada',
  (SELECT producer_id FROM wine.producers WHERE producer_name = 'Quinta de Santiago x Mira do Ó'),
  'Tinto',
  2022,
  -- Location
  (SELECT appellation_id FROM wine.appellations WHERE appellation_name = 'Regional'),
  (SELECT region_id FROM wine.regions WHERE region_name = 'Minho'),
  null,
  null,
  -- Tasting Notes
  'Cor media, aberta.',
  'Nariz fresco e elegante com notas de frutos silvestres, especiarias e ervas aromáticas.',
  'Boca muito fresca com boa estrutura de taninos muito suaves, acidez vibrante e final longo nas notas de fruta e especiaria.',
  -- Technical
  12,
  null,
  null,
  null,
  null,
  -- Serving
  10,
  12,
  'Sulfitos',
  750,
  --null,
  '2025-08-28T19:06',
  '2025-08-30T22:08'
 ),
 (
  'Mirabilis',
  (SELECT producer_id FROM wine.producers WHERE producer_name = 'Quinta Nova de Nossa Senhora do Carmo'),
  'Tinto',
  2019,
  -- Location
  (SELECT appellation_id FROM wine.appellations WHERE appellation_name = 'DOC'),
  (SELECT region_id FROM wine.regions WHERE region_name = 'Douro'),
  null,
  null,
  -- Tasting Notes
  null,
  'O Mirabilis Tinto espelha com maior profundidade os anos vitivinícolas da Quinta Nova de Nossa Senhora do Carmo, refletindo-se num vinho denso, intenso nos aromas, tridimensional.',
  'Com enorme persistência física, profundo e muito preciso.',
  -- Technical
  14.5,
  null,
  null,
  null,
  null,
  -- Serving
  15,
  16,
  'Sulfitos',
  750,
  --null,
  '2025-08-25T19:28',
  '2025-08-30T22:09'
 ),
 (
  'Maçanita Reserva',
  (SELECT producer_id FROM wine.producers WHERE producer_name = 'António Maçanita'),
  'Tinto',
  2022,
  -- Location
  (SELECT appellation_id FROM wine.appellations WHERE appellation_name = 'DOC'),
  (SELECT region_id FROM wine.regions WHERE region_name = 'Douro'),
  null,
  null,
  -- Tasting Notes
  'Cor violeta escuro.',
  'Com aroma concentrado de frutos vermelhos.',
  'Taninos redondos. Final de boca é intenso e persistente.',
  -- Technical
  14,
  null,
  null,
  null,
  null,
  -- Serving
  18,
  null,
  'Sulfitos',
  750,
  --'macanita-reserva-tinto-2022',
  '2025-08-11T00:10',
  '2025-08-30T22:09'
 ),
 (
  'Mãos Reserva',
  (SELECT producer_id FROM wine.producers WHERE producer_name = 'Mãos & Irmãos'),
  'Tinto',
  2015,
  -- Location
  (SELECT appellation_id FROM wine.appellations WHERE appellation_name = 'DOC'),
  (SELECT region_id FROM wine.regions WHERE region_name = 'Douro'),
  (SELECT sub_region_id FROM wine.sub_regions WHERE sub_region_name = 'Baixo Corgo'),
  null,
  -- Tasting Notes
  'De cor violeta ruby concentrada.',
  'O “MÃOS RESERVA” tinto é um vinho com aroma predominante a vinho do porto com fruta vermelha.',
  'Na boca os taninos são maduros e bem presentes com muito volume e frescura.',
  -- Technical
  14.5,
  null,
  null,
  null,
  null,
  -- Serving
  15,
  16,
  'Sulfitos',
  750,
  --'maos-reserva-tinto-2015',
  '2025-08-30T22:11',
  '2025-08-30T22:11'
 ),
 (
  'Morgado do Quintão Clarete',
  (SELECT producer_id FROM wine.producers WHERE producer_name = 'Morgado do Quintão'),
  'Tinto',
  2023,
  -- Location
  (SELECT appellation_id FROM wine.appellations WHERE appellation_name = 'Regional'),
  (SELECT region_id FROM wine.regions WHERE region_name = 'Algarve'),
  null,
  null,
  -- Tasting Notes
  'Corpo médio com tonalidade púrpura suave.',
  'No nariz frutos vermelhos e bagas.',
  'Na boca é elegante com um toque de especiarias.',
  -- Technical
  13,
  null,
  null,
  0.6,
  null,
  -- Serving
  14,
  16,
  'Sulfitos',
  750,
  --'morgado-do-quintao-clarete-2023',
  '2025-08-30T22:11',
  '2025-08-30T22:11'
 ),
 (
  'Quinta da Perdonda Talhões',
  (SELECT producer_id FROM wine.producers WHERE producer_name = 'Quinta da Perdonda'),
  'Tinto',
  2018,
  -- Location
  (SELECT appellation_id FROM wine.appellations WHERE appellation_name = 'DOC'),
  (SELECT region_id FROM wine.regions WHERE region_name = 'Dão'),
  (SELECT sub_region_id FROM wine.sub_regions WHERE sub_region_name = 'Serra da Estrela'),
  null,
  -- Tasting Notes
  'Menos aberto na cor que o Talhão nº 1',
  'Com fruto encarnado mais exuberante, caruma, floral maduro, anis e casca de árvore.',
  'Prova de boca com muito carácter regional, directo e focado, floral fresco, especiado, ligeiramente cítrico, saboroso e com belíssima acidez.',
  -- Technical
  13.5,
  null,
  null,
  null,
  null,
  -- Serving
  16,
  18,
  'Sulfitos',
  750,
  --26.65
  --'quinta-da-perdonda-talhoes-tinto-2018',
  '2025-08-30T22:12',
  '2025-08-30T22:12'
 ),
 (
  'Cardeira',
  (SELECT producer_id FROM wine.producers WHERE producer_name = 'Herdade da Cardeira'),
  'Tinto',
  2018,
  -- Location
  (SELECT appellation_id FROM wine.appellations WHERE appellation_name = 'DOC'),
  (SELECT region_id FROM wine.regions WHERE region_name = 'Alentejo'),
  null,
  null,
  -- Tasting Notes
  null,
  'Este elegante vinho tinto mostra aromas de frutos negros com notas maduras de especiarias e uma surpreendente frescura.',
  'O envelhecimento de 12 meses em barricas de carvalho Francês dá-lhe uma estrutura arredondada e adiciona complexidade e equilíbrio. Um vinho com grande potencial de envelhecimento',
  -- Technical
  14.5,
  6.4,
  0.66,
  null,
  3.54,
  -- Serving
  10,
  12,
  'Sulfitos',
  750,
  --'cardeira-tinto-2018',
  '2025-08-30T22:12',
  '2025-08-30T22:12'
);
