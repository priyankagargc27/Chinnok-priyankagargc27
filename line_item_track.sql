SELECT il.*
	,t.Name as TrackName
FROM InvoiceLine il
JOIN Track t on t.TrackId = il.TrackId;
