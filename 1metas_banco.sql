CREATE TABLE funcionario(
    id_funcionario INTEGER PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR(30),
    id_meta INT CHECK ( id_meta>0 ),
    FOREIGN KEY (id_meta) REFERENCES meta(id_meta)
);

CREATE TABLE gestor(
    id_gestor INTEGER PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR(30)
);

CREATE TABLE venda (
    id_venda INTEGER PRIMARY KEY AUTOINCREMENT,
    tipo VARCHAR(20),
    quantidade INT CHECK (quantidade > 0),
    id_funcionario INT,
    id_categoria INT,
    data DATE,
    FOREIGN KEY (id_funcionario) REFERENCES funcionario(id_funcionario),
    FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria)
);

CREATE TABLE meta (
    id_meta INTEGER PRIMARY KEY AUTOINCREMENT,
    quantidade INT,
    id_funcionario INT,
    id_categoria INT,
    data DATE,
    FOREIGN KEY (id_funcionario) REFERENCES funcionario(id_funcionario),
    FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria) -- relação com categoria
);

CREATE TABLE avalia(
    id_meta INT,
    id_gestor INT,
    data DATE,
    nota_final INT,
    PRIMARY KEY (id_meta),
    FOREIGN KEY (id_meta) REFERENCES meta(id_meta),
    FOREIGN KEY (id_gestor) REFERENCES gestor(id_gestor)
);

CREATE TABLE categoria (
    id_categoria INTEGER PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR(30) NOT NULL UNIQUE
);

-- Insert de 15 linhas na tababela 'funcionario'
INSERT INTO funcionario (nome, id_meta) VALUES ('João Silva', 1);
INSERT INTO funcionario (nome, id_meta) VALUES ('Maria Oliveira', 2);
INSERT INTO funcionario (nome, id_meta) VALUES ('Carlos Santos', 3);
INSERT INTO funcionario (nome, id_meta) VALUES ('Ana Pereira', 4);
INSERT INTO funcionario (nome, id_meta) VALUES ('Pedro Costa', 5);
INSERT INTO funcionario (nome, id_meta) VALUES ('Fernanda Lima', 6);
INSERT INTO funcionario (nome, id_meta) VALUES ('Bruno Rocha', 7);
INSERT INTO funcionario (nome, id_meta) VALUES ('Paula Ferreira', 8);
INSERT INTO funcionario (nome, id_meta) VALUES ('Marcos Souza', 9);
INSERT INTO funcionario (nome, id_meta) VALUES ('Julia Alves', 10);
INSERT INTO funcionario (nome, id_meta) VALUES ('Rafael Monteiro', 11);
INSERT INTO funcionario (nome, id_meta) VALUES ('Clara Batista', 12);
INSERT INTO funcionario (nome, id_meta) VALUES ('Luiz Mendes', 13);
INSERT INTO funcionario (nome, id_meta) VALUES ('Camila Borges', 14);
INSERT INTO funcionario (nome, id_meta) VALUES ('Felipe Andrade', 15);


-- Insert de 15 linhas na tabela 'gestor'
INSERT INTO gestor (nome) VALUES ('Lucas Martins');
INSERT INTO gestor (nome) VALUES ('Fernanda Carvalho');
INSERT INTO gestor (nome) VALUES ('Thiago Almeida');
INSERT INTO gestor (nome) VALUES ('Carla Fernandes');
INSERT INTO gestor (nome) VALUES ('Bruno Teixeira');
INSERT INTO gestor (nome) VALUES ('Paula Souza');
INSERT INTO gestor (nome) VALUES ('Rodrigo Oliveira');
INSERT INTO gestor (nome) VALUES ('Juliana Mendes');
INSERT INTO gestor (nome) VALUES ('Marcelo Costa');
INSERT INTO gestor (nome) VALUES ('Patricia Lima');
INSERT INTO gestor (nome) VALUES ('Eduardo Campos');
INSERT INTO gestor (nome) VALUES ('Renata Alves');
INSERT INTO gestor (nome) VALUES ('Mariana Pereira');
INSERT INTO gestor (nome) VALUES ('Felipe Moreira');
INSERT INTO gestor (nome) VALUES ('Vanessa Santos');

-- Insert de 10 linhas na tabela 'venda'

