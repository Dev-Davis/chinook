-- total number of tracks in each playlist
-- playlistName should be included
-- if using an aggregate function, you have to use in grouo by as well

select count(PlayList.PlayListId) as PlaylistTrackTotal, Playlist.Name
from Playlist 
join PlayListTrack on PlayList.PlaylistId = PlaylistTrack.PlaylistId

group by playlist.PlaylistId, Playlist.Name 
