SELECT p.Name PlayListName
	,Count(pt.TrackId) NumOfTracks
FROM Playlist p
	JOIN PlaylistTrack pt on pt.PlaylistId = p.PlaylistId
		JOIN Track t on t.TrackId = pt.TrackId
GROUP BY p.Name;