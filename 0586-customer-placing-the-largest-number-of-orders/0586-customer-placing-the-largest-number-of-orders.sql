# Write your MySQL query statement below
# select max(count)
#  (select count(customer_number)
#       from Orders
#       group by customer_number
#       order by count(customer_number) desc limit 1)

SELECT customer_number 
FROM orders
GROUP BY customer_number 
HAVING COUNT(*) = (SELECT COUNT(*)
                   FROM orders
                   GROUP BY customer_number
                   ORDER BY COUNT(*) DESC LIMIT 1);