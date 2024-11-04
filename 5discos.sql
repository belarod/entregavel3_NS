CREATE TABLE album(
    id_album INTEGER PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR(30),
    categoria VARCHAR(20)
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

CREATE TABLE turne(
    id_turne INTEGER PRIMARY KEY AUTOINCREMENT,
    data DATE,
    banda VARCHAR(30),
    nome VARCHAR(30)
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

-- Inserir 15 linhas na tabela 'turne'
INSERT INTO turne (data, banda, nome) VALUES ('2024-10-01', 'Banda A', 'Turnê Rock 2024');
INSERT INTO turne (data, banda, nome) VALUES ('2024-10-10', 'Banda B', 'Turnê Pop Mania');
INSERT INTO turne (data, banda, nome) VALUES ('2024-11-05', 'Banda C', 'Turnê Jazz Fusion');
INSERT INTO turne (data, banda, nome) VALUES ('2024-11-15', 'Banda D', 'Turnê Clássica');
INSERT INTO turne (data, banda, nome) VALUES ('2024-12-01', 'Banda E', 'Turnê Indie Rock');
INSERT INTO turne (data, banda, nome) VALUES ('2024-12-10', 'Banda F', 'Turnê Electrónica');
INSERT INTO turne (data, banda, nome) VALUES ('2025-01-05', 'Banda G', 'Turnê Blues Revival');
INSERT INTO turne (data, banda, nome) VALUES ('2025-01-15', 'Banda H', 'Turnê Folk');
INSERT INTO turne (data, banda, nome) VALUES ('2025-02-01', 'Banda I', 'Turnê Heavy Metal');
INSERT INTO turne (data, banda, nome) VALUES ('2025-02-10', 'Banda J', 'Turnê Experimental');
INSERT INTO turne (data, banda, nome) VALUES ('2025-03-05', 'Banda K', 'Turnê Tradicional');
INSERT INTO turne (data, banda, nome) VALUES ('2025-03-15', 'Banda L', 'Turnê Modern Jazz');
INSERT INTO turne (data, banda, nome) VALUES ('2025-04-01', 'Banda M', 'Turnê Hip Hop');
INSERT INTO turne (data, banda, nome) VALUES ('2025-04-10', 'Banda N', 'Turnê World Music');
INSERT INTO turne (data, banda, nome) VALUES ('2025-05-01', 'Banda O', 'Turnê Reggae');

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