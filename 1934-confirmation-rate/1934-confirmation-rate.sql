# Write your MySQL query statement below
Select S.user_id, round(ifnull(avg(C.action = 'confirmed'), 0.0), 2) as confirmation_rate From Signups S
Left Join Confirmations C on S.user_id = C.user_id Group by S.user_id;