-- top_5_tracks.sql: Provide a query that shows the top 5 most purchased tracks over all.
select t.Name, count(il.TrackId)
from Track t, InvoiceLine il
where il.TrackId = t.TrackId
group by t.Name
order by count(il.TrackId) desc
limit 5