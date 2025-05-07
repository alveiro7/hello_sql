ALTER TABLE country
    ADD PRIMARY KEY (code);

SELECT * FROM country;


SELECT * FROM country WHERE code = 'NLD';

DELETE 
FROM country
WHERE code = 'NLD' AND code2 = 'NA';


INSERT INTO "public"."country" ("code", "name", "continent", "region", "surfacearea", "indepyear", "population", "lifeexpectancy", "gnp", "gnpold", "localname", "governmentform", "headofstate", "capital", "code2") VALUES
('NAM', 'Namibia', 'Africa', 'Southern Africa', 824292, 1990, 1726000, 42.5, 3101.00, 3384.00, 'Namibia', 'Republic', 'Sam Nujoma', 2726, 'NA');