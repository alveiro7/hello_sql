SELECT website, username, following
FROM users
WHERE 
    --following > 4600 AND following <  4700;
    following NOT BETWEEN  4000 AND 5700;