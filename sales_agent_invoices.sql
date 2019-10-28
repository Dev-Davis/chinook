-- shows sales agent invoices
select emp.FirstName + ' ' + emp.LastName as FullName, Invoice.*
-- employee Id
from Employee emp
	join Customer 
		on Customer.SupportRepId = emp.EmployeeId
	join Invoice 
		on Customer.CustomerId = Invoice.CustomerId