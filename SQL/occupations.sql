-- github.com/CodeNameKND14

set @r1=0, @r2=0, @r3=0, @r4=0;
-- min/max will return a name for a specific index and specific occupation.
-- if there is a name, it will return it, if not, it will return NULL
SELECT max(Doctor), max(Professor), max(Singer), max(Actor)
-- subquery
FROM(SELECT CASE WHEN Occupation ='Doctor' THEN (@r1:=@r1+1)
                WHEN Occupation ='Professor' THEN (@r2:=@r2+1)
                WHEN Occupation ='Singer' THEN (@r3:=@r3+1)
                WHEN Occupation ='Actor' THEN (@r4:=@r4+1)
                END AS RowNumber,
            CASE WHEN Occupation = 'Doctor' THEN Name END AS Doctor,
            CASE WHEN Occupation = 'Professor' THEN Name END AS Professor,
            CASE WHEN Occupation = 'Singer' THEN Name END AS Singer,
            CASE WHEN Occupation = 'Actor' THEN Name END AS Actor
      FROM Occupations
      ORDER BY Name
) NewTable -- we must add a new name for the table 
GROUP BY RowNumber;
