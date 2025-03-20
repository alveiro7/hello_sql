--GROUP BY
SELECT COUNT(*), followers 
FROM users
WHERE followers > 499
GROUP BY followers;