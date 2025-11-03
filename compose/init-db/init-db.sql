\set ON_ERROR_STOP on

\echo '--- 1. Scripts de schema ---'

\echo 'SCHEMA'
\i /docker-entrypoint-initdb.d/1-schema/schema.sql

\echo 'Configurações'
\i /docker-entrypoint-initdb.d/1-schema/config.sql

\echo 'Extensões e Tipos'
\i /docker-entrypoint-initdb.d/1-schema/extensions.sql
\i /docker-entrypoint-initdb.d/1-schema/types.sql

\echo 'Funções'
\i /docker-entrypoint-initdb.d/1-schema/functions.sql

\echo 'Tabelas core (sem dependências)'
\i /docker-entrypoint-initdb.d/1-schema/core/appellations.sql
\i /docker-entrypoint-initdb.d/1-schema/core/grapes.sql
\i /docker-entrypoint-initdb.d/1-schema/core/pairing_categories.sql
\i /docker-entrypoint-initdb.d/1-schema/core/producers.sql
\i /docker-entrypoint-initdb.d/1-schema/core/regions.sql
\i /docker-entrypoint-initdb.d/1-schema/core/soils.sql
\i /docker-entrypoint-initdb.d/1-schema/core/sources.sql
\i /docker-entrypoint-initdb.d/1-schema/core/vendors.sql
\i /docker-entrypoint-initdb.d/1-schema/core/winemakers.sql
\i /docker-entrypoint-initdb.d/1-schema/core/distributors.sql

\echo 'Tabelas dependentes'
\i /docker-entrypoint-initdb.d/1-schema/dependent/pairings.sql
\i /docker-entrypoint-initdb.d/1-schema/dependent/sub_regions.sql
\i /docker-entrypoint-initdb.d/1-schema/dependent/wines.sql
\i /docker-entrypoint-initdb.d/1-schema/dependent/wine_grapes.sql
\i /docker-entrypoint-initdb.d/1-schema/dependent/wine_soils.sql
\i /docker-entrypoint-initdb.d/1-schema/dependent/wine_pairings.sql
\i /docker-entrypoint-initdb.d/1-schema/dependent/wine_winemakers.sql
\i /docker-entrypoint-initdb.d/1-schema/dependent/wine_references.sql
\i /docker-entrypoint-initdb.d/1-schema/dependent/wine_offers.sql
\i /docker-entrypoint-initdb.d/1-schema/dependent/wine_distributors.sql

\echo 'Views'
\i /docker-entrypoint-initdb.d/1-schema/views.sql

\echo 'Índices'
\i /docker-entrypoint-initdb.d/1-schema/indexes.sql

\echo '--- 2. Scripts de dados ---'

\echo 'Dados para as tabelas core'
\i /docker-entrypoint-initdb.d/2-data/core/appellations.sql
\i /docker-entrypoint-initdb.d/2-data/core/grapes.sql
\i /docker-entrypoint-initdb.d/2-data/core/pairing_categories.sql
\i /docker-entrypoint-initdb.d/2-data/core/producers.sql
\i /docker-entrypoint-initdb.d/2-data/core/regions.sql
\i /docker-entrypoint-initdb.d/2-data/core/soils.sql
\i /docker-entrypoint-initdb.d/2-data/core/sources.sql
\i /docker-entrypoint-initdb.d/2-data/core/vendors.sql
\i /docker-entrypoint-initdb.d/2-data/core/winemakers.sql

\echo 'Dados para as tabelas dependentes'
\i /docker-entrypoint-initdb.d/2-data/dependent/pairings.sql
\i /docker-entrypoint-initdb.d/2-data/dependent/sub_regions.sql

\echo 'Dados para vinhos tintos, brancos e rosés'
\i /docker-entrypoint-initdb.d/2-data/dependent/wine_red.sql
\i /docker-entrypoint-initdb.d/2-data/dependent/wine_white.sql
\i /docker-entrypoint-initdb.d/2-data/dependent/wine_pink.sql

\echo 'Dados para vinhos tinto'
\i /docker-entrypoint-initdb.d/2-data/dependent/wine_red_grapes.sql
\i /docker-entrypoint-initdb.d/2-data/dependent/wine_red_soils.sql
\i /docker-entrypoint-initdb.d/2-data/dependent/wine_red_pairings.sql
\i /docker-entrypoint-initdb.d/2-data/dependent/wine_red_winemakers.sql
\i /docker-entrypoint-initdb.d/2-data/dependent/wine_red_references.sql
\i /docker-entrypoint-initdb.d/2-data/dependent/wine_red_offers.sql

\echo 'Dados para vinhos brancos'
\i /docker-entrypoint-initdb.d/2-data/dependent/wine_white_grapes.sql
\i /docker-entrypoint-initdb.d/2-data/dependent/wine_white_soils.sql
\i /docker-entrypoint-initdb.d/2-data/dependent/wine_white_pairings.sql
\i /docker-entrypoint-initdb.d/2-data/dependent/wine_white_winemakers.sql
\i /docker-entrypoint-initdb.d/2-data/dependent/wine_white_references.sql
\i /docker-entrypoint-initdb.d/2-data/dependent/wine_white_offers.sql

\echo 'Dados para vinhos rosés'
\i /docker-entrypoint-initdb.d/2-data/dependent/wine_pink_grapes.sql
\i /docker-entrypoint-initdb.d/2-data/dependent/wine_pink_soils.sql
\i /docker-entrypoint-initdb.d/2-data/dependent/wine_pink_pairings.sql
\i /docker-entrypoint-initdb.d/2-data/dependent/wine_pink_winemakers.sql
\i /docker-entrypoint-initdb.d/2-data/dependent/wine_pink_references.sql
\i /docker-entrypoint-initdb.d/2-data/dependent/wine_pink_offers.sql

\echo 'Feito!'