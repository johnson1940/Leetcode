# Write your MySQL query statement below
SELECT *
FROM products
WHERE description regexp 'SN[0-9]{4}-[0-9]{4}[^0-9]+'
or description regexp 'SN[0-9]{4}-[0-9]{4}$'
order by 1;