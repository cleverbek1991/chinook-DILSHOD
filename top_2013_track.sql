-- top_2013_track.sql: Provide a query that shows the most purchased track of 2013.
select t.Name, count(il.TrackId)
from Track t, InvoiceLine il, Invoice i
where il.TrackId = t.TrackId and il.InvoiceId = i.InvoiceId and substr(i.InvoiceDate, 1, 4) = "2013"
group by t.Name
order by count(il.TrackId) desc