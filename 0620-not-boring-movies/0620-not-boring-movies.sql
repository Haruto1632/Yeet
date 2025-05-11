# Write your MySQL query statement below
Select * from cinema 
where description != "boring"
and id % 2 = 1
order by rating DESC;