INSERT INTO venda (tipo, quantidade, id_funcionario) VALUES ('Seguro', 50, 1);
INSERT INTO venda (tipo, quantidade, id_funcionario) VALUES ('Conta', 30, 2);
INSERT INTO venda (tipo, quantidade, id_funcionario) VALUES ('Financiamento', 20, 3);
INSERT INTO venda (tipo, quantidade, id_funcionario) VALUES ('Empréstimo', 40, 4);
INSERT INTO venda (tipo, quantidade, id_funcionario) VALUES ('Seguro', 25, 5);
INSERT INTO venda (tipo, quantidade, id_funcionario) VALUES ('Conta', 15, 6);
INSERT INTO venda (tipo, quantidade, id_funcionario) VALUES ('Financiamento', 60, 7);
INSERT INTO venda (tipo, quantidade, id_funcionario) VALUES ('Empréstimo', 35, 8);
INSERT INTO venda (tipo, quantidade, id_funcionario) VALUES ('Seguro', 10, 9);
INSERT INTO venda (tipo, quantidade, id_funcionario) VALUES ('Conta', 45, 10);

-- Insert de 10 linhas na tabela 'avalia'

INSERT INTO avalia (id_meta, id_gestor) VALUES (1, 1);
INSERT INTO avalia (id_meta, id_gestor) VALUES (2, 2);
INSERT INTO avalia (id_meta, id_gestor) VALUES (3, 3);
INSERT INTO avalia (id_meta, id_gestor) VALUES (4, 4);
INSERT INTO avalia (id_meta, id_gestor) VALUES (5, 5);
INSERT INTO avalia (id_meta, id_gestor) VALUES (6, 6);
INSERT INTO avalia (id_meta, id_gestor) VALUES (7, 7);
INSERT INTO avalia (id_meta, id_gestor) VALUES (8, 8);
INSERT INTO avalia (id_meta, id_gestor) VALUES (9, 9);
INSERT INTO avalia (id_meta, id_gestor) VALUES (10, 10);

SELECT * FROM funcionario;
SELECT * FROM gestor;
SELECT * FROM venda;
SELECT * FROM meta;
SELECT * FROM avalia;



--Insira 10 funcionarios
INSERT INTO funcionario (nome, id_meta) VALUES ('Alice Silva', 1);
INSERT INTO funcionario (nome, id_meta) VALUES ('Bruno Santos', 1);
INSERT INTO funcionario (nome, id_meta) VALUES ('Carlos Oliveira', 1);
INSERT INTO funcionario (nome, id_meta) VALUES ('Daniela Costa', 1);
INSERT INTO funcionario (nome, id_meta) VALUES ('Eduardo Lima', 1);
INSERT INTO funcionario (nome, id_meta) VALUES ('Fernanda Alves', 1);
INSERT INTO funcionario (nome, id_meta) VALUES ('Gabriel Pereira', 1);
INSERT INTO funcionario (nome, id_meta) VALUES ('Helena Martins', 1);
INSERT INTO funcionario (nome, id_meta) VALUES ('Igor Souza', 1);
INSERT INTO funcionario (nome, id_meta) VALUES ('Juliana Mendes', 1);



--Adicione o gestor (autorelacionamento) para 9 funcionarios. O funcionário sem gestor representara o presidente da instituição
INSERT INTO gestor (nome) VALUES ('Roberto Silva');
UPDATE funcionario SET id_meta = NULL WHERE nome = 'Alice Silva';
UPDATE funcionario SET id_meta = NULL WHERE nome = 'Bruno Santos';
UPDATE funcionario SET id_meta = NULL WHERE nome = 'Carlos Oliveira';
UPDATE funcionario SET id_meta = NULL WHERE nome = 'Daniela Costa';
UPDATE funcionario SET id_meta = NULL WHERE nome = 'Eduardo Lima';
UPDATE funcionario SET id_meta = NULL WHERE nome = 'Fernanda Alves';
UPDATE funcionario SET id_meta = NULL WHERE nome = 'Gabriel Pereira';
UPDATE funcionario SET id_meta = NULL WHERE nome = 'Helena Martins';
UPDATE funcionario SET id_meta = NULL WHERE nome = 'Igor Souza';
ALTER TABLE funcionario ADD COLUMN id_gestor INT REFERENCES gestor(id_gestor);
UPDATE funcionario SET id_gestor = 1 WHERE nome IN ('Alice Silva', 'Bruno Santos', 'Carlos Oliveira',
                                                    'Daniela Costa', 'Eduardo Lima', 'Fernanda Alves',
                                                    'Gabriel Pereira', 'Helena Martins', 'Igor Souza');



