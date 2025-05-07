-- ELIMINAR EL CONSTRAINT CHECK QUE ESTA EN CONTINENT
ALTER TABLE country
DROP CONSTRAINT country_continent_check;


-- UN SUBQUERY PARA VALIDAR EL CODE DE CADA CONTINENT
SELECT a.name, a.continent,
    (SELECT b.code FROM continent b WHERE b.name = a.continent)
FROM country a;

-- UPDATE PARA CAMBIAR EL CONTINENT PASAR DEL NOMBRE AL CODE EN LA TABLA COUNTRY
UPDATE country a
SET continent = (SELECT b.code FROM continent b WHERE b.name = a.continent);

