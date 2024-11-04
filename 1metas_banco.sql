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

CREATE TABLE venda(
    id_venda INTEGER PRIMARY KEY AUTOINCREMENT,
    tipo VARCHAR(20),
    quantidade INT CHECK ( quantidade>0 ),
    id_funcionario INT,
    FOREIGN KEY (id_funcionario) REFERENCES funcionario(id_funcionario)
);

CREATE TABLE meta(
    id_meta INTEGER PRIMARY KEY AUTOINCREMENT,
    quantidade_seguro INT,
    quantidade_conta INT,
    quantidade_financiamento INT,
    quantidade_emprestimo INT,
    id_funcionario INT,
    FOREIGN KEY (id_funcionario) REFERENCES funcionario(id_funcionario)
);

CREATE TABLE avalia(
    id_meta INT,
    id_gestor INT,
    PRIMARY KEY (id_meta, id_gestor),
    FOREIGN KEY (id_meta) REFERENCES meta(id_meta),
    FOREIGN KEY (id_gestor) REFERENCES gestor(id_gestor)
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

-- Insert de 15 linhas na tabela 'meta'

INSERT INTO meta (quantidade_seguro, quantidade_conta, quantidade_financiamento, quantidade_emprestimo, id_funcionario) VALUES (10, 5, 3, 2, 1);
INSERT INTO meta (quantidade_seguro, quantidade_conta, quantidade_financiamento, quantidade_emprestimo, id_funcionario) VALUES (8, 7, 4, 3, 2);
INSERT INTO meta (quantidade_seguro, quantidade_conta, quantidade_financiamento, quantidade_emprestimo, id_funcionario) VALUES (12, 6, 5, 4, 3);
INSERT INTO meta (quantidade_seguro, quantidade_conta, quantidade_financiamento, quantidade_emprestimo, id_funcionario) VALUES (9, 8, 6, 5, 4);
INSERT INTO meta (quantidade_seguro, quantidade_conta, quantidade_financiamento, quantidade_emprestimo, id_funcionario) VALUES (11, 4, 7, 6, 5);
INSERT INTO meta (quantidade_seguro, quantidade_conta, quantidade_financiamento, quantidade_emprestimo, id_funcionario) VALUES (7, 9, 8, 7, 6);
INSERT INTO meta (quantidade_seguro, quantidade_conta, quantidade_financiamento, quantidade_emprestimo, id_funcionario) VALUES (10, 5, 9, 8, 7);
INSERT INTO meta (quantidade_seguro, quantidade_conta, quantidade_financiamento, quantidade_emprestimo, id_funcionario) VALUES (6, 10, 10, 9, 8);
INSERT INTO meta (quantidade_seguro, quantidade_conta, quantidade_financiamento, quantidade_emprestimo, id_funcionario) VALUES (8, 6, 11, 10, 9);
INSERT INTO meta (quantidade_seguro, quantidade_conta, quantidade_financiamento, quantidade_emprestimo, id_funcionario) VALUES (12, 8, 12, 11, 10);
INSERT INTO meta (quantidade_seguro, quantidade_conta, quantidade_financiamento, quantidade_emprestimo, id_funcionario) VALUES (9, 7, 13, 12, 11);
INSERT INTO meta (quantidade_seguro, quantidade_conta, quantidade_financiamento, quantidade_emprestimo, id_funcionario) VALUES (11, 5, 14, 13, 12);
INSERT INTO meta (quantidade_seguro, quantidade_conta, quantidade_financiamento, quantidade_emprestimo, id_funcionario) VALUES (7, 9, 15, 14, 13);
INSERT INTO meta (quantidade_seguro, quantidade_conta, quantidade_financiamento, quantidade_emprestimo, id_funcionario) VALUES (10, 8, 16, 15, 14);
INSERT INTO meta (quantidade_seguro, quantidade_conta, quantidade_financiamento, quantidade_emprestimo, id_funcionario) VALUES (8, 6, 17, 16, 15);

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