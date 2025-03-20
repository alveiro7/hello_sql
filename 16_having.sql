--having
SELECT COUNT(*) AS total, country 
FROM users
WHERE followers > 499
GROUP BY country
HAVING COUNT(*) > 6
ORDER BY COUNT(*) DESC;