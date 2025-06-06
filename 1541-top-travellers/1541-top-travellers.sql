# Write your MySQL query statement below
SELECT name,
(SELECT CASE
WHEN sum(distance) is not null then sum(distance) 
else 0 end 
from Rides R where R.user_id = U.id) as travelled_distance
from Users U order by travelled_distance desc, name asc 