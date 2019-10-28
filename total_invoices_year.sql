select year(InvoiceDate) YearOfInvoices, 
	   count(*)
from Invoice
where year(InvoiceDate) in (2009, 2011) 
group by (InvoiceDate)

