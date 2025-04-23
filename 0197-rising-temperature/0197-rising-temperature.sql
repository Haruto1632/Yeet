# Write your MySQL query statement below
select id from Weather W
where exists (
    select 1 from Weather Y
    where W.temperature > Y.temperature
    and datediff(W.recordDate, Y.recordDate) = 1
);