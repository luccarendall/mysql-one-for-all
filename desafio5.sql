SELECT mus.usuario AS musica,
	COUNT(hR.usuario_id) AS reproducoes

FROM SpotifyClone.musica AS mus

INNER JOIN SpotifyClone.historico_reproducao AS hR
	ON hR.musica_id = mus.musica_id

GROUP BY musica

ORDER BY COUNT(hR.usuario_id) DESC, mus.usuario
LIMIT 2