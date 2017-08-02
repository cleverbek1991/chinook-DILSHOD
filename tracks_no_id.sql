/*tracks_no_id.sql: Provide a query that shows all the Tracks, but displays no IDs.
	The result should include the Album name, Media type and Genre.*/
select t.Name as "Track Name", a.Title as "Album", mt.Name as "MediaType", g.Name as "Genre"
from Track t, Album a, MediaType mt, Genre g
where t.AlbumId = a.AlbumId and t.MediaTypeId = mt.MediaTypeId and t.GenreId = g.GenreId