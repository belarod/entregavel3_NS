CREATE TABLE administrador(
    id_administrador INTEGER PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR(30)
);

CREATE TABLE evento(
    id_evento INTEGER PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR(30),
    data DATE,
    local VARCHAR(20),
    categoria VARCHAR(20) REFERENCES categoria(nome),
    id_administrador INT,
    FOREIGN KEY (id_administrador) REFERENCES administrador(id_administrador)
);

CREATE TABLE conversa_participante (
    id_conversa INTEGER REFERENCES conversa(id_grupo),
    id_usuario INTEGER REFERENCES usuario(id_usuario),
    PRIMARY KEY (id_conversa, id_usuario)
);

CREATE TABLE categoria(
    nome VARCHAR(20) PRIMARY KEY
);

CREATE TABLE usuario(
    id_usuario INTEGER PRIMARY KEY AUTOINCREMENT,
    rua VARCHAR(30),
    bairro VARCHAR(20),
    data_nascimento DATE
);

CREATE TABLE conversa(
    id_grupo INTEGER PRIMARY KEY AUTOINCREMENT,
    id_participante1 INT REFERENCES usuario(id_usuario),
    id_participante2 INT REFERENCES usuario(id_usuario),
    id_participante3 INT REFERENCES usuario(id_usuario),
    id_participante4 INT REFERENCES usuario(id_usuario),
    id_participante5 INT REFERENCES usuario(id_usuario),
    id_participante6 INT REFERENCES usuario(id_usuario),
    id_participante7 INT REFERENCES usuario(id_usuario)
);

CREATE TABLE participa(
    id_participa INTEGER PRIMARY KEY AUTOINCREMENT,
    id_evento INT REFERENCES evento(id_evento),
    id_usuario INT REFERENCES usuario(id_usuario)
);

CREATE TABLE mensagem (
    id_mensagem INTEGER PRIMARY KEY AUTOINCREMENT,
    id_grupo INT REFERENCES conversa(id_grupo),
    id_usuario INTEGER NOT NULL,
    conteudo TEXT,
    data_hora DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
);

CREATE TABLE categoria_favorita (
    id_usuario INT REFERENCES usuario(id_usuario) ON DELETE CASCADE,
    categoria VARCHAR(20) REFERENCES categoria(nome),
    PRIMARY KEY (id_usuario, categoria)
);

-- Insert de 15 linhas na tabela 'administrador'

INSERT INTO administrador (nome) VALUES ('Carlos Oliveira');
INSERT INTO administrador (nome) VALUES ('Juliana Silva');
INSERT INTO administrador (nome) VALUES ('Ricardo Pereira');
INSERT INTO administrador (nome) VALUES ('Mariana Costa');
INSERT INTO administrador (nome) VALUES ('Pedro Lima');
INSERT INTO administrador (nome) VALUES ('Ana Souza');
INSERT INTO administrador (nome) VALUES ('Felipe Martins');
INSERT INTO administrador (nome) VALUES ('Camila Fernandes');
INSERT INTO administrador (nome) VALUES ('Lucas Santos');
INSERT INTO administrador (nome) VALUES ('Patricia Almeida');
INSERT INTO administrador (nome) VALUES ('Eduardo Campos');
INSERT INTO administrador (nome) VALUES ('Renata Oliveira');
INSERT INTO administrador (nome) VALUES ('Bruno Rocha');
INSERT INTO administrador (nome) VALUES ('Beatriz Lima');
INSERT INTO administrador (nome) VALUES ('Gabriel Moreira');




-- Insert de 15 linhas na tabela 'categoria'

INSERT INTO categoria (nome) VALUES ('Show');
INSERT INTO categoria (nome) VALUES ('Bar');
INSERT INTO categoria (nome) VALUES ('Jogo');
INSERT INTO categoria (nome) VALUES ('Livro');
INSERT INTO categoria (nome) VALUES ('Festival');
INSERT INTO categoria (nome) VALUES ('Teatro');
INSERT INTO categoria (nome) VALUES ('Exposição');
INSERT INTO categoria (nome) VALUES ('Concertos');
INSERT INTO categoria (nome) VALUES ('Feira');
INSERT INTO categoria (nome) VALUES ('Workshop');
INSERT INTO categoria (nome) VALUES ('Cinema');
INSERT INTO categoria (nome) VALUES ('Competição');
INSERT INTO categoria (nome) VALUES ('Stand-up');
INSERT INTO categoria (nome) VALUES ('Cultural');
INSERT INTO categoria (nome) VALUES ('Gastronomia');


-- Insert de 15 linhas na tabela 'evento'

