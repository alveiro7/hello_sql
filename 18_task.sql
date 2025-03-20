SELECT
    COUNT(*),
    SUBSTRING(email,(POSITION('@' in email) + 1 )) AS domain
FROM users
GROUP BY SUBSTRING(email,(POSITION('@' in email) + 1 )) 
HAVING COUNT(*) > 1
ORDER BY SUBSTRING(email,(POSITION('@' in email) + 1 )) DESC;