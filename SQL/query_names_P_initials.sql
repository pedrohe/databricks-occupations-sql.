SELECT CONCAT(Name, ' (', SUBSTRING(Occupation, 1, 1), ')') AS P_Initials
FROM occupation
ORDER BY Name;

