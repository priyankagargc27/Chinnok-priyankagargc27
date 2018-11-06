SELECT t.Name,Sum(il.Quantity) as pucrchaseCount
FROM InvoiceLine il
JOIN Invoice i on i.InvoiceId = il.InvoiceId
JOIN Track t on t.TrackId = il.TrackId
WHERE strftime('%Y',i.InvoiceDate) = '2013'
GROUP BY t.TrackId, t.Name
ORDER BY 2 desc
LIMIT 1;