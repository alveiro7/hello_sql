
-- 1. Cuantos usuarios tenemos con cuentas @google.com
-- Tip: count, like
SELECT COUNT(*)
FROM users
WHERE email LIKE '%@google.com';


-- 2. De qué países son los usuarios con cuentas de @google.com
-- Tip: distinct
SELECT DISTINCT COUNT(*),  country
FROM users
WHERE email LIKE '%@google.com'
GROUP BY country;

-- 3. Cuantos usuarios hay por país (country)
-- Tip: Group by
SELECT COUNT(*),  country
FROM users
GROUP BY country;


-- 4. Listado de direcciones IP de todos los usuarios de Iceland
-- Campos requeridos first_name, last_name, country, last_connection
SELECT first_name, last_name, country, last_connection
FROM users
WHERE country = 'Iceland'
ORDER BY last_name DESC;


-- 5. Cuantos de esos usuarios (query anterior) tiene dirección IP
-- que incia en 112.XXX.XXX.XXX
SELECT COUNT(*)
FROM users
WHERE country = 'Iceland' AND (last_connection LIKE '112.%');



-- 6. Listado de usuarios de Iceland, tienen dirección IP
-- que inicia en 112 ó 28 ó 188
-- Tip: Agrupar condiciones entre paréntesis 
SELECT last_connection, first_name
FROM users
WHERE country = 'Iceland' 
GROUP BY last_connection, first_name
HAVING (last_connection LIKE '112.%') OR (last_connection LIKE '28.%') OR (last_connection LIKE '188.%');



-- 7. Ordene el resultado anterior, por apellido (last_name) ascendente
-- y luego el first_name ascendentemente también
SELECT last_connection, first_name, last_name
FROM users
WHERE country = 'Iceland' 
GROUP BY last_connection, first_name, last_name
HAVING (last_connection LIKE '112.%') OR (last_connection LIKE '28.%') OR (last_connection LIKE '188.%')
ORDER BY last_name ASC, first_name ASC;


-- 8. Listado de personas cuyo país está en este listado
-- ('Mexico', 'Honduras', 'Costa Rica')
-- Ordenar los resultados de por País asc, Primer nombre asc, apellido asc
-- Tip: Investigar IN
-- Tip2: Ver Operadores de Comparación en la hoja de atajos (primera página)
SELECT  first_name, last_name, country
FROM users
WHERE country IN ('Mexico', 'Honduras', 'Costa Rica')
ORDER BY country ASC, first_name ASC, last_name ASC;


-- 9. Del query anterior, cuente cuántas personas hay por país
-- Ordene los resultados por País asc
SELECT  COUNT(*), country
FROM users
WHERE country IN ('Mexico', 'Honduras', 'Costa Rica')
GROUP BY country
ORDER BY country ASC;