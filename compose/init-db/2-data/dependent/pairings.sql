-- Gastronomia, ex: Sardinha assada
INSERT INTO wine.pairings (category_id, pairing_name, created_at, updated_at) 
VALUES 
  -- Aves
  (
    (SELECT category_id FROM wine.pairing_categories WHERE category_name = 'Aves'),
    'Aves',
    '2025-08-26T00:15',
    '2025-08-26T00:16'
  ),
  (
    (SELECT category_id FROM wine.pairing_categories WHERE category_name = 'Aves'),
    'Pratos de aves de capoeira (quando envelhecido)',
    '2025-08-25T20:04',
    '2025-08-26T00:15'
  ),
  -- Caça
  (
    (SELECT category_id FROM wine.pairing_categories WHERE category_name = 'Caça'), 
    'Carnes de caça',
    '2025-08-12T00:28',
    '2025-08-12T00:28'
  ),
  -- Carnes
  (
    (SELECT category_id FROM wine.pairing_categories WHERE category_name = 'Carnes'), 
    'Carnes vermelhas',
    '2025-08-25T19:31',
    '2025-08-25T19:31'
  ),
  (
    (SELECT category_id FROM wine.pairing_categories WHERE category_name = 'Carnes'), 
    'Carnes grelhadas',
    '2025-08-25T19:32',
    '2025-08-25T19:32'
  ),
  (
    (SELECT category_id FROM wine.pairing_categories WHERE category_name = 'Carnes'), 
    'Rosbife',
    '2025-08-25T19:32',
    '2025-08-25T19:32'
  ),
  (
    (SELECT category_id FROM wine.pairing_categories WHERE category_name = 'Carnes'), 
    'Carnes picantes grelhadas e assadas',
    '2025-08-12T00:28',
    '2025-08-12T00:28'
  ),
  -- Carnes vermelhas
  (
    (SELECT category_id FROM wine.pairing_categories WHERE category_name = 'Carnes'),
    'Pratos de carnes vermelhas, tanto na cozinha tradicional como na cozinha moderna.',
    '2025-08-12T00:28',
    '2025-08-12T00:28'
  ),
  -- Carnes brancas
  (
    (SELECT category_id FROM wine.pairing_categories WHERE category_name = 'Carnes'),
    'Pratos de carnes brancas',
    '2025-08-12T00:28',
    '2025-08-12T00:28'
  ),
  (
    (SELECT category_id FROM wine.pairing_categories WHERE category_name = 'Carnes'),
    'Pratos de carnes brancas, tanto na cozinha tradicional como na cozinha moderna.',
    '2025-08-12T00:28',
    '2025-08-12T00:28'
  ),
  (
    (SELECT category_id FROM wine.pairing_categories WHERE category_name = 'Carnes'),
    'Carnes magras',
    '2025-08-12T00:28',
    '2025-08-12T00:28'
  ),
  -- Mariscos
  (
    (SELECT category_id FROM wine.pairing_categories WHERE category_name = 'Mariscos'),
    'Mariscos',
    '2025-08-12T00:28',
    '2025-08-12T00:28'
  ),
  (
    (SELECT category_id FROM wine.pairing_categories WHERE category_name = 'Mariscos'),
    'Frutos do mar',
    '2025-08-26T00:04',
    '2025-08-26T00:04'
  ),
  (
    (SELECT category_id FROM wine.pairing_categories WHERE category_name = 'Mariscos'),
    'Pratos ligeiros de marisco (enquanto jovem)',
    '2025-08-25T20:02',
    '2025-08-25T20:02'
  ),
  (
    (SELECT category_id FROM wine.pairing_categories WHERE category_name = 'Mariscos'),
    'Ostras',
    '2025-08-12T00:31',
    '2025-08-12T00:31'
  ),
  (
    (SELECT category_id FROM wine.pairing_categories WHERE category_name = 'Mariscos'),
    'Cracas',
    '2025-08-12T00:32',
    '2025-08-12T00:32'
  ),
  (
    (SELECT category_id FROM wine.pairing_categories WHERE category_name = 'Mariscos'),
    'Bivalves',
    '2025-08-12T00:32',
    '2025-08-12T00:32'
  ),
  (
    (SELECT category_id FROM wine.pairing_categories WHERE category_name = 'Mariscos'),
    'Mariscos, mesmo com molhos',
    '2025-08-12T00:28',
    '2025-08-12T00:28'
  ),
  -- Peixes
  (
    (SELECT category_id FROM wine.pairing_categories WHERE category_name = 'Peixes'),
    'Pratos de peixe',
    '2025-08-12T00:28',
    '2025-08-12T00:28'
  ),
  (
    (SELECT category_id FROM wine.pairing_categories WHERE category_name = 'Peixes'),
    'Peixes grelhados',
    '2025-08-12T00:31',
    '2025-08-12T00:31'
  ),
  (
    (SELECT category_id FROM wine.pairing_categories WHERE category_name = 'Peixes'),
    'Peixes assados',
    '2025-08-29T02:26',
    '2025-08-29T02:26'
  ),
  (
    (SELECT category_id FROM wine.pairing_categories WHERE category_name = 'Peixes'),
    'Peixes, mesmo com molhos',
    '2025-08-12T00:28',
    '2025-08-12T00:28'
  ),
  (
    (SELECT category_id FROM wine.pairing_categories WHERE category_name = 'Peixes'),
    'Atum braseado',
    '2025-08-30T22:00',
    '2025-08-30T22:00'
  ),
  (
    (SELECT category_id FROM wine.pairing_categories WHERE category_name = 'Peixes'),
    'Especialmente sardinhas',
    '2025-08-12T00:28',
    '2025-08-12T00:28'
  ),
  (
    (SELECT category_id FROM wine.pairing_categories WHERE category_name = 'Peixes'),
    'Sardinhas assadas',
    '2025-08-30T21:59',
    '2025-08-30T21:59'
  ),
  (
    (SELECT category_id FROM wine.pairing_categories WHERE category_name = 'Peixes'),
    'Pratos de bacalhau',
    '2025-08-29T02:27',
    '2025-08-29T02:28'
  ),
  -- Queijos
  (
    (SELECT category_id FROM wine.pairing_categories WHERE category_name = 'Queijos'),
    'Queijos',
    '2025-08-26T00:10',
    '2025-08-26T00:10'
  ),
  (
    (SELECT category_id FROM wine.pairing_categories WHERE category_name = 'Queijos'),
    'Queijos de pasta mole',
    '2025-08-12T00:28',
    '2025-08-12T00:28'
  ),
  (
    (SELECT category_id FROM wine.pairing_categories WHERE category_name = 'Queijos'),
    'Queijos de cura',
    '2025-08-31T18:50',
    '2025-08-31T18:50'
  ),
  (
    (SELECT category_id FROM wine.pairing_categories WHERE category_name = 'Queijos'),
    'Queijos de meia cura',
    '2025-08-31T18:50',
    '2025-08-31T18:50'
  ),
  (
    (SELECT category_id FROM wine.pairing_categories WHERE category_name = 'Queijos'),
    'Queijos de média intensidade',
    '2025-08-31T23:26',
    '2025-08-31T23:26'
  ),
  (
    (SELECT category_id FROM wine.pairing_categories WHERE category_name = 'Queijos'),
    'Queijos curados (quando envelhecido)',
    '2025-08-25T20:06',
    '2025-08-25T20:06'
  ),
  (
    (SELECT category_id FROM wine.pairing_categories WHERE category_name = 'Queijos'),
    'Queijos condimentados (quando envelhecido)',
    '2025-08-25T20:06',
    '2025-08-25T20:06'
  ),
  (
    (SELECT category_id FROM wine.pairing_categories WHERE category_name = 'Queijos'),
    'Queijos de cabra',
    '2025-08-12T00:29',
    '2025-08-12T00:29'
  ),
  (
    (SELECT category_id FROM wine.pairing_categories WHERE category_name = 'Queijos'),
    'Queijos de cabra macios',
    '2025-08-29T02:29',
    '2025-08-29T02:29'
  ),
  -- Saladas
  (
    (SELECT category_id FROM wine.pairing_categories WHERE category_name = 'Saladas'),
    'Saladas',
    '2025-08-12T00:29',
    '2025-08-12T00:29'
  ),
  -- Outros
  (
    (SELECT category_id FROM wine.pairing_categories WHERE category_name = 'Sem qualquer acompanhamento'),
    'Sem qualquer acompanhamento',
    '2025-09-01T22:01',
    '2025-09-01T22:01'
  ),
  (
    (SELECT category_id FROM wine.pairing_categories WHERE category_name = 'Entradas'),
    'Entradas',
    '2025-09-01T22:00',
    '2025-09-01T22:00'
  ),
  (
    (SELECT category_id FROM wine.pairing_categories WHERE category_name = 'Aperitivos'),
    'Aperitivos',
    '2025-08-30T22:03',
    '2025-08-30T22:03'
  ),
  (
    (SELECT category_id FROM wine.pairing_categories WHERE category_name = 'Enchidos'),
    'Enchidos',
    '2025-08-31T18:52',
    '2025-08-31T18:52'
  ),
  (
    (SELECT category_id FROM wine.pairing_categories WHERE category_name = 'Pizzas'),
    'Pizzas',
    '2025-08-30T22:04',
    '2025-08-30T22:04'
  ),
  (
    (SELECT category_id FROM wine.pairing_categories WHERE category_name = 'Comida asiática'),
    'Comida asiática',
    '2025-08-12T00:30',
    '2025-08-12T00:30'
  ),
  (
    (SELECT category_id FROM wine.pairing_categories WHERE category_name = 'Comida asiática'),
    'Sushi',
    '2025-08-26T00:09',
    '2025-08-26T00:09'
  ),
  (
    (SELECT category_id FROM wine.pairing_categories WHERE category_name = 'Comida asiática'),
    'Sushi (combinação perfeita)',
    '2025-08-12T00:30',
    '2025-08-26T00:09'
  ),
  (
    (SELECT category_id FROM wine.pairing_categories WHERE category_name = 'Pratos regionais'),
    'Pratos regionais',
    '2025-08-12T00:30',
    '2025-08-12T00:30'
  ),
  (
    (SELECT category_id FROM wine.pairing_categories WHERE category_name = 'Pratos vegetarianos'),
    'Pratos vegetarianos',
    '2025-08-26T00:12',
    '2025-08-26T00:12'
  ),
  (
    (SELECT category_id FROM wine.pairing_categories WHERE category_name = 'Cozinha tradicional'),
    'Cozinha tradicional',
    '2025-08-26T00:33',
    '2025-08-26T00:33'
  );


