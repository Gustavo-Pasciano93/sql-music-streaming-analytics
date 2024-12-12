-- Listar todas as músicas de um artista específico
SELECT nome AS Musica, gênero, duração 
FROM Músicas
WHERE artista_id = 1;


-- Exibir todas as playlists e os respectivos usuários
SELECT p.nome AS Playlist, u.nome AS Usuario
FROM Playlists p
JOIN Usuario u ON p.usuario_id = u.usuario_id;


-- Listar as músicas mais reproduzidas e seus artistas
SELECT m.nome AS Musica, a.nome AS Artista, COUNT(r.musica_id) AS Reproducoes
FROM reproducoes r
JOIN Músicas m ON r.musica_id = m.musica_id
JOIN Artistas a ON m.artista_id = a.artista_id
GROUP BY m.nome, a.nome
ORDER BY Reproducoes DESC;


-- Mostrar o número de playlists criadas por cada usuário
SELECT u.nome AS Usuario, COUNT(p.playlist_id) AS Playlists
FROM Usuario u
LEFT JOIN Playlists p ON u.usuario_id = p.usuario_id
GROUP BY u.nome
ORDER BY Playlists DESC;


-- Identificar o gênero musical mais popular com base no número de reproduções
SELECT m.gênero, COUNT(r.musica_id) AS Total_Reproducoes
FROM reproducoes r
JOIN Músicas m ON r.musica_id = m.musica_id
GROUP BY m.gênero
ORDER BY Total_Reproducoes DESC;


-- Listar os usuários mais ativos com base no número de reproduções
SELECT u.nome AS Usuario, COUNT(r.reproducao_id) AS Total_Reproducoes
FROM Usuario u
JOIN reproducoes r ON u.usuario_id = r.usuario_id
GROUP BY u.nome
ORDER BY Total_Reproducoes DESC;


-- Listar a última música ouvida por cada usuário
SELECT u.nome AS Usuario, m.nome AS Ultima_Musica, MAX(r.timestamp) AS Ultima_Reproducao
FROM Usuario u
JOIN reproducoes r ON u.usuario_id = r.usuario_id
JOIN Músicas m ON r.musica_id = m.musica_id
GROUP BY u.nome, m.nome
ORDER BY Ultima_Reproducao DESC;


-- Identificar a playlist com maior diversidade de artistas
SELECT p.nome AS Playlist, COUNT(DISTINCT m.artista_id) AS Artistas_Diferentes
FROM Playlists p
JOIN Músicas m ON p.playlist_id = m.musica_id
GROUP BY p.nome
ORDER BY Artistas_Diferentes DESC;


-- Relatório de reproduções agrupado por país
SELECT u.país, COUNT(r.reproducao_id) AS Total_Reproducoes
FROM Usuario u
JOIN reproducoes r ON u.usuario_id = r.usuario_id
GROUP BY u.país
ORDER BY Total_Reproducoes DESC;


-- Determinar o país com o maior número de usuários
SELECT país, COUNT(usuario_id) AS Total_Usuarios
FROM Usuario
GROUP BY país
ORDER BY Total_Usuarios DESC;


-- Qual música foi ouvida por mais usuários únicos
SELECT m.nome AS Musica, COUNT(DISTINCT r.usuario_id) AS Usuarios_Unicos
FROM Músicas m
JOIN reproducoes r ON m.musica_id = r.musica_id
GROUP BY m.nome
ORDER BY Usuarios_Unicos DESC;






