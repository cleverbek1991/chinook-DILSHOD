/*sales_agent_invoices.sql: Provide a query that shows the invoices associated with each sales agent.
The resultant table should include the Sales Agent's full name.*/
select e.FirstName, e.LastName, i.InvoiceId
from Employee e, Customer c, Invoice i
where e.EmployeeId = c.SupportRepId;