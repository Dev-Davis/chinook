-- Which country's customers spent the most

select top 1 BillingCountry, sum(Invoice.Total) as TotalSales
from Invoice
group by BillingCountry
order by TotalSales desc

