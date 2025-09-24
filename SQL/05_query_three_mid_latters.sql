SELECT CONCAT(Name, ' (',UBSTRING(Occupation, FLOOR((LENGTH(Occupation) - 3) / 2) + 1, 3), ')') AS P_Middle
FROM occupation
ORDER BY Name;
