-- Provide a query that shows the total sales per country

select BillingCountry, sum (Invoice.Total) as TotalSales
from Invoice

group by BillingCountry