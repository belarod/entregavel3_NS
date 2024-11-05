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
    id_partida INT REFERENCES partida(id_partida),
    data DATE,
    local VARCHAR(20),
    PRIMARY KEY (id_equipe, id_partida)
);

CREATE TABLE joga(
    id_joga INTEGER PRIMARY KEY AUTOINCREMENT,
    id_jogador INT REFERENCES jogador(id_jogador),
    id_partida INT REFERENCES partida(id_partida),
    gol INT
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



--insira 4 equipes
INSERT INTO equipe (nome)
VALUES
    ('Equipe A'),
    ('Equipe B'),
    ('Equipe C'),
    ('Equipe D');

--cadastre 48 jogadores, com nome e data de nascimento apenas
INSERT INTO jogador (nome, data)
VALUES
    ('Jogador 1', '1990-01-01'),
    ('Jogador 2', '1991-02-01'),
    ('Jogador 3', '1992-03-01'),
    ('Jogador 4', '1993-04-01'),
    ('Jogador 5', '1994-05-01'),
    ('Jogador 6', '1995-06-01'),
    ('Jogador 7', '1996-07-01'),
    ('Jogador 8', '1997-08-01'),
    ('Jogador 9', '1998-09-01'),
    ('Jogador 10', '1999-10-01'),
    ('Jogador 11', '2000-11-01'),
    ('Jogador 12', '1990-12-01'),
    ('Jogador 13', '1991-01-01'),
    ('Jogador 14', '1992-02-01'),
    ('Jogador 15', '1993-03-01'),
    ('Jogador 16', '1994-04-01'),
    ('Jogador 17', '1995-05-01'),
    ('Jogador 18', '1996-06-01'),
    ('Jogador 19', '1997-07-01'),
    ('Jogador 20', '1998-08-01'),
    ('Jogador 21', '1999-09-01'),
    ('Jogador 22', '2000-10-01'),
    ('Jogador 23', '1990-11-01'),
    ('Jogador 24', '1991-12-01'),
    ('Jogador 25', '1992-01-01'),
    ('Jogador 26', '1993-02-01'),
    ('Jogador 27', '1994-03-01'),
    ('Jogador 28', '1995-04-01'),
    ('Jogador 29', '1996-05-01'),
    ('Jogador 30', '1997-06-01'),
    ('Jogador 31', '1998-07-01'),
    ('Jogador 32', '1999-08-01'),
    ('Jogador 33', '2000-09-01'),
    ('Jogador 34', '1990-10-01'),
    ('Jogador 35', '1991-11-01'),
    ('Jogador 36', '1992-12-01'),
    ('Jogador 37', '1993-01-01'),
    ('Jogador 38', '1994-02-01'),
    ('Jogador 39', '1995-03-01'),
    ('Jogador 40', '1996-04-01'),
    ('Jogador 41', '1997-05-01'),
    ('Jogador 42', '1998-06-01'),
    ('Jogador 43', '1999-07-01'),
    ('Jogador 44', '2000-08-01'),
    ('Jogador 45', '1990-09-01'),
    ('Jogador 46', '1991-10-01'),
    ('Jogador 47', '1992-11-01'),
    ('Jogador 48', '1993-12-01');

--desses 48 Vincule 12 jogadores para cada equipe
UPDATE jogador SET id_equipe = 'Equipe A' WHERE id_jogador BETWEEN 1 AND 12;
UPDATE jogador SET id_equipe = 'Equipe B' WHERE id_jogador BETWEEN 13 AND 24;
UPDATE jogador SET id_equipe = 'Equipe C' WHERE id_jogador BETWEEN 25 AND 36;
UPDATE jogador SET id_equipe = 'Equipe D' WHERE id_jogador BETWEEN 37 AND 48;

--cria as partidas de ida e volta entre todas as equipes
INSERT INTO partida (turno)
SELECT 'I'
FROM equipe e1
CROSS JOIN equipe e2
WHERE e1.nome <> e2.nome;

INSERT INTO partida (turno)
SELECT 'V'
FROM equipe e1
CROSS JOIN equipe e2
WHERE e1.nome <> e2.nome;

WITH partida_ids AS (
    SELECT id_partida, ROW_NUMBER() OVER (ORDER BY id_partida) AS rn FROM partida WHERE turno = 'I'
)

INSERT INTO participa (id_equipe, id_partida, data, local)
SELECT e1.nome, p.id_partida, '2024-01-01', 'Estadio A'
FROM partida_ids p
JOIN equipe e1 ON p.rn = (SELECT COUNT(*) FROM equipe e2 WHERE e1.nome <> e2.nome);

WITH partida_ids_volta AS (
    SELECT id_partida, ROW_NUMBER() OVER (ORDER BY id_partida) AS rn FROM partida WHERE turno = 'V'
)

INSERT INTO participa (id_equipe, id_partida, data, local)
SELECT e2.nome, p.id_partida, '2024-02-01', 'Estadio B'
FROM partida_ids_volta p
JOIN equipe e2 ON p.rn = (SELECT COUNT(*) FROM equipe e1 WHERE e1.nome <> e2.nome);

--para cada partida, relacione os 22 jogadores titulares (11 p cada equipe
WITH partidas AS (
    SELECT p.id_partida, p.id_equipe AS mandante, e2.nome AS visitante
    FROM participa p
    JOIN equipe e1 ON p.id_equipe = e1.nome
    JOIN participa p2 ON p.id_partida = p2.id_partida
    JOIN equipe e2 ON p2.id_equipe = e2.nome
    WHERE e1.nome <> e2.nome
),
titulares AS (
    SELECT j.id_jogador, j.id_equipe,
           ROW_NUMBER() OVER (PARTITION BY j.id_equipe ORDER BY j.id_jogador) AS rn
    FROM jogador j
)
INSERT INTO joga (id_jogador, id_partida, gol)
SELECT t.id_jogador, p.id_partida, 0
FROM partidas p
JOIN titulares t ON p.mandante = t.id_equipe OR p.visitante = t.id_equipe
WHERE t.rn <= 11;

--distribua p os jogadores aleatoriamente 6 cartoes amarelos em 3 partidas (escolha 1 jogador em outra partida para receber cartao vermelho
-- Distribuição de 6 cartões amarelos em 3 partidas e 1 cartão vermelho em uma partida diferente
WITH partidas_amarelas AS (
    SELECT id_partida
    FROM partida
    ORDER BY RANDOM()
    LIMIT 3
),
jogadores_amarelos AS (
    SELECT j.id_jogador, jg.id_joga, p.id_partida
    FROM jogador j
    JOIN equipe e ON j.id_equipe = e.nome
    JOIN participa p ON e.nome = p.id_equipe
    JOIN joga jg ON j.id_jogador = jg.id_jogador
    WHERE p.id_partida IN (SELECT id_partida FROM partidas_amarelas)
),
cartoes_amarelos AS (
    SELECT id_jogador, id_partida, id_joga
    FROM jogadores_amarelos
    ORDER BY RANDOM()
)
INSERT INTO cartao (id_joga, cor)
SELECT id_joga, 'Amarelo'
FROM cartoes_amarelos
LIMIT 6;

WITH partida_vermelho AS (
    SELECT id_partida
    FROM partida
    ORDER BY RANDOM()
    LIMIT 1
),
jogadores_vermelho AS (
    SELECT j.id_jogador, jg.id_joga
    FROM jogador j
    JOIN equipe e ON j.id_equipe = e.nome
    JOIN participa p ON e.nome = p.id_equipe
    JOIN joga jg ON j.id_jogador = jg.id_jogador
    WHERE p.id_partida IN (SELECT id_partida FROM partida_vermelho)
)
INSERT INTO cartao (id_joga, cor)
SELECT jg.id_joga, 'Vermelho'
FROM joga jg
JOIN jogadores_vermelho jv ON jg.id_jogador = jv.id_jogador
ORDER BY RANDOM()
LIMIT 1;

--as partidas que nenhum jogador recebeu cartao, acabaram todas em 2 a 0 para visitante. adiciona 1 gol apra um dos dois jogadores aleatorios da equipe visitante em cada partida
WITH partidas_sem_cartao AS (
    SELECT p.id_partida
    FROM partida p
    LEFT JOIN joga j ON p.id_partida = j.id_partida
    LEFT JOIN cartao c ON j.id_joga = c.id_joga
    WHERE c.id_cartao IS NULL
    GROUP BY p.id_partida
),
equipes_partida AS (
    SELECT pa.id_partida, pa.id_equipe, ROW_NUMBER() OVER (PARTITION BY pa.id_partida ORDER BY RANDOM()) AS rn
    FROM participa pa
    WHERE pa.id_partida IN (SELECT id_partida FROM partidas_sem_cartao)
)

, equipes_visitantes AS (
    SELECT ep.id_partida, ep.id_equipe
    FROM equipes_partida ep
    WHERE ep.rn = 2
)
UPDATE joga
SET gol = gol + 1
WHERE id_joga = (
    SELECT id_joga
    FROM joga
    WHERE id_partida IN (SELECT id_partida FROM partidas_sem_cartao)
    AND id_jogador IN (
        SELECT j.id_jogador
        FROM jogador j
        JOIN equipes_visitantes ev ON ev.id_equipe = j.id_equipe
        WHERE j.id_equipe = ev.id_equipe
        ORDER BY RANDOM()
        LIMIT 1
    )
);

--dentre as partidas com algum cartao, todas terminaram em empate 1x1. distribua um gol para um jogador aleatorio de cada equipe
WITH partidas_com_cartao AS (
    SELECT DISTINCT p.id_partida
    FROM partida p
    JOIN joga j ON p.id_partida = j.id_partida
    JOIN cartao c ON j.id_joga = c.id_joga
    WHERE p.id_partida IN (
        SELECT id_partida
        FROM joga
        GROUP BY id_partida
        HAVING SUM(gol) = 1 -- Considera partidas que terminaram 1x1
    )
),
jogadores_aleatorios AS (
    SELECT j.id_jogador, e.nome AS nome_equipe, p.id_partida
    FROM jogador j
    JOIN equipe e ON j.id_equipe = e.nome
    JOIN participa p ON e.nome = p.id_equipe
    WHERE p.id_partida IN (SELECT id_partida FROM partidas_com_cartao)
)
INSERT INTO joga (id_jogador, id_partida, gol)
SELECT id_jogador, id_partida, 1
FROM (
    SELECT id_jogador, id_partida,
           ROW_NUMBER() OVER (PARTITION BY nome_equipe ORDER BY RANDOM()) AS rn
    FROM jogadores_aleatorios
) AS subquery
WHERE rn = 1;
