SELECT il.*, a.name as ArtistName 
	,t.Name as TrackName
FROM InvoiceLine il
JOIN Track t on t.TrackId = il.TrackId
join Album al on al.ArtistId = t.AlbumId
JOIN Artist a on a.ArtistId = al.ArtistId;