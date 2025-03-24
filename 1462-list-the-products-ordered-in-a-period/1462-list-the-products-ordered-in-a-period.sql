# Write your MySQL query statement below
SELECT product_name, sum(Orders.unit) as unit 
FROM Products
JOIN Orders on Products.product_id = Orders.product_id
WHERE Orders.order_date like '2020-02%'
GROUP BY product_name
HAVING sum(unit) > 99