/*total_invoices_2011.sql: How many Invoices were there in 2011?*/
select count(i.InvoiceId) as "Total Invoice for 2011"
from Invoice i
where i.InvoiceDate >= '2010-12-31' and i.InvoiceDate <= '2012-01-01';