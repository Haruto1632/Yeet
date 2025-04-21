# Write your MySQL query statement below
SELECT P.product_name, S.year, S.price from Sales S
left join Product P on P.product_id = S.product_id;