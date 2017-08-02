/*total_invoices_2009.sql: How many Invoices were there in 2009?*/
select count(i.InvoiceId) as "Total Invoice for 2009"
from Invoice i
where i.InvoiceDate <= '2010-01-01';