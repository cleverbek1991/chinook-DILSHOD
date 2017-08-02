-- sales_agent_total_sales.sql: Provide a query that shows total sales made by each sales agent.
select sum(i.Total) as "Total Sales by Sales Agent", e.EmployeeId, e.FirstName
from Invoice i, Customer c, Employee e
where i.CustomerId = c.CustomerId and c.SupportRepId = e.EmployeeId
group by e.EmployeeId