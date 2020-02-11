-- github.com/CodeNameKND14
SELECT DISTINCT CITY 
FROM Station
WHERE substring(city, -1, 1) in ('a', 'e', 'i','o','u')
AND substring(city, 1, 1) in ('A','E','I','O','U')
-- or 
SELECT DISTINCT CITY FROM STATION
WHERE CITY REGEXP '^[aeiou].*[aeiou]$';
