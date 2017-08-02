/*unique_invoice_countries.sql: Provide a query showing a unique/distinct list of billing
countries from the Invoice table.*/
select InvoiceId, InvoiceDate, BillingCountry
from Invoice
order by BillingCountry;