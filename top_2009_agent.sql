-- top_2009_agent.sql: Which sales agent made the most in sales in 2009?
select e.FirstName as "Name", sum(i.Total), substr(i.InvoiceDate, 1, 4) 
from Invoice i, Customer c, Employee e
where substr(i.InvoiceDate, 1, 4) = "2009" and i.CustomerId = c.CustomerId and c.SupportRepId = e.EmployeeId
group by e.EmployeeId
order by SUM(i.Total) desc
Limit 1;