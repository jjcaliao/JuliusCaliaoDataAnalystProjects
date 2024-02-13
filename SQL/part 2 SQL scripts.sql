USE `world`;
-- SELECT * FROM city;
-- SELECT * FROM country;
#task 1
-- SELECT count(CountryCode) AS cities_in_usa FROM city WHERE CountryCode='USA';

#task 2
-- SELECT Name, Population, LifeExpectancy FROM country WHERE Code = 'ARG';

#task 3
-- SELECT * FROM country ORDER BY LifeExpectancy desc LIMIT 1;

#task 4
-- SELECT Name from city WHERE Name LIKE 'F%' LIMIT 25;

#task 5
-- SELECT Id, Name, Population FROM city LIMIT 10;

#task 6
-- SELECT Name, Population FROM city WHERE Population > 2000000;

#task 7
-- SELECT Name from city WHERE Name LIKE 'Be%';

#task 8
-- SELECT Name, Population FROM city WHERE Population BETWEEN 500000 AND 1000000;

#task 9
-- SELECT Name, Population FROM city ORDER BY Population Asc LIMIT 1;

#bonus 1
-- SELECT 
-- ct.CountryCode, cn.Name AS country_name, ct.Name AS city_name, ct.Population AS city_population
-- FROM city ct 
-- INNER JOIN country cn ON ct.CountryCode = cn.Code
-- WHERE cn.Name = 'Spain'
-- ORDER BY city_population desc LIMIT 1;

#bonus 2
-- SELECT 
-- cl.CountryCode, cl.Language, cn.Name AS country_name, cn.Region, cl.Percentage
-- FROM countrylanguage cl 
-- INNER JOIN country cn ON cl.CountryCode = cn.Code
-- WHERE cn.Region = 'Caribbean'
-- ORDER BY cl.percentage desc;

#bonus 3
SELECT 
ct.CountryCode, cn.Name AS country_name, ct.Name AS city_name, cn.Region
FROM city ct 
INNER JOIN country cn ON ct.CountryCode = cn.Code
WHERE cn.Region LIKE '%Europe%';