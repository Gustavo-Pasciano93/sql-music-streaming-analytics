CREATE TABLE Usuario(
usuario_id INT PRIMARY KEY,
nome VARCHAR(100),
pa�s VARCHAR(50),
data_de_registro DATE);

CREATE TABLE Artistas(
artista_id INT PRIMARY KEY,
nome VARCHAR(100),
pa�s VARCHAR(50));

CREATE TABLE M�sicas(
musica_id INT PRIMARY KEY,
nome VARCHAR(100),
g�nero VARCHAR(50),
dura��o TIME,
artista_id INT,
FOREIGN KEY(artista_id) REFERENCES Artistas(artista_id));


CREATE TABLE Playlists(
playlist_id INT PRIMARY KEY,
nome VARCHAR(100),
usuario_id INT,
FOREIGN KEY(usuario_id) REFERENCES Usuario(usuario_id));


CREATE TABLE reproducoes (
    reproducao_id INT PRIMARY KEY,
    usuario_id INT,
    musica_id INT,
    timestamp TIMESTAMP,
    FOREIGN KEY (usuario_id) REFERENCES Usuario(usuario_id),
    FOREIGN KEY (musica_id) REFERENCES M�sicas(musica_id)
);
