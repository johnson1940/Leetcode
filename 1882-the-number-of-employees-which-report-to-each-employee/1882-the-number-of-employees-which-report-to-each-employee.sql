# Write your MySQL query statement below
SELECT e1.employee_id,
e1.name, count(e2.reports_to) as reports_count,
round(avg(e2.age)) as average_age
From employees e1 join employees e2 on e1.employee_id = e2.reports_to
Where e2.reports_to is not null
group by e1.employee_id order by e1.employee_id;