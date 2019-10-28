-- Provide a query that shows the count of customers assigned to each sales agent.

select Customer.SupportRepId, count(Customer.CustomerId) as CustomerCount
from Customer

group by Customer.SupportRepId
