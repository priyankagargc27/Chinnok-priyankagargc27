SELECT i.InvoiceId, COUNT(li.InvoiceLineId) LineItems
FROM Invoice i
JOIN InvoiceLine li ON li.InvoiceId = i.InvoiceId
GROUP BY i.InvoiceId
;