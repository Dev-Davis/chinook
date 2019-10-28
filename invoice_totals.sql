select customer.FirstName + ' ' + customer.LastName as FullName,
Customer.Country,
Employee.FirstName + ' ' + Employee.LastName as EmployeeFullName,
sum(Invoice.Total) InvoiceTotal
from Customer
	join Invoice 
		on Invoice.CustomerId = Customer.CustomerId
	join Employee 
		on Employee.EmployeeId = Customer.SupportRepId

group by customer.FirstName + ' ' + Customer.LastName,
	Customer.Country,
	Employee.FirstName + ' ' + Employee.LastName
