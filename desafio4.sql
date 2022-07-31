SELECT 
  
  DISTINCT user.usuario AS usuario,
  IF( MAX(YEAR(hR.data_hora_reproducao)) = 2021, "Usuário ativo", "Usuário inativo") AS condicao_usuario

FROM SpotifyClone.usuario AS user

INNER JOIN SpotifyClone.historico_reproducao AS hR
  ON user.usuario_id = hR.usuario_id

GROUP BY
  usuario