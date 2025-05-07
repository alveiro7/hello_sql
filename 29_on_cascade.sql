-- Eliminar la restriccion existente
ALTER TABLE city
DROP CONSTRAINT fk_country_code;

-- Crear la nueva restricción con update delete cascade
ALTER TABLE city
    ADD CONSTRAINT fk_country_code
    FOREIGN KEY (countrycode)
    REFERENCES country (code)
    ON UPDATE CASCADE
    ON DELETE CASCADE;


-- Hagamos ejercicios para ver que sucede con la cascada

SELECT * FROM city WHERE countrycode = 'COL'; --Una consulta donde revisamos el country code de colombia


--Cambiando el country code de colombia
UPDATE  country
SET code = 'COA'
WHERE code = 'COL';
--update o delete en «country» viola la llave foránea «fk_country_code» en la tabla «countrylanguage»


--Borrar el constraint 
ALTER TABLE countrylanguage
DROP CONSTRAINT fk_country_code;


-- Crear la nueva restricción con update delete cascade
ALTER TABLE countrylanguage
    ADD CONSTRAINT fk_country_countrylanguage
    FOREIGN KEY (countrycode)
    REFERENCES country (code)
    ON UPDATE CASCADE
    ON DELETE CASCADE;

--Cambiando el country code de colombia ✅
UPDATE  country
SET code = 'COA'
WHERE code = 'COL';


SELECT * FROM city WHERE countrycode = 'COA';