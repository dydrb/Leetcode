# Write your MySQL query statement below
# select w1.id as id
# from Weather w1 join Weather w2
# on w1.temperature > w2.temperature and datediff(w1.recordDate - w2.recordDate) = 1

SELECT w2.id 
from Weather w1 JOIN Weather w2 ON w2.temperature > w1.temperature AND
datediff(w2.recordDate,w1.recordDate) = 1;