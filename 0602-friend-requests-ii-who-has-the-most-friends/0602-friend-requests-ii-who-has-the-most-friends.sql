# Write your MySQL query statement below
SELECT requester_id as id, COUNT(*) as num 
FROM(
    SELECT requester_id 
    FROM RequestAccepted
    UNION ALL
    SELECT accepter_id as requester_id
    FROM RequestAccepted
) as A
GROUP BY requester_id
ORDER BY num DESC
LIMIT 1