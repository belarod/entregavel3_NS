CREATE TABLE participante(
    id_participante INTEGER PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR(30),
    rua VARCHAR(30),
    bairro VARCHAR(20)
);

CREATE TABLE possui(
    sku VARCHAR(8) REFERENCES produto(sku),
    PRIMARY KEY (sku)
    id_participante INT REFERENCES participante(id_participante)
);

CREATE TABLE produto(
    sku VARCHAR(8) PRIMARY KEY,
    preco FLOAT
);

CREATE TABLE responde(
    id_participante INT REFERENCES participante(id_participante),
    id_pesquisa INT REFERENCES pesquisa(id_pesquisa),
    PRIMARY KEY (id_pesquisa, id_participante)
);

CREATE TABLE pesquisa(
    id_pesquisa INTEGER PRIMARY KEY AUTOINCREMENT,
    data DATE,
    nome VARCHAR(30)
);

CREATE TABLE contem(
    id_pesquisa INTEGER PRIMARY KEY AUTOINCREMENT,
    id_pergunta INT REFERENCES pergunta(id_pergunta)
);

CREATE TABLE pergunta(
    id_pergunta INTEGER PRIMARY KEY AUTOINCREMENT,
    likert VARCHAR(2),
    conteudo VARCHAR(200)
);

-- Inserir 15 linhas na tabela 'participante'
INSERT INTO participante (nome, rua, bairro) VALUES ('Ana Costa', 'Rua das Acácias, 123', 'Jardim das Flores');
INSERT INTO participante (nome, rua, bairro) VALUES ('Bruno Silva', 'Avenida Paulista, 456', 'Centro');
INSERT INTO participante (nome, rua, bairro) VALUES ('Carlos Souza', 'Rua dos Alecrins, 789', 'Vila Madalena');
INSERT INTO participante (nome, rua, bairro) VALUES ('Diana Lima', 'Rua dos Coqueiros, 101', 'São Jorge');
INSERT INTO participante (nome, rua, bairro) VALUES ('Eduardo Oliveira', 'Avenida Rio Branco, 202', 'Centro');
INSERT INTO participante (nome, rua, bairro) VALUES ('Fernanda Almeida', 'Rua do Comércio, 303', 'Liberdade');
INSERT INTO participante (nome, rua, bairro) VALUES ('Gabriel Santos', 'Rua das Orquídeas, 404', 'Jardim Botânico');
INSERT INTO participante (nome, rua, bairro) VALUES ('Helena Ferreira', 'Rua dos Jasmins, 505', 'Vila Mariana');
INSERT INTO participante (nome, rua, bairro) VALUES ('Igor Martins', 'Avenida Central, 606', 'Barra da Tijuca');
INSERT INTO participante (nome, rua, bairro) VALUES ('Juliana Costa', 'Rua das Palmeiras, 707', 'Boa Viagem');
INSERT INTO participante (nome, rua, bairro) VALUES ('Karina Souza', 'Rua do Lago, 808', 'Lago Sul');
INSERT INTO participante (nome, rua, bairro) VALUES ('Leonardo Mendes', 'Avenida das Américas, 909', 'Recreio dos Bandeirantes');
INSERT INTO participante (nome, rua, bairro) VALUES ('Mariana Rodrigues', 'Rua do Sol, 1010', 'Santa Teresa');
INSERT INTO participante (nome, rua, bairro) VALUES ('Nicolas Pereira', 'Rua das Flores, 1111', 'Centro');
INSERT INTO participante (nome, rua, bairro) VALUES ('Olga Lima', 'Rua das Margaridas, 1212', 'Vila Progresso');

-- Inserir 15 linhas na tabela 'produto'
INSERT INTO produto (sku, preco) VALUES ('P0000001', 29.99);
INSERT INTO produto (sku, preco) VALUES ('P0000002', 59.99);
INSERT INTO produto (sku, preco) VALUES ('P0000003', 99.99);
INSERT INTO produto (sku, preco) VALUES ('P0000004', 12.49);
INSERT INTO produto (sku, preco) VALUES ('P0000005', 22.89);
INSERT INTO produto (sku, preco) VALUES ('P0000006', 45.00);
INSERT INTO produto (sku, preco) VALUES ('P0000007', 70.55);
INSERT INTO produto (sku, preco) VALUES ('P0000008', 35.75);
INSERT INTO produto (sku, preco) VALUES ('P0000009', 85.20);
INSERT INTO produto (sku, preco) VALUES ('P0000010', 55.40);
INSERT INTO produto (sku, preco) VALUES ('P0000011', 30.99);
INSERT INTO produto (sku, preco) VALUES ('P0000012', 44.10);
INSERT INTO produto (sku, preco) VALUES ('P0000013', 66.25);
INSERT INTO produto (sku, preco) VALUES ('P0000014', 77.85);
INSERT INTO produto (sku, preco) VALUES ('P0000015', 54.60);

-- Inserir 10 linhas na tabela 'possui'
INSERT INTO possui (sku, id_participante) VALUES ('P0000001', 1);
INSERT INTO possui (sku, id_participante) VALUES ('P0000002', 2);
INSERT INTO possui (sku, id_participante) VALUES ('P0000003', 3);
INSERT INTO possui (sku, id_participante) VALUES ('P0000004', 4);
INSERT INTO possui (sku, id_participante) VALUES ('P0000005', 5);
INSERT INTO possui (sku, id_participante) VALUES ('P0000006', 6);
INSERT INTO possui (sku, id_participante) VALUES ('P0000007', 7);
INSERT INTO possui (sku, id_participante) VALUES ('P0000008', 8);
INSERT INTO possui (sku, id_participante) VALUES ('P0000009', 9);
INSERT INTO possui (sku, id_participante) VALUES ('P0000010', 10);

