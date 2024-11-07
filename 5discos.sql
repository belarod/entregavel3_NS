CREATE TABLE album(
    id_album INTEGER PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR(30),
    categoria VARCHAR(20),
    tipo_midia VARCHAR(20)
);

CREATE TABLE review(
    id_review INTEGER PRIMARY KEY AUTOINCREMENT,
    tipo VARCHAR(20),
    likert VARCHAR(20),
    comentario VARCHAR(400),
    id_cliente INT REFERENCES cliente(id_cliente),
    id_album INT REFERENCES album(id_album),
    id_turne INT REFERENCES turne(id_turne)
);

CREATE TABLE cliente(
    id_cliente INTEGER PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR(30)
);

CREATE TABLE turne (
    id_turne INTEGER PRIMARY KEY AUTOINCREMENT,
    data DATE,
    nome VARCHAR(30),
    id_artista INT,
    CONSTRAINT fk_artista FOREIGN KEY (id_artista) REFERENCES artista(id_artista)
);


CREATE TABLE acompanha(
    id_cliente INT REFERENCES cliente(id_cliente),
    id_turne INT REFERENCES turne(id_turne)
);

-- Inserir 15 linhas na tabela 'album'
INSERT INTO album (nome, categoria) VALUES ('Eclipse de Verão', 'Rock');
INSERT INTO album (nome, categoria) VALUES ('Notas da Cidade', 'Pop');
INSERT INTO album (nome, categoria) VALUES ('Jazz à Noite', 'Jazz');
INSERT INTO album (nome, categoria) VALUES ('Sinfonia dos Ventos', 'Clássico');
INSERT INTO album (nome, categoria) VALUES ('Luzes e Sombras', 'Indie');
INSERT INTO album (nome, categoria) VALUES ('Beats Inexplorados', 'Eletrônica');
INSERT INTO album (nome, categoria) VALUES ('Blues da Estrada', 'Blues');
INSERT INTO album (nome, categoria) VALUES ('Caminho do Sol', 'Folk');
INSERT INTO album (nome, categoria) VALUES ('Fúria de Aço', 'Heavy Metal');
INSERT INTO album (nome, categoria) VALUES ('Sons do Horizonte', 'Experimental');
INSERT INTO album (nome, categoria) VALUES ('Raízes do Campo', 'Tradicional');
INSERT INTO album (nome, categoria) VALUES ('Ritmos da Terra', 'Modern Jazz');
INSERT INTO album (nome, categoria) VALUES ('Poesia Urbana', 'Hip Hop');
INSERT INTO album (nome, categoria) VALUES ('Sonhos e Realidades', 'World Music');
INSERT INTO album (nome, categoria) VALUES ('Mar de Coral', 'Reggae');

-- Inserir 15 linhas na tabela 'cliente'
INSERT INTO cliente (nome) VALUES ('Alice Martins');
INSERT INTO cliente (nome) VALUES ('Bob Silva');
INSERT INTO cliente (nome) VALUES ('Carol Souza');
INSERT INTO cliente (nome) VALUES ('David Oliveira');
INSERT INTO cliente (nome) VALUES ('Eva Santos');
INSERT INTO cliente (nome) VALUES ('Frank Costa');
INSERT INTO cliente (nome) VALUES ('Grace Lima');
INSERT INTO cliente (nome) VALUES ('Hank Pereira');
INSERT INTO cliente (nome) VALUES ('Ivy Rodrigues');
INSERT INTO cliente (nome) VALUES ('Jack Almeida');
INSERT INTO cliente (nome) VALUES ('Kelly Barbosa');
INSERT INTO cliente (nome) VALUES ('Louis Ferreira');
INSERT INTO cliente (nome) VALUES ('Mona Ribeiro');
INSERT INTO cliente (nome) VALUES ('Nina Castro');
INSERT INTO cliente (nome) VALUES ('Oscar Fernandes');

INSERT INTO turne (data, nome, id_artista) VALUES
('2024-11-10', 'No Filter Tour 2024', 1),
('2024-11-12', 'BTS World Tour 2024', 2),
('2024-11-14', 'Music of the Spheres Tour 2024', 3),
('2024-11-16', 'Eras Tour 2024', 4),
('2024-11-18', 'Subtract World Tour 2024', 5),
('2024-11-20', 'Sweetener World Tour 2024', 6),
('2024-11-22', 'Mercury World Tour 2024', 7),
('2024-11-24', 'Happier Than Ever Tour 2024', 8),
('2024-11-26', 'After Hours Tour 2024', 9),
('2024-11-28', 'El Dorado World Tour 2024', 10),
('2024-11-30', 'Donda Tour 2024', 11),
('2024-12-02', 'Certified Lover Boy Tour 2024', 12),
('2024-12-04', 'Future Nostalgia Tour 2024', 13),
('2024-12-06', 'The Hollywood Dream Tour 2024', 14),
('2024-12-08', 'Divide World Tour 2024', 5);

