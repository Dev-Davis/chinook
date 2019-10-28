-- Which sales agent made the most in sales in 2009? HINT: TOP

select top 1 Customer.SupportRepId
from Customer
join Employee on Customer.SupportRepId = Employee.EmployeeId
join Invoice on Customer.CustomerId = Invoice.CustomerId
where Invoice.InvoiceDate = '2009'

group by Customer.SupportRepId