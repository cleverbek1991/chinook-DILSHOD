-- top_media_type.sql: Provide a query that shows the most purchased Media Type.
select mt.Name, count(il.TrackId)
from MediaType mt, InvoiceLine il, Track t
where il.TrackId = t.TrackId and t.MediaTypeId = mt.MediaTypeId
group by mt.Name
order by COUNT(il.TrackId) desc