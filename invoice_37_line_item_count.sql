/*invoice_37_line_item_count.sql:
Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for Invoice ID 37.*/
select count(il.InvoiceLineId) as "Line Items"
from InvoiceLine il
where il.InvoiceId = 37;