-- Inserir 15 linhas na tabela 'review'
INSERT INTO review (tipo, likert, comentario, id_cliente, id_album, id_turne) VALUES ('Álbum', '5', 'Ótimo álbum! Muito bom!', 1, 1, NULL);
INSERT INTO review (tipo, likert, comentario, id_cliente, id_album, id_turne) VALUES ('Álbum', '4', 'Bom álbum, mas pode melhorar.', 2, 2, NULL);
INSERT INTO review (tipo, likert, comentario, id_cliente, id_album, id_turne) VALUES ('Álbum', '3', 'Álbum mediano.', 3, 3, NULL);
INSERT INTO review (tipo, likert, comentario, id_cliente, id_album, id_turne) VALUES ('Álbum', '2', 'Não gostei muito.', 4, 4, NULL);
INSERT INTO review (tipo, likert, comentario, id_cliente, id_album, id_turne) VALUES ('Álbum', '1', 'Muito ruim.', 5, 5, NULL);
INSERT INTO review (tipo, likert, comentario, id_cliente, id_album, id_turne) VALUES ('Turnê', '5', 'Turnê incrível! Energia contagiante!', 6, NULL, 1);
INSERT INTO review (tipo, likert, comentario, id_cliente, id_album, id_turne) VALUES ('Turnê', '4', 'Ótima turnê, mas o som estava ruim.', 7, NULL, 2);
INSERT INTO review (tipo, likert, comentario, id_cliente, id_album, id_turne) VALUES ('Turnê', '3', 'Turnê boa, mas esperava mais.', 8, NULL, 3);
INSERT INTO review (tipo, likert, comentario, id_cliente, id_album, id_turne) VALUES ('Turnê', '2', 'Turnê abaixo das expectativas.', 9, NULL, 4);
INSERT INTO review (tipo, likert, comentario, id_cliente, id_album, id_turne) VALUES ('Turnê', '1', 'Péssima turnê, não voltarei.', 10, NULL, 5);
INSERT INTO review (tipo, likert, comentario, id_cliente, id_album, id_turne) VALUES ('Álbum', '5', 'Um dos melhores álbuns que já ouvi.', 11, 6, NULL);
INSERT INTO review (tipo, likert, comentario, id_cliente, id_album, id_turne) VALUES ('Álbum', '4', 'Muito bom, mas alguns pontos negativos.', 12, 7, NULL);
INSERT INTO review (tipo, likert, comentario, id_cliente, id_album, id_turne) VALUES ('Álbum', '3', 'Álbum interessante, mas não é para todos.', 13, 8, NULL);
INSERT INTO review (tipo, likert, comentario, id_cliente, id_album, id_turne) VALUES ('Álbum', '2', 'Não gostei muito, mas valeu a tentativa.', 14, 9, NULL);
INSERT INTO review (tipo, likert, comentario, id_cliente, id_album, id_turne) VALUES ('Álbum', '1', 'Muito abaixo do esperado.', 15, 10, NULL);

-- Inserir 10 linhas na tabela 'acompanha'
INSERT INTO acompanha (id_cliente, id_turne) VALUES (1, 1);
INSERT INTO acompanha (id_cliente, id_turne) VALUES (2, 2);
INSERT INTO acompanha (id_cliente, id_turne) VALUES (3, 3);
INSERT INTO acompanha (id_cliente, id_turne) VALUES (4, 4);
INSERT INTO acompanha (id_cliente, id_turne) VALUES (5, 5);
INSERT INTO acompanha (id_cliente, id_turne) VALUES (6, 6);
INSERT INTO acompanha (id_cliente, id_turne) VALUES (7, 7);
INSERT INTO acompanha (id_cliente, id_turne) VALUES (8, 8);
INSERT INTO acompanha (id_cliente, id_turne) VALUES (9, 9);
INSERT INTO acompanha (id_cliente, id_turne) VALUES (10, 10);

SELECT * FROM album;
SELECT * FROM cliente;
SELECT * FROM turne;
SELECT * FROM review;
SELECT * FROM acompanha;



--insira 10 artistas na tabela artista
CREATE TABLE artista (
    id_artista INTEGER PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR(50)
);
INSERT INTO artista (nome) VALUES
('The Rolling Stones'),
('BTS'),
('Coldplay'),
('Taylor Swift'),
('Ed Sheeran'),
('Ariana Grande'),
('Imagine Dragons'),
('Billie Eilish'),
('The Weeknd'),
('Shakira');

--cadastre 15 albuns, cada um podendo ser um ou mais tipo de midia (cd fita vinil)
INSERT INTO album (nome, categoria) VALUES
('Album 1', 'CD'),
('Album 1', 'Vinil'),
('Album 2', 'CD'),
('Album 3', 'Fita'),
('Album 3', 'CD'),
('Album 4', 'Vinil'),
('Album 5', 'CD'),
('Album 6', 'Fita'),
('Album 6', 'Vinil'),
('Album 7', 'CD'),
('Album 8', 'Vinil'),
('Album 9', 'Fita'),
('Album 9', 'CD'),
('Album 10', 'Vinil'),
('Album 11', 'Fita');