INSERT INTO evento (nome, data, local, categoria, id_administrador) VALUES ('Rock in Rio', '2024-10-01', 'Avenida Pedro Cabral, 777 - Barra da Tijuca', 'Show', 1);
INSERT INTO evento (nome, data, local, categoria, id_administrador) VALUES ('Festa na Praia', '2024-10-05', 'Rua das Palmeiras, 500 - Barra', 'Bar', 2);
INSERT INTO evento (nome, data, local, categoria, id_administrador) VALUES ('Final do Campeonato Carioca', '2024-10-10', 'Maracanã, Rio de Janeiro', 'Jogo', 3);
INSERT INTO evento (nome, data, local, categoria, id_administrador) VALUES ('Lançamento de Livro - Autor X', '2024-10-12', 'Rua dos Escritores, 220 - São Paulo', 'Livro', 4);
INSERT INTO evento (nome, data, local, categoria, id_administrador) VALUES ('Festival de Música de São Paulo', '2024-10-15', 'Avenida Paulista, 1234 - São Paulo', 'Festival', 5);
INSERT INTO evento (nome, data, local, categoria, id_administrador) VALUES ('Peça de Teatro - A Comédia', '2024-10-18', 'Teatro Municipal, São Paulo', 'Teatro', 6);
INSERT INTO evento (nome, data, local, categoria, id_administrador) VALUES ('Exposição de Arte Moderna', '2024-10-20', 'Museu de Arte Contemporânea, Rio de Janeiro', 'Exposição', 7);
INSERT INTO evento (nome, data, local, categoria, id_administrador) VALUES ('Concerto Sinfônico', '2024-10-22', 'Sala São Paulo, São Paulo', 'Concertos', 8);
INSERT INTO evento (nome, data, local, categoria, id_administrador) VALUES ('Feira de Livros Infantis', '2024-10-25', 'Centro de Convenções, Porto Alegre', 'Feira', 9);
INSERT INTO evento (nome, data, local, categoria, id_administrador) VALUES ('Workshop de Fotografia', '2024-10-28', 'Rua das Flores, 50 - Belo Horizonte', 'Workshop', 10);
INSERT INTO evento (nome, data, local, categoria, id_administrador) VALUES ('Festival de Cinema Independente', '2024-11-02', 'Cine Arte, Curitiba', 'Cinema', 11);
INSERT INTO evento (nome, data, local, categoria, id_administrador) VALUES ('Competição de Robótica', '2024-11-05', 'Centro de Eventos, Brasília', 'Competição', 12);
INSERT INTO evento (nome, data, local, categoria, id_administrador) VALUES ('Stand-up Comedy com Comediante Y', '2024-11-08', 'Teatro do Riso, São Paulo', 'Stand-up', 13);
INSERT INTO evento (nome, data, local, categoria, id_administrador) VALUES ('Festival Cultural de Brasília', '2024-11-12', 'Parque da Cidade, Brasília', 'Cultural', 14);
INSERT INTO evento (nome, data, local, categoria, id_administrador) VALUES ('Feira Gastronômica', '2024-11-15', 'Rua da Gastronomia, 100 - Recife', 'Gastronomia', 15);


--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



-- Insert de 15 linhas na tabela 'usuario'

INSERT INTO usuario (rua, bairro) VALUES ('Rua das Acácias, 123', 'Jardim das Flores');
INSERT INTO usuario (rua, bairro) VALUES ('Avenida Paulista, 456', 'Centro');
INSERT INTO usuario (rua, bairro) VALUES ('Rua dos Alecrins, 789', 'Vila Madalena');
INSERT INTO usuario (rua, bairro) VALUES ('Rua dos Coqueiros, 101', 'São Jorge');
INSERT INTO usuario (rua, bairro) VALUES ('Avenida Rio Branco, 202', 'Centro');
INSERT INTO usuario (rua, bairro) VALUES ('Rua do Comércio, 303', 'Liberdade');
INSERT INTO usuario (rua, bairro) VALUES ('Rua das Orquídeas, 404', 'Jardim Botânico');
INSERT INTO usuario (rua, bairro) VALUES ('Rua dos Jasmins, 505', 'Vila Mariana');
INSERT INTO usuario (rua, bairro) VALUES ('Avenida Central, 606', 'Barra da Tijuca');
INSERT INTO usuario (rua, bairro) VALUES ('Rua das Palmeiras, 707', 'Boa Viagem');
INSERT INTO usuario (rua, bairro) VALUES ('Rua do Lago, 808', 'Lago Sul');
INSERT INTO usuario (rua, bairro) VALUES ('Avenida das Américas, 909', 'Recreio dos Bandeirantes');
INSERT INTO usuario (rua, bairro) VALUES ('Rua do Sol, 1010', 'Santa Teresa');
INSERT INTO usuario (rua, bairro) VALUES ('Rua das Flores, 1111', 'Centro');
INSERT INTO usuario (rua, bairro) VALUES ('Rua das Margaridas, 1212', 'Vila Progresso');

