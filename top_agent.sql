-- Which sales agent made the most in sales over all?

select top 1 Customer.SupportRepId
from Customer
join Employee on Customer.SupportRepId = Employee.EmployeeId
join Invoice on Customer.CustomerId = Invoice.CustomerId