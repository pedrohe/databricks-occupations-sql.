SELECT CONCAT('There are a total of ', COUNT(*), ' ', LOWER(Occupation), 's.') AS result
FROM occupation
GROUP BY Occupation
ORDER BY COUNT(*) ASC;
