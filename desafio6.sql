SELECT 
	MIN(plano.valor) AS faturamento_minimo,
  MAX(plano.valor) AS faturamento_maximo,
  ROUND(AVG(plano.valor), 2) AS faturamento_medio,
  SUM(plano.valor) AS faturamento_total

FROM SpotifyClone.plano AS plano

INNER JOIN SpotifyClone.usuario AS user
    ON user.plano_id = plano.plano_id