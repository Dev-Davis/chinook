-- Data retrieval and ctrl + e to run the query
/*
select
from 
where
order by
group by
having
*/

--begin transaction
--select *
--from Employee
--where City = 'calgary'
--order by 2

select *
from Employee

select City, Title, count(*) NumberOfEmployees
from Employee
group by City, Title
having count(1) > 1

--select FirstName + ' ' + LastName as FullName, Phone, Title
--from Employee
--where City = 'Lethbridge'
--order by Title, LastName

select *
from Employee e
	join Customer c
		on c.SupportRepId = e.EmployeeId
order by EmployeeId

select e.FirstName + ' ' + e.LastName as EmployeeFullName,
	sum (case 
	when c.CustomerId is not null then 1
	else 0
	end) as NumberOfCustomers
from Employee e
	left join Customer c
		on c.SupportRepId = e.EmployeeId
group by e.FirstName + ' ' + e.LastName
order by 1
--commit