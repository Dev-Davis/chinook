-- Provide a query that shows the top 3 best selling artists

select top 5 Artist.Name
from Artist
-- join album on artistId
join Album on Album.ArtistId = Artist.ArtistId
-- join Track on trackId
join Track on Track.AlbumId = Artist.ArtistId

group by Artist.Name

