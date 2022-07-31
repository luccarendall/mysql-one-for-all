SELECT COUNT(hR.cancao_id) AS quantidade_musicas_no_historico

FROM SpotifyClone.historico_reproducao AS hR

INNER JOIN SpotifyClone.usuario AS user
  ON hR.usuario_id = user.usuario_id

WHERE user.usuario = "Bill"