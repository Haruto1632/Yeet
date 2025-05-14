# Write your MySQL query statement below
select round(count(distinct A.player_id) / (select count(distinct player_id) from Activity) ,2)
as fraction from Activity A
JOIN (
    SELECT player_id, MIN(event_date) AS first_login
    FROM Activity
    GROUP BY player_id
) F
on A.player_id = F.player_id
and A.event_date = Date_add(F.first_login, interval 1 day);