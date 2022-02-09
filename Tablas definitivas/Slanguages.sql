-- Spoken Languages DEFINITIVO
-- Solución de la cardinalidad n:n
DROP TABLE IF EXISTS movie_Slanguages;
CREATE TABLE movie_Slanguages
SELECT id_movie, iso_639_1 
FROM tmp_spoken_languages
WHERE `name` != '""';

-- Segunda forma Normal
DROP TABLE IF EXISTS spoken_Langugages;
CREATE TABLE spoken_Langugages
SELECT DISTINCT `name`,iso_639_1
FROM tmp_spoken_languages
WHERE `name` != '""' ;
