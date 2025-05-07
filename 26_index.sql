CREATE UNIQUE INDEX "unique_country_name" on country (
    name
);

CREATE INDEX "country_continent" on country (
    continent
);

CREATE UNIQUE INDEX "unique_name_countrycode_district" on city (
    name, countrycode, district
);

SELECT *
FROM city
WHERE name = 'Jinzhou' AND countrycode ='CHN' AND district = 'Liaoning';

CREATE INDEX "city_district" on city (district);