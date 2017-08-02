/* playlists_track_count.sql:
Provide a query that shows the total number of tracks in each playlist. The Playlist name should be include on the resulant table.*/
select count(p.PlaylistId) as "total number of Tracks in each playlist", p.Name
from Track t, Playlist p, PlaylistTrack pt
where pt.PlaylistId = p.PlaylistId and pt.TrackId = t.TrackId
group by p.Name
