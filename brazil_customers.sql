/* brazil_customers.sql: Provide a query only showing the Customers from Brazil. */
select FirstName, LastName, CustomerId, Country
from Customer
where Country = "Brazil";