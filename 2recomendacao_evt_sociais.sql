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

CREATE TABLE categoria(
    nome VARCHAR(20) PRIMARY KEY
);

CREATE TABLE usuario(
    id_usuario INTEGER PRIMARY KEY AUTOINCREMENT,
    rua VARCHAR(30),
    bairro VARCHAR(20)
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
    id_evento INT REFERENCES evento(id_evento),
    id_usuario INT REFERENCES usuario(id_usuario),
    PRIMARY KEY (id_usuario, id_evento)
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