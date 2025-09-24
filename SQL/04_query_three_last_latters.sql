SELECT CONCAT(Name, ' (', RIGHT(Occupation, 3), ')') AS P_Initials
FROM occupation
ORDER BY Name;

