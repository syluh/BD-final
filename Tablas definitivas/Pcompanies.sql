-- Production Companies DEFINITIVO
-- Solución de la cardinalidad n:n
DROP TABLE IF EXISTS movie_pCompanies;
CREATE TABLE movie_pCompanies
SELECT id_movie, id_production_companies 
FROM tmp_production_companies;

-- Segunda forma normal
DROP TABLE IF EXISTS production_companies;
CREATE TABLE production_companies
SELECT DISTINCT id_production_companies, `name`
FROM tmp_production_companies;
