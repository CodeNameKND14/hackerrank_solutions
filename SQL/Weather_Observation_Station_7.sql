-- github/CodeNameKND14

SELECT DISTINCT City
From Station
Where substring(city, -1, 1) IN( 'a', 'e', 'i', 'o', 'u');

/*
SUBSTRING() returns a specified number of characters from a particular position of a given string.
*/