--insira 10 clientes
INSERT INTO cliente (nome) VALUES
('Carlos Silva'),
('Ana Oliveira'),
('Mariana Costa'),
('João Pereira'),
('Luís Santos'),
('Ricardo Lima'),
('Fernanda Rocha'),
('Patrícia Almeida'),
('Gabriel Souza'),
('Rafaela Martins');

--faça a review de 5 albuns na visao de 3 clientes (cada cliente avalia 5 albuns dando nota de 1-5 likert, nao precisa de comentario
INSERT INTO review (tipo, likert, comentario, id_cliente, id_album, id_turne)
VALUES
    ('Avaliação', 5, NULL, 1, 1, 1),
    ('Avaliação', 4, NULL, 1, 2, 2),
    ('Avaliação', 3, NULL, 1, 3, 3),
    ('Avaliação', 2, NULL, 1, 4, 4),
    ('Avaliação', 1, NULL, 1, 5, 5),
    ('Avaliação', 3, NULL, 2, 1, 1),
    ('Avaliação', 5, NULL, 2, 2, 2),
    ('Avaliação', 4, NULL, 2, 3, 3),
    ('Avaliação', 1, NULL, 2, 4, 4),
    ('Avaliação', 2, NULL, 2, 5, 5),
    ('Avaliação', 2, NULL, 3, 1, 1),
    ('Avaliação', 1, NULL, 3, 2, 2),
    ('Avaliação', 5, NULL, 3, 3, 3),
    ('Avaliação', 4, NULL, 3, 4, 4),
    ('Avaliação', 3, NULL, 3, 5, 5);

--dentre os 5 albuns avaliados, escolha 3 para ser avaliados por mais 2 clientes diferentes (ao final, 3 albuns terao no minimo 3 avaliacoes
INSERT INTO review (tipo, likert, comentario, id_cliente, id_album)
VALUES
    ('Avaliação', 5, NULL, 4, 1), -- Cliente 4, Álbun A, nota 5
    ('Avaliação', 3, NULL, 4, 2), -- Cliente 4, Álbun B, nota 3
    ('Avaliação', 4, NULL, 4, 3), -- Cliente 4, Álbun C, nota 4
    ('Avaliação', 2, NULL, 5, 1), -- Cliente 5, Álbun A, nota 2
    ('Avaliação', 1, NULL, 5, 2), -- Cliente 5, Álbun B, nota 1
    ('Avaliação', 3, NULL, 5, 3); -- Cliente 5, Álbun C, nota 3

--para 2 artistas, cadastre suas turnes c 5 shows cada
INSERT INTO turne (data, nome, id_artista)
VALUES
    ('2024-12-01', 'Turnê A - Show 1', 1),
    ('2024-12-05', 'Turnê A - Show 2', 1),
    ('2024-12-10', 'Turnê A - Show 3', 1),
    ('2024-12-15', 'Turnê A - Show 4', 1),
    ('2024-12-20', 'Turnê A - Show 5', 1),
    ('2024-12-02', 'Turnê B - Show 1', 2),
    ('2024-12-06', 'Turnê B - Show 2', 2),
    ('2024-12-11', 'Turnê B - Show 3', 2),
    ('2024-12-16', 'Turnê B - Show 4', 2),
    ('2024-12-21', 'Turnê B - Show 5', 2);

--faca a avaliacao de 2 shows de cada artista na visao de 2 clientes
INSERT INTO review (tipo, likert, comentario, id_cliente, id_album, id_turne)
VALUES
    ('Avaliação', 5, NULL, 1, 1, 1),
    ('Avaliação', 4, NULL, 2, 2, 1),
    ('Avaliação', 3, NULL, 3, 3, 1),
    ('Avaliação', 4, NULL, 4, 4, 1),
    ('Avaliação', 5, NULL, 5, 5, 1),
    ('Avaliação', 3, NULL, 1, 1, 2),
    ('Avaliação', 4, NULL, 2, 2, 2),
    ('Avaliação', 2, NULL, 3, 3, 2),
    ('Avaliação', 3, NULL, 4, 4, 2),
    ('Avaliação', 4, NULL, 5, 5, 2),
    ('Avaliação', 4, NULL, 1, 1, 3),
    ('Avaliação', 5, NULL, 2, 2, 3),
    ('Avaliação', 3, NULL, 3, 3, 3),
    ('Avaliação', 2, NULL, 4, 4, 3),
    ('Avaliação', 1, NULL, 5, 5, 3),
    ('Avaliação', 3, NULL, 1, 1, 4),
    ('Avaliação', 2, NULL, 2, 2, 4),
    ('Avaliação', 4, NULL, 3, 3, 4),
    ('Avaliação', 5, NULL, 4, 4, 4),
    ('Avaliação', 3, NULL, 5, 5, 4),
    ('Avaliação', 2, NULL, 1, 1, 5),
    ('Avaliação', 4, NULL, 2, 2, 5),
    ('Avaliação', 3, NULL, 3, 3, 5),
    ('Avaliação', 5, NULL, 4, 4, 5),
    ('Avaliação', 2, NULL, 5, 5, 5);
