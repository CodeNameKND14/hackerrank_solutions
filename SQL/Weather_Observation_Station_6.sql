-- github/CodeNameKND14

SELECT DISTINCT city 
FROM station 
WHERE city REGEXP "^[aeiou].*";
/*
REGEXP performs a pattern match of a string expression against a pattern. 
The pattern is supplied as an argument.
If the pattern finds a match in the expression, the function returns 1, else it returns 0.
The ‘^’ is used to match the beginning of the name.
*/