-- Insert de 15 linhas na tabela 'conversa'

INSERT INTO conversa (id_participante1, id_participante2, id_participante3, id_participante4, id_participante5, id_participante6, id_participante7) VALUES (1, 2, 3, 4, 5, 6, 7);
INSERT INTO conversa (id_participante1, id_participante2, id_participante3, id_participante4, id_participante5, id_participante6, id_participante7) VALUES (2, 3, 4, 5, 6, 7, 1);
INSERT INTO conversa (id_participante1, id_participante2, id_participante3, id_participante4, id_participante5, id_participante6, id_participante7) VALUES (3, 4, 5, 6, 7, 1, 2);
INSERT INTO conversa (id_participante1, id_participante2, id_participante3, id_participante4, id_participante5, id_participante6, id_participante7) VALUES (4, 5, 6, 7, 1, 2, 3);
INSERT INTO conversa (id_participante1, id_participante2, id_participante3, id_participante4, id_participante5, id_participante6, id_participante7) VALUES (5, 6, 7, 1, 2, 3, 4);
INSERT INTO conversa (id_participante1, id_participante2, id_participante3, id_participante4, id_participante5, id_participante6, id_participante7) VALUES (6, 7, 1, 2, 3, 4, 5);
INSERT INTO conversa (id_participante1, id_participante2, id_participante3, id_participante4, id_participante5, id_participante6, id_participante7) VALUES (7, 1, 2, 3, 4, 5, 6);
INSERT INTO conversa (id_participante1, id_participante2, id_participante3, id_participante4, id_participante5, id_participante6, id_participante7) VALUES (1, 3, 5, 7, 2, 4, 6);
INSERT INTO conversa (id_participante1, id_participante2, id_participante3, id_participante4, id_participante5, id_participante6, id_participante7) VALUES (2, 4, 6, 1, 3, 5, 7);
INSERT INTO conversa (id_participante1, id_participante2, id_participante3, id_participante4, id_participante5, id_participante6, id_participante7) VALUES (3, 5, 7, 2, 4, 6, 1);

-- Insert de 10 linhas na tabela 'participa'

INSERT INTO participa (id_evento, id_usuario) VALUES (1, 1);
INSERT INTO participa (id_evento, id_usuario) VALUES (1, 2);
INSERT INTO participa (id_evento, id_usuario) VALUES (2, 3);
INSERT INTO participa (id_evento, id_usuario) VALUES (3, 4);
INSERT INTO participa (id_evento, id_usuario) VALUES (4, 5);
INSERT INTO participa (id_evento, id_usuario) VALUES (5, 6);
INSERT INTO participa (id_evento, id_usuario) VALUES (6, 7);
INSERT INTO participa (id_evento, id_usuario) VALUES (7, 1);
INSERT INTO participa (id_evento, id_usuario) VALUES (8, 2);
INSERT INTO participa (id_evento, id_usuario) VALUES (9, 3);

SELECT * FROM administrador;
SELECT * FROM evento;
SELECT * FROM categoria;
SELECT * FROM usuario;
SELECT * FROM conversa;
SELECT * FROM participa;



--Insira 5 categorias
INSERT INTO categoria (nome) VALUES
('Música'),
('Esportes'),
('Tecnologia'),
('Arte'),
('Educação');



--Cadastre 10 eventos, com uma categoria para cada
INSERT INTO evento (nome, data, local, categoria, id_administrador) VALUES
('Festival de Música Rock', '2024-06-15', 'Estádio Municipal', 'Música', 1),
('Maratona da Cidade', '2024-09-20', 'Centro da Cidade', 'Esportes', 1),
('Expo Tech 2024', '2024-07-10', 'Centro de Convenções', 'Tecnologia', 1),
('Exposição de Arte Moderna', '2024-08-05', 'Museu de Arte', 'Arte', 1),
('Workshop de Programação', '2024-11-01', 'Escola de Tecnologia', 'Educação', 1),
('Feira de Gastronomia', '2024-12-12', 'Parque Central', 'Gastronomia', 1),
('Conferência de Saúde e Bem-estar', '2024-10-18', 'Auditório Municipal', 'Saúde', 1),
('Festival de Dança Folclórica', '2024-07-25', 'Teatro Municipal', 'Cultura', 1),
('Ciclo de Palestras sobre Sustentabilidade', '2024-05-15', 'Universidade Local', 'Sustentabilidade', 1),
('Competições de Robótica', '2024-04-30', 'Centro Tecnológico', 'Inovação', 1);



