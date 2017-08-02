--country_invoices.sql: Provide a query that shows the # of invoices per country.
select count(i.InvoiceId) as "# of Invoices per Country", i.BillingCountry
from Invoice i
group by i.BillingCountry