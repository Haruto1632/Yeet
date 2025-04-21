# Write your MySQL query statement below
Select V.customer_id, Count(V.visit_id) as count_no_trans from Visits V
Left Join Transactions T on V.visit_id = T.visit_id
where T.transaction_id is null
group by V.customer_id