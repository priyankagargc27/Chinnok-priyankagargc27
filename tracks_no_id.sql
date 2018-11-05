select a.title as AlbumTitle,m.name as MediaTypeName ,g.name as GenreName,t.name as TrackName from track t
join Album a on a.AlbumId = t.AlbumId
join MediaType m on m.MediaTypeId = t.MediaTypeId
join Genre g on g.GenreId = t.genreId
;