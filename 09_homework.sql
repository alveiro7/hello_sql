-- Tarea First Name - Last Name

SELECT
    name,
    SUBSTRING(name, 0, (POSITION(' ' in name) )) AS first_name,
    SUBSTRING(name, (POSITION(' ' in name) + 1 )) AS last_name
FROM
    users;
