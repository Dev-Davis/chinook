-- show all tracks, but display no IDs
-- results shows Album name, Media Type, and genre

select Track.Name, Album.Title, MediaType.Name as MediaType, Genre.Name as Genre
from Track
join Genre on genre.GenreId = Track.GenreId
join Album on Album.AlbumId = Track.AlbumId
join MediaType on MediaType.MediaTypeId = Track.MediaTypeId

