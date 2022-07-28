SELECT 
  COUNT(DISTINCT SpotifyClone.musica.musica_id)  AS cancoes, 
  COUNT(DISTINCT SpotifyClone.artista.artista_id) AS artistas, 
  COUNT(DISTINCT SpotifyClone.album.album_id) AS albuns
FROM 
  SpotifyClone.musica, 
  SpotifyClone.artista, 
  SpotifyClone.album; 