-- Inserir 10 linhas na tabela 'responde'
INSERT INTO responde (id_participante, id_pesquisa) VALUES (1, 1);
INSERT INTO responde (id_participante, id_pesquisa) VALUES (2, 2);
INSERT INTO responde (id_participante, id_pesquisa) VALUES (3, 3);
INSERT INTO responde (id_participante, id_pesquisa) VALUES (4, 4);
INSERT INTO responde (id_participante, id_pesquisa) VALUES (5, 5);
INSERT INTO responde (id_participante, id_pesquisa) VALUES (6, 6);
INSERT INTO responde (id_participante, id_pesquisa) VALUES (7, 7);
INSERT INTO responde (id_participante, id_pesquisa) VALUES (8, 8);
INSERT INTO responde (id_participante, id_pesquisa) VALUES (9, 9);
INSERT INTO responde (id_participante, id_pesquisa) VALUES (10, 10);

-- Inserir 15 linhas na tabela 'pesquisa'
INSERT INTO pesquisa (data, nome) VALUES ('2024-01-10', 'Pesquisa de Satisfação');
INSERT INTO pesquisa (data, nome) VALUES ('2024-02-15', 'Pesquisa de Mercado');
INSERT INTO pesquisa (data, nome) VALUES ('2024-03-20', 'Pesquisa de Opinião Pública');
INSERT INTO pesquisa (data, nome) VALUES ('2024-04-25', 'Pesquisa de Produto');
INSERT INTO pesquisa (data, nome) VALUES ('2024-05-30', 'Pesquisa de Serviços');
INSERT INTO pesquisa (data, nome) VALUES ('2024-06-15', 'Pesquisa de Tendências');
INSERT INTO pesquisa (data, nome) VALUES ('2024-07-20', 'Pesquisa de Experiência do Cliente');
INSERT INTO pesquisa (data, nome) VALUES ('2024-08-25', 'Pesquisa de Preço');
INSERT INTO pesquisa (data, nome) VALUES ('2024-09-10', 'Pesquisa de Branding');
INSERT INTO pesquisa (data, nome) VALUES ('2024-10-15', 'Pesquisa de Mercado Local');
INSERT INTO pesquisa (data, nome) VALUES ('2024-11-20', 'Pesquisa de Feedback');
INSERT INTO pesquisa (data, nome) VALUES ('2024-12-05', 'Pesquisa de Novos Produtos');
INSERT INTO pesquisa (data, nome) VALUES ('2024-12-15', 'Pesquisa de Satisfação do Funcionário');
INSERT INTO pesquisa (data, nome) VALUES ('2024-12-25', 'Pesquisa de Qualidade');
INSERT INTO pesquisa (data, nome) VALUES ('2024-12-30', 'Pesquisa de Impacto Social');

INSERT INTO pergunta (likert, conteudo) VALUES ('1', 'O produto atendeu minhas expectativas.');
INSERT INTO pergunta (likert, conteudo) VALUES ('2', 'A qualidade do atendimento foi satisfatória.');
INSERT INTO pergunta (likert, conteudo) VALUES ('3', 'A entrega foi realizada no prazo prometido.');
INSERT INTO pergunta (likert, conteudo) VALUES ('4', 'O preço foi justo em relação à qualidade.');
INSERT INTO pergunta (likert, conteudo) VALUES ('5', 'Recomendo este produto para outras pessoas.');
INSERT INTO pergunta (likert, conteudo) VALUES ('1', 'A interface do aplicativo é fácil de usar.');
INSERT INTO pergunta (likert, conteudo) VALUES ('2', 'A comunicação da empresa foi clara e eficiente.');
INSERT INTO pergunta (likert, conteudo) VALUES ('3', 'O produto possui boas funcionalidades.');
INSERT INTO pergunta (likert, conteudo) VALUES ('4', 'O processo de compra foi simples e rápido.');
INSERT INTO pergunta (likert, conteudo) VALUES ('5', 'Estou satisfeito com a minha experiência de compra.');
INSERT INTO pergunta (likert, conteudo) VALUES ('1', 'O suporte técnico foi útil e prestativo.');
INSERT INTO pergunta (likert, conteudo) VALUES ('2', 'Os detalhes do produto estavam bem descritos.');
INSERT INTO pergunta (likert, conteudo) VALUES ('3', 'A empresa ofereceu um bom valor pelo dinheiro.');
INSERT INTO pergunta (likert, conteudo) VALUES ('4', 'O produto corresponde às minhas necessidades.');
INSERT INTO pergunta (likert, conteudo) VALUES ('5', 'Eu compraria novamente desta empresa.');
INSERT INTO pergunta (likert, conteudo) VALUES ('1', 'A embalagem do produto estava em boas condições.');

-- Inserir 10 linhas na tabela 'contem'
INSERT INTO contem (id_pergunta) VALUES (1);
INSERT INTO contem (id_pergunta) VALUES (2);
INSERT INTO contem (id_pergunta) VALUES (3);
INSERT INTO contem (id_pergunta) VALUES (4);
INSERT INTO contem (id_pergunta) VALUES (5);
INSERT INTO contem (id_pergunta) VALUES (6);
INSERT INTO contem (id_pergunta) VALUES (7);
INSERT INTO contem (id_pergunta) VALUES (8);
INSERT INTO contem (id_pergunta) VALUES (9);
INSERT INTO contem (id_pergunta) VALUES (10);

SELECT * FROM participante;
SELECT * FROM produto;
SELECT * FROM possui;
SELECT * FROM pesquisa;
SELECT * FROM pergunta;
SELECT * FROM responde;
SELECT * FROM contem;