/*total_sales_2009.sql: What are the respective total sales for 2009?*/
select sum(i.[Total]) as "Total Sales for 2009"
from Invoice i
where i.InvoiceDate <= '2010-01-01';