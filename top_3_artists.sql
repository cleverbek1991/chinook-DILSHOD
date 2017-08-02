-- top_3_artists.sql: Provide a query that shows the top 3 best selling artists.
select a.Name, count(il.TrackId)
from Artist a, InvoiceLine il, Album al, Track t
where t.TrackId = il.TrackId and t.AlbumId = al.AlbumId and a.ArtistId = al.ArtistId
group by a.Name
order by count(il.TrackId) desc
limit 3