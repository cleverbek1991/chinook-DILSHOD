--line_item_track.sql: Provide a query that includes the purchased track name with each invoice line item.
select il.InvoiceId, t.Name
from Track t, InvoiceLine il
where il.TrackId = t.TrackId;