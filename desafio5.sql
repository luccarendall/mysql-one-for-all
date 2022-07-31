SELECT mus.musica AS cancao,
COUNT(hR.usuario_id) AS reproducoes

FROM SpotifyClone.musica AS mus

INNER JOIN SpotifyClone.historico_reproducao AS hR
	ON hR.musica_id = mus.musica_id

GROUP BY musica

ORDER BY reproducoes DESC, cancao
LIMIT 2