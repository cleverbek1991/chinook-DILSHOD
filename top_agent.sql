--top_agent.sql: Which sales agent made the most in sales over all?
select e.FirstName || " " || e.LastName as "Name", sum(i.Total)
from Invoice i, Customer c, Employee e
where i.CustomerId = c.CustomerId and c.SupportRepId = e.EmployeeId
group by e.EmployeeId
order by SUM(i.Total) desc
Limit 1;