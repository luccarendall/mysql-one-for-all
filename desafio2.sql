SELECT 
  COUNT(DISTINCT music.musica_id)  AS cancoes, 
  COUNT(DISTINCT artist.artista_id) AS artistas, 
  COUNT(DISTINCT alb.album_id) AS albuns
FROM
  SpotifyClone.musica AS music, 
  SpotifyClone.artista AS artist, 
  SpotifyClone.album AS alb; 