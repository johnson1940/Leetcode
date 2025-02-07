# Write your MySQL query statement below
SELECT project_id, round(SUM(experience_years)/count(project_id), 2) as average_years
FROM Project p
LEFT JOIN Employee e
ON p.employee_id = e.employee_id
group by project_id