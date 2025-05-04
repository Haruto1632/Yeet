# Write your MySQL query statement below
select E.name from Employee E
join Employee M on
E.id = M.managerId
group by M.managerId 
having count(*) >= 5;