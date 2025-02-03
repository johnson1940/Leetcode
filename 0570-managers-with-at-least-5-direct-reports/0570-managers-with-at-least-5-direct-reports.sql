# Write your MySQL query statement below
SELECT name
FROM Employee
where id in (
    select managerid from Employee
    group by managerid
    having count(managerid) >= 5
)