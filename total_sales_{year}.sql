SELECT strftime('%Y',i.InvoiceDate) 'Year'
	,Sum(Total) 'Total Sales'
FROM Invoice i
WHERE strftime('%Y',i.InvoiceDate) in ('2009', '2011')
GROUP BY strftime('%Y',i.InvoiceDate);
