-- top_country.sql: Which country's customers spent the most?
select i.BillingCountry, sum(i.Total) as "Sales"
from Invoice i
group by i.BillingCountry
order by SUM(i.Total) desc;