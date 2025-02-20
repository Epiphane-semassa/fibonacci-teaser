-- see : https://stackoverflow.com/a/21746398

WITH recursive fibonacci(prevn, n) AS
(
    SELECT 0,
            1
    UNION ALL
    SELECT n,
            prevn + n
    FROM   fibonacci
    WHERE  n < 1000000000 -- increase size if needed
)
SELECT prevn AS value
FROM fibonacci 
LIMIT 1 
OFFSET 10 -- 10 is actually the number for which you are looking for the fibonacci sequence
;
