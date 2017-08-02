/*total_sales_{year}.sql: What are the respective total sales for each of those years?*/
select sum(i.total), substr(i.InvoiceDate, 1, 4)
from Invoice i
where substr(i.InvoiceDate, 1, 4) = "2009"  
or substr(i.InvoiceDate, 1, 4) = "2011"
group by substr(i.InvoiceDate, 1, 4);