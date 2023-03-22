# Write your MySQL query statement below
select user_id as buyer_id, join_date, ifnull(count(order_date), 0) as orders_in_2019 
from Users u left join Orders o on u.user_id = o.buyer_id and year(order_date) = '2019'
group by u.user_id

# select 
#     t1.user_id as buyer_id,
#     t1.join_date,
#     count(if(year(t2.order_date) = '2019', t2.order_date, null)) as orders_in_2019
# from Users t1
# left join Orders t2 on t1.user_id = t2.buyer_id
# group by t1.user_id
