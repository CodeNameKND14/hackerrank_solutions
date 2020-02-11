-- github.com/CodeNameKND14

SELECT NAME 
FROM STUDENTS
WHERE Marks > 75
ORDER BY Substring(NAME, -3, 3), ID;
