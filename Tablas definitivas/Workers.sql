-- Workres DEFINITVO
-- Tercera forma normal de la entidad crew
DROP TABLE IF EXISTS workers;
CREATE TABLE workers
SELECT DISTINCT md5(`name`)AS idWorker,`name`,gender
FROM tmp_crew
GROUP BY md5(`name`);
DELETE FROM workers WHERE idWorker IS NULL ;
