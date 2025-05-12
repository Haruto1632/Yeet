# Write your MySQL query statement below
Select P.product_id, ifnull(Round(sum(units*price) / sum(units),2), 0) as average_price
from Prices P Left Join UnitsSold U
On P.product_id = U.product_id
and U.purchase_date BETWEEN P.start_date AND P.end_date
group by P.product_id