-- Tarea First Name - Last Name

SELECT
    name,
    SUBSTRING(name, 0, (POSITION(' ' in name) )) AS first_name,
    SUBSTRING(name, (POSITION(' ' in name) + 1 )) AS last_name
FROM
    users;


-- crear 
ALTER TABLE IF EXISTS users
    ADD COLUMN first_name VARCHAR(100),
    ADD COLUMN last_name VARCHAR(100);

--UPDATE TABLE
UPDATE
    users
SET
    first_name = SUBSTRING(name, 0, (POSITION(' ' in name) )), 
    last_name = SUBSTRING(name, (POSITION(' ' in name) + 1 ));



--mostrar el resultado
SELECT 
    *
FROM 
    users;