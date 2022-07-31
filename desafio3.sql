SELECT 
  DISTINCT user.usuario  AS usuario,

  COUNT(hR.usuario_id) AS qtde_musicas_ouvidas,

  ROUND(SUM(DISTINCT mus.duracao_segundos)/60, 2)  AS total_minutos

FROM SpotifyClone.usuario AS user

INNER JOIN SpotifyClone.historico_reproducao AS hR
  ON user.usuario_id = hR.usuario_id

INNER JOIN SpotifyClone.musica AS mus
  ON hR.musica_id = mus.musica_id

GROUP BY
  usuario