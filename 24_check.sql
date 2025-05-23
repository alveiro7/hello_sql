ALTER TABLE country 
ADD CHECK ( surfacearea >= 0 );


SELECT DISTINCT continent FROM country;

ALTER TABLE country ADD CHECK (
    ( continent = 'Asia'::text) OR
    ( continent = 'South America'::text) OR
    ( continent = 'North America'::text) OR
    ( continent = 'Oceania'::text) OR
    ( continent = 'Africa'::text) OR
    ( continent = 'Antarctica'::text) OR
    ( continent = 'Europe'::text) OR
    ( continent = 'Central America')
);