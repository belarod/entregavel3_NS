CREATE TABLE jogador(
    id_jogador INTEGER PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR(30),
    data DATE,
    uf VARCHAR(2),
    id_equipe VARCHAR(30) REFERENCES equipe(nome)
);

CREATE TABLE equipe(
    nome VARCHAR(30) PRIMARY KEY
);

CREATE TABLE partida(
    id_partida INTEGER PRIMARY KEY AUTOINCREMENT,
    turno VARCHAR(1)
);

CREATE TABLE participa(
    id_equipe VARCHAR(30) REFERENCES equipe(nome),
    id_partida INT REFERENCES participa(id_partida),
    data DATE,
    local VARCHAR(20),
    PRIMARY KEY (id_equipe, id_partida)
);

CREATE TABLE joga(
    id_joga INTEGER PRIMARY KEY AUTOINCREMENT,
    id_jogador INT REFERENCES jogador(id_jogador),
    id_partida INT REFERENCES partida(id_partida),
    gol INT,
    PRIMARY KEY (id_partida,id_jogador, id_joga)
);

CREATE TABLE cartao(
    id_cartao INTEGER PRIMARY KEY AUTOINCREMENT,
    id_joga INT REFERENCES joga(id_joga),
    cor VARCHAR(8)
);

-- Inserir 15 linhas na tabela 'equipe'
INSERT INTO equipe (nome) VALUES ('Flamengo');
INSERT INTO equipe (nome) VALUES ('Palmeiras');
INSERT INTO equipe (nome) VALUES ('São Paulo');
INSERT INTO equipe (nome) VALUES ('Santos');
INSERT INTO equipe (nome) VALUES ('Corinthians');
INSERT INTO equipe (nome) VALUES ('Grêmio');
INSERT INTO equipe (nome) VALUES ('Internacional');
INSERT INTO equipe (nome) VALUES ('Cruzeiro');
INSERT INTO equipe (nome) VALUES ('Atlético Mineiro');
INSERT INTO equipe (nome) VALUES ('Botafogo');
INSERT INTO equipe (nome) VALUES ('Vasco');
INSERT INTO equipe (nome) VALUES ('Fluminense');
INSERT INTO equipe (nome) VALUES ('Bahia');
INSERT INTO equipe (nome) VALUES ('Sport');
INSERT INTO equipe (nome) VALUES ('Fortaleza');

-- Inserir 15 linhas na tabela 'cartao'
INSERT INTO cartao (cor, id_joga) VALUES ('Amarelo', 1);
INSERT INTO cartao (cor, id_joga) VALUES ('Vermelho', 2);
INSERT INTO cartao (cor, id_joga) VALUES ('Amarelo', 3);
INSERT INTO cartao (cor, id_joga) VALUES ('Vermelho', 4);
INSERT INTO cartao (cor, id_joga) VALUES ('Amarelo', 5);
INSERT INTO cartao (cor, id_joga) VALUES ('Vermelho', 6);
INSERT INTO cartao (cor, id_joga) VALUES ('Amarelo', 7);
INSERT INTO cartao (cor, id_joga) VALUES ('Vermelho', 8);
INSERT INTO cartao (cor, id_joga) VALUES ('Amarelo', 9);
INSERT INTO cartao (cor, id_joga) VALUES ('Vermelho', 10);
INSERT INTO cartao (cor, id_joga) VALUES ('Amarelo', 11);
INSERT INTO cartao (cor, id_joga) VALUES ('Vermelho', 12);
INSERT INTO cartao (cor, id_joga) VALUES ('Amarelo', 13);
INSERT INTO cartao (cor, id_joga) VALUES ('Vermelho', 14);
INSERT INTO cartao (cor, id_joga) VALUES ('Amarelo', 15);


