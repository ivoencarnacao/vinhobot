CREATE OR REPLACE VIEW wine.v_wine_details AS
SELECT
    w.wine_id,
    w.brand,
    w.vintage,
    w.wine_type,
    COALESCE(r.region_name, 'Região Desconhecida') AS region,
    COALESCE(p.producer_name, 'Produtor Desconhecido') AS producer,
    COALESCE(w.aroma, 'N/A') AS aroma,
    COALESCE(w.flavour, 'N/A') AS flavour,
    COALESCE(w.aspect, 'N/A') AS aspect,
    COALESCE(STRING_AGG(DISTINCT g.grape_name, ', '), 'N/A') AS grapes,
    COALESCE(STRING_AGG(DISTINCT pa.pairing_name, ', '), 'N/A') AS pairings,
    COALESCE(STRING_AGG(DISTINCT wr.wine_reference, ', '), 'N/A') AS "references"
FROM
    wine.wines w
LEFT JOIN wine.regions r ON w.region_id = r.region_id
LEFT JOIN wine.producers p ON w.producer_id = p.producer_id
LEFT JOIN wine.wine_grapes wg ON w.wine_id = wg.wine_id
LEFT JOIN wine.grapes g ON wg.grape_id = g.grape_id
LEFT JOIN wine.wine_pairings wp ON w.wine_id = wp.wine_id
LEFT JOIN wine.pairings pa ON wp.pairing_id = pa.pairing_id
LEFT JOIN wine.wine_references wr ON w.wine_id = wr.wine_id
GROUP BY
    w.wine_id, r.region_name, p.producer_name;