-- Inserir 15 clientes que possuem 2 categorias favoritas
INSERT INTO usuario (rua, bairro, data_nascimento) VALUES
('Rua A, 123', 'Centro', '1990-05-10'),
('Rua B, 456', 'Jardim das Flores', '1985-03-20'),
('Rua C, 789', 'Vila Nova', '2000-08-15'),
('Rua D, 321', 'Praia', '1978-12-25'),
('Rua E, 654', 'Montanha', '1965-02-05'),
('Rua F, 987', 'Centro Histórico', '1992-07-30'),
('Rua G, 159', 'Bairro Alto', '1980-09-10'),
('Rua H, 753', 'Novo Horizonte', '2001-11-22'),
('Rua I, 852', 'Sol Nascente', '1995-01-17'),
('Rua J, 246', 'Recanto Verde', '1998-04-09'),
('Rua K, 135', 'Jardim Botânico', '1982-06-30'),
('Rua L, 864', 'Parque da Cidade', '1968-03-12'),
('Rua M, 951', 'Estação', '1999-05-03'),
('Rua N, 357', 'Vila dos Pinheiros', '1993-10-21'),
('Rua O, 159', 'Lagoa', '1989-12-02'),
('Rua P, 753', 'São Miguel', '1975-01-14');

CREATE TABLE categoria_favorita (
    id_usuario INT REFERENCES usuario(id_usuario) ON DELETE CASCADE,
    categoria VARCHAR(20) REFERENCES categoria(nome),
    PRIMARY KEY (id_usuario, categoria)
);
INSERT INTO categoria_favorita (id_usuario, categoria) VALUES
(1, 'Música'),
(1, 'Arte'),
(2, 'Esportes'),
(2, 'Tecnologia'),
(3, 'Educação'),
(3, 'Saúde'),
(4, 'Gastronomia'),
(4, 'Cultura'),
(5, 'Inovação'),
(5, 'Sustentabilidade'),
(6, 'Música'),
(6, 'Esportes'),
(7, 'Tecnologia'),
(7, 'Educação'),
(8, 'Saúde'),
(8, 'Gastronomia'),
(9, 'Cultura'),
(9, 'Inovação'),
(10, 'Sustentabilidade'),
(10, 'Música'),
(11, 'Esportes'),
(11, 'Arte'),
(12, 'Tecnologia'),
(12, 'Saúde'),
(13, 'Educação'),
(13, 'Gastronomia'),
(14, 'Cultura'),
(14, 'Sustentabilidade'),
(15, 'Inovação'),
(15, 'Música');



--Em 3 eventos, adiciona ao menos 2 clientes que participam em cada evento
INSERT INTO participa (id_evento, id_usuario) VALUES
(1, 1),  -- Festival de Música Rock: Cliente 1
(1, 2),  -- Festival de Música Rock: Cliente 2
(2, 3),  -- Maratona da Cidade: Cliente 3
(2, 4),  -- Maratona da Cidade: Cliente 4
(3, 5),  -- Expo Tech 2024: Cliente 5
(3, 6);  -- Expo Tech 2024: Cliente 6



--Insira troca de msg simples entre os que participaram em 1 dos eventos
INSERT INTO mensagem (id_grupo, id_usuario, conteudo)
VALUES
(1, 1, 'Você vai ao show de música no Teatro Municipal?'),
(1, 2, 'Sim, estou muito animado para isso!'),
(1, 1, 'Ótimo! Você já comprou o ingresso?'),
(1, 2, 'Ainda não, vou comprar hoje à noite.'),
(1, 1, 'Legal! Vamos tentar chegar juntos?'),
(1, 2, 'Claro! Podemos nos encontrar na entrada do teatro.'),
(1, 1, 'Vamos combinar o horário de chegada?'),
(1, 2, 'Que tal 19h30? Assim dá tempo de pegar um lugar bom.'),
(2, 3, 'Você vai à palestra sobre tecnologia na quarta-feira?'),
(2, 4, 'Sim, estou super interessado nos tópicos sobre IA!'),
(2, 3, 'Legal! Eu também. Já se inscreveu?'),
(2, 4, 'Ainda não. Vou fazer isso hoje à noite.'),
(2, 3, 'Combinado. Vamos juntos então?'),
(2, 4, 'Claro! Vou te avisar quando fizer a inscrição.'),
(2, 3, 'Quando for a sua vez de comprar, avisa que compramos juntos.'),
(2, 4, 'Perfeito! Vou te avisar logo, então.');