-- Inserir 15 linhas na tabela 'partida'
INSERT INTO partida (turno) VALUES ('T');
INSERT INTO partida (turno) VALUES ('R');
INSERT INTO partida (turno) VALUES ('T');
INSERT INTO partida (turno) VALUES ('R');
INSERT INTO partida (turno) VALUES ('T');
INSERT INTO partida (turno) VALUES ('R');
INSERT INTO partida (turno) VALUES ('T');
INSERT INTO partida (turno) VALUES ('R');
INSERT INTO partida (turno) VALUES ('T');
INSERT INTO partida (turno) VALUES ('R');
INSERT INTO partida (turno) VALUES ('T');
INSERT INTO partida (turno) VALUES ('R');
INSERT INTO partida (turno) VALUES ('T');
INSERT INTO partida (turno) VALUES ('R');
INSERT INTO partida (turno) VALUES ('T');

-- Inserir 10 linhas na tabela 'joga'
INSERT INTO joga (id_jogador, id_partida, gol) VALUES (1, 1, 2);
INSERT INTO joga (id_jogador, id_partida, gol) VALUES (2, 1, 1);
INSERT INTO joga (id_jogador, id_partida, gol) VALUES (3, 2, 0);
INSERT INTO joga (id_jogador, id_partida, gol) VALUES (4, 2, 1);
INSERT INTO joga (id_jogador, id_partida, gol) VALUES (5, 3, 3);
INSERT INTO joga (id_jogador, id_partida, gol) VALUES (6, 3, 2);
INSERT INTO joga (id_jogador, id_partida, gol) VALUES (7, 4, 1);
INSERT INTO joga (id_jogador, id_partida, gol) VALUES (8, 4, 0);
INSERT INTO joga (id_jogador, id_partida, gol) VALUES (9, 5, 2);
INSERT INTO joga (id_jogador, id_partida, gol) VALUES (10, 5, 1);

-- Inserir 10 linhas na tabela 'participa'
INSERT INTO participa (id_equipe, id_partida, data, local) VALUES ('Flamengo', 1, '2025-01-15', 'Maracanã');
INSERT INTO participa (id_equipe, id_partida, data, local) VALUES ('Palmeiras', 1, '2025-01-15', 'Maracanã');
INSERT INTO participa (id_equipe, id_partida, data, local) VALUES ('São Paulo', 2, '2025-01-22', 'Morumbi');
INSERT INTO participa (id_equipe, id_partida, data, local) VALUES ('Santos', 2, '2025-01-22', 'Morumbi');
INSERT INTO participa (id_equipe, id_partida, data, local) VALUES ('Corinthians', 3, '2025-02-05', 'Arena Corinthians');
INSERT INTO participa (id_equipe, id_partida, data, local) VALUES ('Grêmio', 3, '2025-02-05', 'Arena do Grêmio');
INSERT INTO participa (id_equipe, id_partida, data, local) VALUES ('Internacional', 4, '2025-02-12', 'Beira-Rio');
INSERT INTO participa (id_equipe, id_partida, data, local) VALUES ('Cruzeiro', 4, '2025-02-12', 'Mineirão');
INSERT INTO participa (id_equipe, id_partida, data, local) VALUES ('Atlético Mineiro', 5, '2025-02-19', 'Independência');
INSERT INTO participa (id_equipe, id_partida, data, local) VALUES ('Botafogo', 5, '2025-02-19', 'Engenhão');

