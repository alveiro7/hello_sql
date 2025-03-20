--COUNT
SELECT COUNT(*) 
FROM users;

SELECT COUNT(*)
FROM users
WHERE first_name LIKE 'A%';

--MIN
SELECT MIN(followers) AS min_seguidores 
FROM users;

--MAX
SELECT MAX(following) AS max_seguiendo 
FROM users;

--AVG PROMEDIO
SELECT AVG(followers) AS proedio_seguidores 
FROM users;

--PROMEDIO MANUAL
SELECT SUM(followers) / COUNT(*) AS avg_manual
FROM users;

--ROUND REDONDEO
SELECT ROUND(AVG(followers)) AS proedio_seguidores 
FROM users;