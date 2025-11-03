-- Wine References
INSERT INTO wine.wine_references (wine_id, source_id, source_type, wine_reference, created_at, updated_at)
VALUES
  (
    (SELECT wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'Kopke 1638' AND w.brand = 'São Luiz Winemakers Collection' AND w.wine_type = 'Rosé' AND w.vintage = 2021),
    (SELECT source_id FROM wine.sources WHERE source_name = 'Kopke 1638'),
    'URL',
    'https://kopke1638.com/pt/loja/vinho-doc-douro/winemakers-collection/sao-luiz-winemakers-collection-tinto-cao-2021-rose/',
    '2025-09-01T00:02',
    '2025-09-01T00:04'
  ),
  (
    (SELECT wine_id 
      FROM wine.wines w
      JOIN wine.producers p ON w.producer_id = p.producer_id
      WHERE p.producer_name = 'António Maçanita' AND w.brand = 'Maçanita Touriga Nacional' AND w.wine_type = 'Rosé' AND w.vintage = 2023),
    (SELECT source_id FROM wine.sources WHERE source_name = 'António Maçanita'),
    'URL',
    'https://www.antoniomacanita.com/pt/vinhos-online/macanita-vinhos/touriga-nacional-em-rose-2023',
    null,
    null
  );
