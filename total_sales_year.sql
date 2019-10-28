select year(InvoiceDate) as YearOfInvoices,
	   sum(total) as TotalSales
from invoice
where year(InvoiceDate) in (2009,2011)
group by year(InvoiceDate)