--UPPER muestra todo el resultado todo en mayusculas
SELECT 
    id, UPPER(name)
FROM
    users;


--LOWER muestra el resultado en minusculas
SELECT
    id, LOWER(name)
FROM
    users;


--LENGTH numero de caracteres del string
SELECT
    LENGTH(name)
FROM
    users;


--TRIM remueve los espacios inciales y finales del string
SELECT
    TRIM(name)
FROM
    users;


--CONCAT une dos o mas strings
SELECT 
    CONCAT(name, ' ',id)
FROM
    users;


-- || une dos o mas strings 
SELECT
    'nombre ' || name ||' con el ID ' || id
FROM
    users;

--POSITION('term' in field) buscar term en el campo y retorna el ind
SELECT 
    POSITION('al' in name)
FROM
    users