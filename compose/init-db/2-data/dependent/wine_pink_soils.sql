-- Os  solos onde a/as vinhas das castas de um vinho estão plantadas,
-- ex: Granítico e franco-argiloso, etc.
INSERT INTO wine.wine_soils (wine_id, soil_id, notes, insights, created_at, updated_at) 
VALUES 
  (
    (SELECT w.wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Kopke 1638' AND w.brand = 'São Luiz Winemakers Collection' AND w.wine_type = 'Rosé' AND w.vintage = 2021),
    (SELECT soil_id FROM wine.soils WHERE soil_name = 'Xistoso'),
    null,
    null,
    '2025-08-31T23:33',
    '2025-08-31T23:33'
  );
