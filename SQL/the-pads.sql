-- github.com/CodeNameKND14
SELECT concat(name, '(', substr(occcupation, 1, 1), ')')
FROM occupations
ORDER BY name ASC;
SELECT concat('There are a total of ', count(1) ' ', lower(occupation), 's.')
FROM occupations
GROUP BY occupations
ORDER BY count(1) ASC, occupation asc;
