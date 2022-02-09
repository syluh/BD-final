-- key words DEFINITIVO
-- Solución de la cardinalidad n:n
DROP TABLE IF EXISTS movie_keywords;
CREATE TABLE movie_keywords
SELECT id_movie, md5(keyWords) AS id_keywords
FROM tmp_key_words
WHERE keyWords != '""'
GROUP BY md5(keyWords);

-- Segunda forma Normal
DROP TABLE IF EXISTS keywords;
CREATE TABLE keywords
SELECT DISTINCT md5(keyWords)AS id_keywords,keyWords
FROM tmp_key_words
WHERE keyWords != '""';
