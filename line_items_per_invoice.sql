select count(InvoiceId)
from InvoiceLine
group by InvoiceId
