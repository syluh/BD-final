-- Cast DEFINITIVO
-- Solución de la cardinalidad n:n
DROP TABLE IF EXISTS movie_Cast;
CREATE TABLE movie_Cast
SELECT id_movie, md5(`name`) AS id_cast 
FROM tmp_cast
GROUP BY md5(`name`);

-- Primera forma normal
DROP TABLE IF EXISTS Cast;
CREATE TABLE Cast
SELECT DISTINCT md5(`name`) AS id_cast , `name` 
FROM tmp_cast;
