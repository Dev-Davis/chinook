-- track name and artist name with invoiceLine

select Track.Name, Artist.Name, InvoiceLine.InvoiceId
from Artist
join Track on Track.TrackId = Artist.ArtistId
join InvoiceLine on InvoiceLine.TrackId = Track.TrackId

