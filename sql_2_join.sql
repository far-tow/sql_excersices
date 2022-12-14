# SQL Join exercise
#
-- just to be sure that right db is in use!
USE world; 
#
# 1: Get the cities with a name starting with ping sorted by their population with the least populated cities first
SELECT `name`, population, countrycode 
FROM city 
WHERE `name` 
LIKE 'ping%' 
ORDER BY population ASC;
#
# 2: Get the cities with a name starting with ran sorted by their population with the most populated cities first
SELECT `name`, population, countrycode 
FROM city 
WHERE `name` 
LIKE 'ran%' 
ORDER BY population DESC;
#
#
# 3: Count all cities
SELECT count(*) AS 'TOTAL NUMBER OF CITIES' 
FROM city;
#
#
# 4: Get the average population of all cities
SELECT avg(population) AS 'Average population of all Cities' 
FROM city; 
#
#
# 5: Get the biggest population found in any of the cities
SELECT max(population) AS 'Biggest Population' 
FROM city;
#
#
# 6: Get the smallest population found in any of the cities
SELECT min(population) AS 'Smallest Population' 
FROM city;
#
#
# 7: Sum the population of all cities with a population below 10000
SELECT sum(population) 
FROM city 
WHERE population < 10000;
#
#
# 8: Count the cities with the countrycodes MOZ and VNM
SELECT count(*)
FROM city
WHERE countrycode IN ('moz', 'vnm');
#
#
# 9: Get individual count of cities for the countrycodes MOZ and VNM
-- we can use SELECTION inside of SELECT to show every coloumn with a lable!
SELECT 
(SELECT count(*) FROM city WHERE countrycode = 'moz') AS 'Mozambique',
(SELECT count(*) FROM city WHERE countrycode = 'vnm') AS 'Vietnam';
#
#
# 10: Get average population of cities in MOZ and VNM
SELECT 
(SELECT avg(population) FROM city WHERE countrycode = 'moz') AS 'Mozambique',
(SELECT avg(population) FROM city WHERE countrycode = 'vnm') AS 'Vietnam';
#
#
# 11: Get the countrycodes for countries with more than 200 cities
SELECT CountryCode
FROM city
GROUP By CountryCode
HAVING count(*) > 200;
#
#
# 12: Get the countrycodes with more than 200 cities ordered by city count
#
#
# 13: What language(s) is spoken in the city with a population between 400 and 500 ?
#
#
# 14: What are the name(s) of the cities with a population between 500 and 600 people and the language(s) spoken in them
#
#
# 15: What names of the cities are in the same country as the city with a population of 122199 (including the that city itself)
#
#
# 16: What names of the cities are in the same country as the city with a population of 122199 (excluding the that city itself)
#
#
# 17: What are the city names in the country where Luanda is capital?
#
#
# 18: What are the names of the capital cities in countries in the same region as the city named Yaren
#
#
# 19: What unique languages are spoken in the countries in the same region as the city named Riga
#
#
# 20: Get the name of the most populous city
#
