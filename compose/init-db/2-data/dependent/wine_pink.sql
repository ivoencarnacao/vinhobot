-- Vinhos Rosé
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
  'São Luiz Winemakers Collection',
  (SELECT producer_id FROM wine.producers WHERE producer_name = 'Kopke 1638'),
  'Rosé',
  2021,
  -- Location
  (SELECT appellation_id FROM wine.appellations WHERE appellation_name = 'DOC'),
  (SELECT region_id FROM wine.regions WHERE region_name = 'Douro'),
  (SELECT sub_region_id FROM wine.sub_regions WHERE sub_region_name = 'Cima Corgo'),
  null,
  -- Tasting Notes
  'De cor salmão.',
  'Este é um vinho onde os aromas de groselha e romã se destacam num bouquet de frutas frescas e memorias florais.',
  'Na boca impressiona pela textura, sedoso e elegante, com subtis notas fumadas que realçam a sua complexidade. A sua frescura perdura durante a prova, saciando todos os sentidos. O final é longo e fresco, sugerindo contemplação. Um vinho gastronómico, mas também excelente para acompanhar uma refeição.',
  -- Technical
  12.5,
  6.1,
  null,
  0.6,
  3.37,
  -- Serving
  12,
  14,
  'Sulfitos',
  750,
  '2025-08-31T23:02',
  '2025-08-30T23:02'
 ),
 (
  'Maçanita Touriga Nacional',
  (SELECT producer_id FROM wine.producers WHERE producer_name = 'António Maçanita'),
  'Rosé',
  2023,
  -- Location
  (SELECT appellation_id FROM wine.appellations WHERE appellation_name = 'DOC'),
  (SELECT region_id FROM wine.regions WHERE region_name = 'Douro'),
  null,
  null,
  -- Tasting Notes
  'De cor rosa-claro, com toques de cereja.',
  'Tem um nariz muito intenso a morango maduro.',
  'Na boca surpreende é texturado e fresco.',
  -- Technical
  12,
  null,
  null,
  null,
  null,
  -- Serving
  10,
  null,
  'Sulfitos',
  750,
  '2025-08-30T22:18',
  '2025-08-30T22:18'
 );


