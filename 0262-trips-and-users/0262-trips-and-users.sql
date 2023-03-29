# Write your MySQL query statement below
# SELECT request_at AS Day, round(count(),2)
# FROM Trips t join Users u 
# WHERE request_at BETWEEN '2013-10-01' AND '2013-10-03'
# group by request_at
# having 

select 
    request_at as Day, 
    round(sum(if(status = "cancelled_by_driver" or status = "cancelled_by_client", 1,0 )) / count(id) ,2) as "Cancellation Rate"
from Trips 
where 
    client_id not in (select users_id from Users  where banned = "Yes") and 
    driver_id not in (select users_id from Users  where banned = "Yes") and 
    request_at between "2013-10-01" and "2013-10-03"
group by request_at 
order by Day asc