INSERT INTO wine.sub_regions (region_id, sub_region_name)
VALUES 
  -- Açores
  ((SELECT region_id FROM wine.regions WHERE region_name = 'Açores'), 'Graciosa'), --1
  ((SELECT region_id FROM wine.regions WHERE region_name = 'Açores'), 'Pico'), --2
  ((SELECT region_id FROM wine.regions WHERE region_name = 'Açores'), 'Biscoitos'), --3
  -- Alentejo
  ((SELECT region_id FROM wine.regions WHERE region_name = 'Alentejo'), 'Portalegre'), --1
  ((SELECT region_id FROM wine.regions WHERE region_name = 'Alentejo'), 'Borba'), --2
  ((SELECT region_id FROM wine.regions WHERE region_name = 'Alentejo'), 'Évora'), --3
  ((SELECT region_id FROM wine.regions WHERE region_name = 'Alentejo'), 'Redondo'), --4
  ((SELECT region_id FROM wine.regions WHERE region_name = 'Alentejo'), 'Reguengos'), --5
  ((SELECT region_id FROM wine.regions WHERE region_name = 'Alentejo'), 'Granja-Amareleja'), --6
  ((SELECT region_id FROM wine.regions WHERE region_name = 'Alentejo'), 'Vidigueira'), --7
  ((SELECT region_id FROM wine.regions WHERE region_name = 'Alentejo'), 'Moura'), --8
  -- Algarve
  ((SELECT region_id FROM wine.regions WHERE region_name = 'Algarve'), 'Lagos'), --1
  ((SELECT region_id FROM wine.regions WHERE region_name = 'Algarve'), 'Portimão'), --2
  ((SELECT region_id FROM wine.regions WHERE region_name = 'Algarve'), 'Lagoa'), --3
  ((SELECT region_id FROM wine.regions WHERE region_name = 'Algarve'), 'Tavira'), --4
  -- Beira Interior
  ((SELECT region_id FROM wine.regions WHERE region_name = 'Beira Interior'), 'Pinhel'),
  ((SELECT region_id FROM wine.regions WHERE region_name = 'Beira Interior'), 'Castelo Rodrigo'), --1 
  ((SELECT region_id FROM wine.regions WHERE region_name = 'Beira Interior'), 'Cova de Beira'), --2
  -- Dão
  ((SELECT region_id FROM wine.regions WHERE region_name = 'Dão'), 'Alva'), --1 
  ((SELECT region_id FROM wine.regions WHERE region_name = 'Dão'), 'Besteiros'), --2
  ((SELECT region_id FROM wine.regions WHERE region_name = 'Dão'), 'Castendo'), --3
  ((SELECT region_id FROM wine.regions WHERE region_name = 'Dão'), 'Serra da Estrela'), --4
  ((SELECT region_id FROM wine.regions WHERE region_name = 'Dão'), 'Silgueiros'), --5
  ((SELECT region_id FROM wine.regions WHERE region_name = 'Dão'), 'Terras de Azurara'), --6
  ((SELECT region_id FROM wine.regions WHERE region_name = 'Dão'), 'Terras de Senhorim'), --7
  -- Douro
  ((SELECT region_id FROM wine.regions WHERE region_name = 'Douro'), 'Baixo Corgo'), --1
  ((SELECT region_id FROM wine.regions WHERE region_name = 'Douro'), 'Alto Corgo'), --2
  ((SELECT region_id FROM wine.regions WHERE region_name = 'Douro'), 'Douro Superior'), --3
  -- Lisboa
  ((SELECT region_id FROM wine.regions WHERE region_name = 'Lisboa'), 'Encostas de Aire'), --1
  ((SELECT region_id FROM wine.regions WHERE region_name = 'Lisboa'), 'Lourinhã'), --2 
  ((SELECT region_id FROM wine.regions WHERE region_name = 'Lisboa'), 'Óbidos'), --3
  ((SELECT region_id FROM wine.regions WHERE region_name = 'Lisboa'), 'Torres Vedras'), --4
  ((SELECT region_id FROM wine.regions WHERE region_name = 'Lisboa'), 'Alenquer'), --5
  ((SELECT region_id FROM wine.regions WHERE region_name = 'Lisboa'), 'Arruda'), --6
  ((SELECT region_id FROM wine.regions WHERE region_name = 'Lisboa'), 'Colares'), --7
  ((SELECT region_id FROM wine.regions WHERE region_name = 'Lisboa'), 'Carcavelos'), --8
  ((SELECT region_id FROM wine.regions WHERE region_name = 'Lisboa'), 'Bucelas'), --9
  -- Madeira
  ((SELECT region_id FROM wine.regions WHERE region_name = 'Madeira'), 'Madeira'), --1 
  ((SELECT region_id FROM wine.regions WHERE region_name = 'Madeira'), 'Madeirense'), --2
  -- Vinho Verde
  ((SELECT region_id FROM wine.regions WHERE region_name = 'Vinho Verde'), 'Monção e Melgaço'), --1
  ((SELECT region_id FROM wine.regions WHERE region_name = 'Vinho Verde'), 'Lima'), --2
  ((SELECT region_id FROM wine.regions WHERE region_name = 'Vinho Verde'), 'Cávado'), --3
  ((SELECT region_id FROM wine.regions WHERE region_name = 'Vinho Verde'), 'Ave'), --4
  ((SELECT region_id FROM wine.regions WHERE region_name = 'Vinho Verde'), 'Basto'), --5
  ((SELECT region_id FROM wine.regions WHERE region_name = 'Vinho Verde'), 'Sousa'), --6
  ((SELECT region_id FROM wine.regions WHERE region_name = 'Vinho Verde'), 'Amarante'), --7
  ((SELECT region_id FROM wine.regions WHERE region_name = 'Vinho Verde'), 'Paiva'), --8
  ((SELECT region_id FROM wine.regions WHERE region_name = 'Vinho Verde'), 'Baião'), --9
  -- Península de Setúbal
  ((SELECT region_id FROM wine.regions WHERE region_name = 'Península de Setúbal'), 'Palmela'), --1
  ((SELECT region_id FROM wine.regions WHERE region_name = 'Península de Setúbal'), 'Setúbal'), --2
  -- Tejo
  ((SELECT region_id FROM wine.regions WHERE region_name = 'Tejo'), 'Tomar'), --1
  ((SELECT region_id FROM wine.regions WHERE region_name = 'Tejo'), 'Santarém'), --2
  ((SELECT region_id FROM wine.regions WHERE region_name = 'Tejo'), 'Chamusca'), --3
  ((SELECT region_id FROM wine.regions WHERE region_name = 'Tejo'), 'Cartaxo'), --4
  ((SELECT region_id FROM wine.regions WHERE region_name = 'Tejo'), 'Almeirim'), --5
  ((SELECT region_id FROM wine.regions WHERE region_name = 'Tejo'), 'Coruche'), --6
  -- Trás-Os-Montes
  ((SELECT region_id FROM wine.regions WHERE region_name = 'Trás-Os-Montes'), 'Chaves'), --1
  ((SELECT region_id FROM wine.regions WHERE region_name = 'Trás-Os-Montes'), 'Valpaços'), --2
  ((SELECT region_id FROM wine.regions WHERE region_name = 'Trás-Os-Montes'), 'Planalto Mirandês'); --3


