# Write your MySQL query statement below
select E1.employee_id from Employees E1
left join Employees E2 on E1.manager_id = E2.employee_id
where E1.salary < 30000
and E2.employee_id is null
and E1.manager_id is not null
order by employee_id;