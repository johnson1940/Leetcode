# Write your MySQL query statement below
SELECT(
    CASE WHEN id % 2 = 1 and id = (SELECT max(id) from Seat) THEN id
    WHEN id % 2 = 1 THEN id + 1
    WHEN id % 2 = 0 THEN id - 1
    END ) AS id, student
FROM Seat
ORDER BY id