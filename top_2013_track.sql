-- Provide a query that shows the most purchased track of 2013

select sum(Quantity) as Quantity, Track.TrackId
from InvoiceLine
join Track on Track.TrackId = InvoiceLine.TrackId
join Invoice on Invoice.InvoiceId = InvoiceLine.InvoiceId
where year(Invoice.InvoiceDate) = '2013'

group by Track.TrackId
