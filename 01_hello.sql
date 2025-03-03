-- creacion de una tabla
nameCREATE TABLE "users" (
    name VARCHAR(100) UNIQUE
);

-- insertar registros a la tabla
INSERT INTO users (
    name)
VALUES (
    'Alveiro'
)

-- insertar registros multiples
INSERT INTO users (
    name)
VALUES 
( 'Melissa' ),
( 'Maria' ),
( 'Alveiro2' );


SELECT *
FROM users;