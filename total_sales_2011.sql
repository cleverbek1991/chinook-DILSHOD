/*total_sales_2011.sql: What are the respective total sales for 2011?*/
select sum(i.[Total]) as "Total Sales for 2011"
from Invoice i
where i.InvoiceDate >= '2010-12-31' and i.InvoiceDate <= '2012-01-01';