-- Listar todas as m�sicas de um artista espec�fico
SELECT nome AS Musica, g�nero, dura��o 
FROM M�sicas
WHERE artista_id = 1;


-- Exibir todas as playlists e os respectivos usu�rios
SELECT p.nome AS Playlist, u.nome AS Usuario
FROM Playlists p
JOIN Usuario u ON p.usuario_id = u.usuario_id;


-- Listar as m�sicas mais reproduzidas e seus artistas
SELECT m.nome AS Musica, a.nome AS Artista, COUNT(r.musica_id) AS Reproducoes
FROM reproducoes r
JOIN M�sicas m ON r.musica_id = m.musica_id
JOIN Artistas a ON m.artista_id = a.artista_id
GROUP BY m.nome, a.nome
ORDER BY Reproducoes DESC;


-- Mostrar o n�mero de playlists criadas por cada usu�rio
SELECT u.nome AS Usuario, COUNT(p.playlist_id) AS Playlists
FROM Usuario u
LEFT JOIN Playlists p ON u.usuario_id = p.usuario_id
GROUP BY u.nome
ORDER BY Playlists DESC;


-- Identificar o g�nero musical mais popular com base no n�mero de reprodu��es
SELECT m.g�nero, COUNT(r.musica_id) AS Total_Reproducoes
FROM reproducoes r
JOIN M�sicas m ON r.musica_id = m.musica_id
GROUP BY m.g�nero
ORDER BY Total_Reproducoes DESC;


-- Listar os usu�rios mais ativos com base no n�mero de reprodu��es
SELECT u.nome AS Usuario, COUNT(r.reproducao_id) AS Total_Reproducoes
FROM Usuario u
JOIN reproducoes r ON u.usuario_id = r.usuario_id
GROUP BY u.nome
ORDER BY Total_Reproducoes DESC;


-- Listar a �ltima m�sica ouvida por cada usu�rio
SELECT u.nome AS Usuario, m.nome AS Ultima_Musica, MAX(r.timestamp) AS Ultima_Reproducao
FROM Usuario u
JOIN reproducoes r ON u.usuario_id = r.usuario_id
JOIN M�sicas m ON r.musica_id = m.musica_id
GROUP BY u.nome, m.nome
ORDER BY Ultima_Reproducao DESC;


-- Identificar a playlist com maior diversidade de artistas
SELECT p.nome AS Playlist, COUNT(DISTINCT m.artista_id) AS Artistas_Diferentes
FROM Playlists p
JOIN M�sicas m ON p.playlist_id = m.musica_id
GROUP BY p.nome
ORDER BY Artistas_Diferentes DESC;


-- Relat�rio de reprodu��es agrupado por pa�s
SELECT u.pa�s, COUNT(r.reproducao_id) AS Total_Reproducoes
FROM Usuario u
JOIN reproducoes r ON u.usuario_id = r.usuario_id
GROUP BY u.pa�s
ORDER BY Total_Reproducoes DESC;


-- Determinar o pa�s com o maior n�mero de usu�rios
SELECT pa�s, COUNT(usuario_id) AS Total_Usuarios
FROM Usuario
GROUP BY pa�s
ORDER BY Total_Usuarios DESC;


-- Qual m�sica foi ouvida por mais usu�rios �nicos
SELECT m.nome AS Musica, COUNT(DISTINCT r.usuario_id) AS Usuarios_Unicos
FROM M�sicas m
JOIN reproducoes r ON m.musica_id = r.musica_id
GROUP BY m.nome
ORDER BY Usuarios_Unicos DESC;






