# Write your MySQL query statement below
# select stock_name, 
#     sum(case 
#             when operation = 'Buy' then -price
#             when operation = 'Sell' then price
#         end) as capital_gain_loss 
# from Stocks 
# group by stock_name

SELECT stock_name,
SUM((IF(operation='Sell',price,0)) - (IF(operation='Buy',price,0))) as capital_gain_loss 
FROM Stocks
GROUP BY stock_name