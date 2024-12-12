INSERT INTO Usuario(usuario_id, nome, país, data_de_registro) VALUES
(1, 'João Silva', 'Brasil', '2022-05-01'),
(2, 'Maria Oliveira', 'Portugal', '2022-06-15'),
(3, 'Liam Johnson', 'EUA', '2023-01-20'),
(4, 'Sophia Brown', 'Reino Unido', '2023-02-10'),
(5, 'Hiroshi Tanaka', 'Japão', '2023-03-05');


INSERT INTO Artistas (artista_id, nome, país) VALUES
(1, 'Coldplay', 'Reino Unido'),
(2, 'Anitta', 'Brasil'),
(3, 'BTS', 'Coreia do Sul'),
(4, 'Adele', 'Reino Unido'),
(5, 'Drake', 'Canadá');


INSERT INTO Músicas (musica_id, nome, gênero, duração, artista_id) VALUES
(1, 'Yellow', 'Rock', '00:04:26', 1),
(2, 'Girl from Rio', 'Pop', '00:03:31', 2),
(3, 'Dynamite', 'K-Pop', '00:03:19', 3),
(4, 'Hello', 'Soul', '00:04:55', 4),
(5, 'God\s Plan', 'Rap', '00:03:18', 5),
(6, 'Fix You', 'Rock', '00:04:56', 1),
(7, 'Bang!', 'Pop', '00:02:54', 2);


INSERT INTO Playlists (playlist_id, nome, usuario_id) VALUES
(1, 'Relaxando', 1),
(2, 'Treino', 2),
(3, 'Favoritas', 3),
(4, 'Hits de 2023', 4),
(5, 'Pop Internacional', 5);


INSERT INTO reproducoes (reproducao_id, usuario_id, musica_id) VALUES
(1, 1, 1),
(2, 1, 6),
(3, 2, 2),
(4, 3, 3),
(5, 4, 4),
(6, 5, 5),
(7, 5, 7),
(8, 3, 1);






