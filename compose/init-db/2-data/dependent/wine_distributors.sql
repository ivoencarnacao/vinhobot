-- Distribuidores de vinhos, ex: Decante Vinhos
INSERT INTO wine.wine_distributors (wine_id, distributor_id, created_at, updated_at) 
VALUES 
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'atlasland' AND w.brand = 'Oh! Amigo' AND w.wine_type = 'Branco' AND w.vintage = 2022),
    (SELECT distributor_id FROM wine.distributors WHERE distributor_name = 'Rolhas'),
    '2025-08-31T22:30',
    '2025-08-31T22:30'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Natus Vini' AND w.brand = 'Natus' AND w.wine_type = 'Tinto' AND w.vintage = 2022),
    (SELECT distributor_id FROM wine.distributors WHERE distributor_name = 'Decante Vinhos'),
    '2025-08-31T18:18',
    '2025-08-31T18:18'
  ),
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Arvad' AND w.brand = 'Arvad Negra Mole' AND w.wine_type = 'Tinto' AND w.vintage = 2023),
    (SELECT distributor_id FROM wine.distributors WHERE distributor_name = 'Decante Vinhos'),
    '2025-08-31T18:17',
    '2025-08-31T18:17'
  );
