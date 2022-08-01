SELECT 
	comp.artista AS artista,
  -- compositor
  alb.album_name AS album

FROM SpotifyClone.artista AS comp

INNER JOIN SpotifyClone.album AS alb
    ON comp.artista_id = alb.artista_id

WHERE comp.artista = "Walter Phoenix"

GROUP BY artista, album

ORDER BY alb.album_name