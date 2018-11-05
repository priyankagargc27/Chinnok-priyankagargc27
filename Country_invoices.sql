SELECT i.BillingCountry
	,Count(i.InvoiceId) NumberOfInvoices
FROM Invoice i
GROUP BY i.BillingCountry;