Insert into Customer (FirstName, LastName, Email)
values ('Sean', 'Davis', 'sean@underwhelm.com')

select * from Customer

Insert into Customer(FirstName, LastName, Email)
select e.FirstName as name1, e.LastName as name2, e.Email
from Employee e

select * from Customer where CustomerId > 61

Insert into Customer(FirstName, LastName, Email)
output inserted.*
values ('bob', 'Gonzales', 'steve@underwhelms.com'),
		('randy', 'watson', 'randy@underwhelms.com'),
		('jim', 'johnston', 'jim@underwhelms.com')