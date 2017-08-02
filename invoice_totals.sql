/*invoice_totals.sql: Provide a query that shows the Invoice Total, Customer name,
Country and Sale Agent name for all invoices and customers.*/
select i.InvoiceId, i.[Total] as "Invoice Total", c.FirstName as "Customer Name", c.Country, e.FirstName as "Sales Agent Name"
from Employee e, Customer c, Invoice i
where c.CustomerId = i.CustomerId and e.EmployeeId = c.SupportRepId;