# Write your MySQL query statement below
select distinct Num as ConsecutiveNums
from Logs
where (Id + 1, Num) in (select * from Logs)    # 다음 숫자 판단
                        and (Id + 2, Num) in (select * from Logs) # 그 다음 숫자 판단