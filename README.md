# 🎵 SQL Music Streaming Analytics  
**Análise de Dados de uma Plataforma de Streaming Musical - Projeto em SQL**  

Bem-vindo ao **SQL Music Streaming Analytics**, um projeto que simula o banco de dados de uma plataforma de streaming musical. Este repositório foi criado para demonstrar habilidades em modelagem de banco de dados, geração de dados fictícios e consultas SQL voltadas para a análise de dados.

---

## 📋 Objetivo do Projeto  

O objetivo é criar um banco de dados relacional que represente um sistema de streaming musical e realizar análises com base em consultas SQL. Este projeto ajuda a explorar conceitos como:  
- Modelagem de tabelas e relacionamentos.
- Uso de chaves primárias e estrangeiras.
- Inserção de dados fictícios.
- Criação de consultas para responder perguntas de negócio.

---

## 🛠️ Estrutura do Banco de Dados  

O banco de dados é composto pelas seguintes tabelas:  

1. **Usuários**  
   Contém informações sobre os usuários do sistema.  
   - Colunas: `usuario_id`, `nome`, `email`, `país`, `data_de_nascimento`.  

2. **Artistas**  
   Contém informações sobre os artistas cujas músicas estão disponíveis no sistema.  
   - Colunas: `artista_id`, `nome`.  

3. **Músicas**  
   Contém informações sobre as músicas cadastradas no sistema.  
   - Colunas: `musica_id`, `nome`, `gênero`, `duração`, `artista_id`.  

4. **Playlists**  
   Contém informações sobre as playlists criadas pelos usuários.  
   - Colunas: `playlist_id`, `nome`, `usuario_id`.  

5. **Reproduções**  
   Contém dados de reprodução de músicas por usuários.  
   - Colunas: `reproducao_id`, `usuario_id`, `musica_id`, `timestamp`.  

---

## 💾 Como Usar  

1. **Clone o repositório:**  
   ```bash
   git clone https://github.com/seu-usuario/sql-music-streaming-analytics.git
   cd sql-music-streaming-analytics
2. **Configure o Banco de Dados**
   Execute os scripts de criação de tabelas em seu SQL Server ou ferramenta de banco de dados favorita.
    Insira os dados fictícios disponíveis no repositório.

3. Execute as Consultas:
   Utilize os scripts SQL fornecidos para realizar análises e explorar os dados.
