--  Provide a query that shows total sales made by each sales agent

-- Invoice - Total Column
-- Customer - SupportRedId
-- Employee - EmployeeId column	

select Customer.SupportRepId, sum (Invoice.Total) as SalesTotal
from Customer
join Employee on Customer.SupportRepId = Employee.EmployeeId
join Invoice on Customer.CustomerId = Invoice.CustomerId

group by Customer.SupportRepId