--Insira SEGUROS, CONTAS, FINANCIAMENTOS E EMPRESTIMOS na tabela categoria
CREATE TABLE categoria (
    id_categoria INTEGER PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR(30) NOT NULL UNIQUE
);
INSERT INTO categoria (nome) VALUES ('Seguros');
INSERT INTO categoria (nome) VALUES ('Contas');
INSERT INTO categoria (nome) VALUES ('Financiamentos');
INSERT INTO categoria (nome) VALUES ('Empréstimos');
ALTER TABLE meta ADD COLUMN id_categoria INT REFERENCES categoria(id_categoria);



-- Inserir metas para cada funcionário (passei lista de 10 funcionarios)
INSERT INTO meta (quantidade, id_funcionario, id_categoria, data)
VALUES
(100, 16, 1, '2024-11-01'), (150, 16, 2, '2024-11-01'), (200, 16, 3, '2024-11-01'), (250, 16, 4, '2024-11-01'),
(100, 17, 1, '2024-11-01'), (150, 17, 2, '2024-11-01'), (200, 17, 3, '2024-11-01'), (250, 17, 4, '2024-11-01'),
(100, 18, 1, '2024-11-01'), (150, 18, 2, '2024-11-01'), (200, 18, 3, '2024-11-01'), (250, 18, 4, '2024-11-01'),
(100, 19, 1, '2024-11-01'), (150, 19, 2, '2024-11-01'), (200, 19, 3, '2024-11-01'), (250, 19, 4, '2024-11-01'),
(100, 20, 1, '2024-11-01'), (150, 20, 2, '2024-11-01'), (200, 20, 3, '2024-11-01'), (250, 20, 4, '2024-11-01'),
(100, 21, 1, '2024-11-01'), (150, 21, 2, '2024-11-01'), (200, 21, 3, '2024-11-01'), (250, 21, 4, '2024-11-01'),
(100, 22, 1, '2024-11-01'), (150, 22, 2, '2024-11-01'), (200, 22, 3, '2024-11-01'), (250, 22, 4, '2024-11-01'),
(100, 23, 1, '2024-11-01'), (150, 23, 2, '2024-11-01'), (200, 23, 3, '2024-11-01'), (250, 23, 4, '2024-11-01'),
(100, 24, 1, '2024-11-01'), (150, 24, 2, '2024-11-01'), (200, 24, 3, '2024-11-01'), (250, 24, 4, '2024-11-01'),
(100, 25, 1, '2024-11-01'), (150, 25, 2, '2024-11-01'), (200, 25, 3, '2024-11-01'), (250, 25, 4, '2024-11-01');



--Insira a quantidade vendida de cada meta de cada colaborador. Data e quantidade pode ser preenchida aleatoriamente (mas deve ser antes de novembro)
INSERT INTO venda (tipo, quantidade, id_funcionario, id_categoria, data)
VALUES
('Venda', 80, 16, 1, '2024-09-12'), ('Venda', 120, 16, 2, '2024-09-15'), ('Venda', 180, 16, 3, '2024-09-18'), ('Venda', 220, 16, 4, '2024-10-05'),
('Venda', 90, 17, 1, '2024-09-14'), ('Venda', 130, 17, 2, '2024-09-17'), ('Venda', 170, 17, 3, '2024-09-22'), ('Venda', 210, 17, 4, '2024-10-03'),
('Venda', 110, 18, 1, '2024-09-10'), ('Venda', 140, 18, 2, '2024-09-13'), ('Venda', 190, 18, 3, '2024-09-20'), ('Venda', 230, 18, 4, '2024-10-08'),
('Venda', 95, 19, 1, '2024-09-16'), ('Venda', 125, 19, 2, '2024-09-19'), ('Venda', 160, 19, 3, '2024-09-23'), ('Venda', 210, 19, 4, '2024-10-07'),
('Venda', 105, 20, 1, '2024-09-11'), ('Venda', 135, 20, 2, '2024-09-14'), ('Venda', 175, 20, 3, '2024-09-18'), ('Venda', 225, 20, 4, '2024-10-02'),
('Venda', 115, 21, 1, '2024-09-12'), ('Venda', 145, 21, 2, '2024-09-16'), ('Venda', 190, 21, 3, '2024-09-21'), ('Venda', 235, 21, 4, '2024-10-09'),
('Venda', 100, 22, 1, '2024-09-14'), ('Venda', 130, 22, 2, '2024-09-17'), ('Venda', 180, 22, 3, '2024-09-22'), ('Venda', 220, 22, 4, '2024-10-04'),
('Venda', 120, 23, 1, '2024-09-13'), ('Venda', 150, 23, 2, '2024-09-16'), ('Venda', 190, 23, 3, '2024-09-20'), ('Venda', 240, 23, 4, '2024-10-06'),
('Venda', 110, 24, 1, '2024-09-18'), ('Venda', 140, 24, 2, '2024-09-21'), ('Venda', 200, 24, 3, '2024-09-25'), ('Venda', 250, 24, 4, '2024-10-01'),
('Venda', 125, 25, 1, '2024-09-20'), ('Venda', 160, 25, 2, '2024-09-23'), ('Venda', 210, 25, 3, '2024-09-27'), ('Venda', 260, 25, 4, '2024-10-10');



