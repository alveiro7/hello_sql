SELECT website, username, following
FROM users
WHERE 
    --following > 4600 AND following <  4700;
    following BETWEEN  4600 AND 4700;