-- Provide a query that shows the top 5 most purchased songs

select top 5 Track.TrackId, sum(InvoiceLine.Quantity) As Taco
from Track
join invoiceLine on InvoiceLine.TrackId = Track.TrackId
join invoice on invoice.InvoiceId = InvoiceLine.InvoiceId

group by Track.TrackId, InvoiceLine.Quantity
order by Taco desc