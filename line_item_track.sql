-- purchased track name
-- invoice line

select Track.Name, InvoiceLineId
from InvoiceLine
	join Track on Track.TrackId = InvoiceLine.TrackId
