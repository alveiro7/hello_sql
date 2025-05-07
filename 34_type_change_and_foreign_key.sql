ALTER TABLE country
ALTER COLUMN continent  TYPE int4;
-- la columna «continent» no puede convertirse automáticamente al tipo integer


ALTER TABLE country
ALTER COLUMN continent  TYPE int4
USING continent::integer;
-- ALTER successfully executed.


-- FOREING KEY
ALTER TABLE country
ADD CONSTRAINT continent_code
FOREIGN KEY (continent)
REFERENCES continent (code);