-- Inserir 30 linhas na tabela 'jogador'
INSERT INTO jogador (nome, data, uf, id_equipe) VALUES ('Carlos Silva', '2020-01-15', 'SP', 'Palmeiras');
INSERT INTO jogador (nome, data, uf, id_equipe) VALUES ('Bruno Santos', '2020-03-22', 'RJ', 'Flamengo');
INSERT INTO jogador (nome, data, uf, id_equipe) VALUES ('Lucas Oliveira', '2020-06-10', 'MG', 'Atlético Mineiro');
INSERT INTO jogador (nome, data, uf, id_equipe) VALUES ('Pedro Lima', '2020-08-25', 'RS', 'Grêmio');
INSERT INTO jogador (nome, data, uf, id_equipe) VALUES ('Felipe Costa', '2020-11-02', 'SP', 'São Paulo');
INSERT INTO jogador (nome, data, uf, id_equipe) VALUES ('Gabriel Almeida', '2021-01-20', 'RJ', 'Fluminense');
INSERT INTO jogador (nome, data, uf, id_equipe) VALUES ('Ricardo Souza', '2021-04-14', 'MG', 'Cruzeiro');
INSERT INTO jogador (nome, data, uf, id_equipe) VALUES ('Marcos Pereira', '2021-07-18', 'RS', 'Internacional');
INSERT INTO jogador (nome, data, uf, id_equipe) VALUES ('João Rodrigues', '2021-09-29', 'SP', 'Corinthians');
INSERT INTO jogador (nome, data, uf, id_equipe) VALUES ('Thiago Martins', '2021-12-01', 'RJ', 'Botafogo');
INSERT INTO jogador (nome, data, uf, id_equipe) VALUES ('André Silva', '2022-02-15', 'MG', 'América Mineiro');
INSERT INTO jogador (nome, data, uf, id_equipe) VALUES ('Daniel Pereira', '2022-05-10', 'RS', 'Sport Club São José');
INSERT INTO jogador (nome, data, uf, id_equipe) VALUES ('Eduardo Costa', '2022-08-20', 'SP', 'São Bento');
INSERT INTO jogador (nome, data, uf, id_equipe) VALUES ('Felipe Almeida', '2022-11-12', 'RJ', 'Vasco da Gama');
INSERT INTO jogador (nome, data, uf, id_equipe) VALUES ('Rafael Fernandes', '2023-01-05', 'MG', 'Tombense');
INSERT INTO jogador (nome, data, uf, id_equipe) VALUES ('Leonardo Lima', '2023-03-15', 'RS', 'Esportivo');
INSERT INTO jogador (nome, data, uf, id_equipe) VALUES ('Roberto Souza', '2023-06-01', 'SP', 'Red Bull Bragantino');
INSERT INTO jogador (nome, data, uf, id_equipe) VALUES ('Matheus Oliveira', '2023-08-25', 'RJ', 'Resende');
INSERT INTO jogador (nome, data, uf, id_equipe) VALUES ('Gustavo Santos', '2023-11-15', 'MG', 'Villa Nova');
INSERT INTO jogador (nome, data, uf, id_equipe) VALUES ('Ricardo Almeida', '2024-01-10', 'RS', 'Caxias');
INSERT INTO jogador (nome, data, uf, id_equipe) VALUES ('Bruno Costa', '2024-03-30', 'SP', 'Ituano');
INSERT INTO jogador (nome, data, uf, id_equipe) VALUES ('Lucas Lima', '2024-06-20', 'RJ', 'Madureira');
INSERT INTO jogador (nome, data, uf, id_equipe) VALUES ('Victor Santos', '2024-09-15', 'MG', 'Uberlândia');
INSERT INTO jogador (nome, data, uf, id_equipe) VALUES ('Guilherme Pereira', '2024-11-05', 'RS', 'São Paulo-RS');
INSERT INTO jogador (nome, data, uf, id_equipe) VALUES ('Renan Oliveira', '2024-01-25', 'SP', 'Guarani');
INSERT INTO jogador (nome, data, uf, id_equipe) VALUES ('Júlio Costa', '2024-04-10', 'RJ', 'Barra Mansa');
INSERT INTO jogador (nome, data, uf, id_equipe) VALUES ('Diego Souza', '2024-07-15', 'MG', 'Boa Esporte');
INSERT INTO jogador (nome, data, uf, id_equipe) VALUES ('Samuel Lima', '2024-10-01', 'RS', 'Avenida');
INSERT INTO jogador (nome, data, uf, id_equipe) VALUES ('Pedro Rodrigues', '2024-12-20', 'SP', 'Paulista');
INSERT INTO jogador (nome, data, uf, id_equipe) VALUES ('Rafael Silva', '2024-02-05', 'RJ', 'Nova Iguaçu');
INSERT INTO jogador (nome, data, uf, id_equipe) VALUES ('Gabriel Costa', '2024-05-30', 'MG', 'Patrocinense');
INSERT INTO jogador (nome, data, uf, id_equipe) VALUES ('André Lima', '2024-08-10', 'RS', 'Ypiranga');

SELECT * FROM equipe;
SELECT * FROM jogador;
SELECT * FROM partida;
SELECT * FROM participa;
SELECT * FROM joga;
SELECT * FROM cartao;