--Insira uma nota p cada meta, adicionando uma nota de 0 a 100 calculada automaticamente c base na qntd vendida e obj da meta. data da avaliaçao tb deve ser armazenada (aleatoria, porem em janeiro)
INSERT INTO avalia (id_meta, id_gestor, data, nota_final)
VALUES
    (1, 1, '2024-01-10', ABS(RANDOM()) % 101),
    (2, 1, '2024-01-12', ABS(RANDOM()) % 101),
    (3, 1, '2024-01-14', ABS(RANDOM()) % 101),
    (4, 1, '2024-01-15', ABS(RANDOM()) % 101),
    (5, 2, '2024-01-11', ABS(RANDOM()) % 101),
    (6, 2, '2024-01-13', ABS(RANDOM()) % 101),
    (7, 2, '2024-01-14', ABS(RANDOM()) % 101),
    (8, 2, '2024-01-16', ABS(RANDOM()) % 101),
    (9, 3, '2024-01-12', ABS(RANDOM()) % 101),
    (10, 3, '2024-01-13', ABS(RANDOM()) % 101),
    (11, 3, '2024-01-15', ABS(RANDOM()) % 101),
    (12, 3, '2024-01-16', ABS(RANDOM()) % 101),
    (13, 4, '2024-01-09', ABS(RANDOM()) % 101),
    (14, 4, '2024-01-11', ABS(RANDOM()) % 101),
    (15, 4, '2024-01-13', ABS(RANDOM()) % 101),
    (16, 4, '2024-01-14', ABS(RANDOM()) % 101),
    (17, 5, '2024-01-12', ABS(RANDOM()) % 101),
    (18, 5, '2024-01-14', ABS(RANDOM()) % 101),
    (19, 5, '2024-01-15', ABS(RANDOM()) % 101),
    (20, 5, '2024-01-17', ABS(RANDOM()) % 101),
    (21, 6, '2024-01-10', ABS(RANDOM()) % 101),
    (22, 6, '2024-01-11', ABS(RANDOM()) % 101),
    (23, 6, '2024-01-13', ABS(RANDOM()) % 101),
    (24, 6, '2024-01-15', ABS(RANDOM()) % 101),
    (25, 7, '2024-01-09', ABS(RANDOM()) % 101),
    (26, 7, '2024-01-10', ABS(RANDOM()) % 101),
    (27, 7, '2024-01-12', ABS(RANDOM()) % 101),
    (28, 7, '2024-01-14', ABS(RANDOM()) % 101),
    (29, 8, '2024-01-13', ABS(RANDOM()) % 101),
    (30, 8, '2024-01-14', ABS(RANDOM()) % 101),
    (31, 8, '2024-01-15', ABS(RANDOM()) % 101),
    (32, 8, '2024-01-17', ABS(RANDOM()) % 101),
    (33, 9, '2024-01-11', ABS(RANDOM()) % 101),
    (34, 9, '2024-01-13', ABS(RANDOM()) % 101),
    (35, 9, '2024-01-15', ABS(RANDOM()) % 101),
    (36, 9, '2024-01-16', ABS(RANDOM()) % 101),
    (37, 10, '2024-01-10', ABS(RANDOM()) % 101),
    (38, 10, '2024-01-12', ABS(RANDOM()) % 101),
    (39, 10, '2024-01-14', ABS(RANDOM()) % 101),
    (40, 10, '2024-01-16', ABS(RANDOM()) % 101);
