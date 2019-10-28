-- show all invoices, but includes the # on invoiceLine items

select Invoice.InvoiceId, count (InvoiceLine.InvoiceId)
from Invoice
join InvoiceLine on Invoice.InvoiceId = InvoiceLine.InvoiceId

group by Invoice.InvoiceId 