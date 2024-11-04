CREATE TABLE produto(
    sku VARCHAR(8) PRIMARY KEY,
    nome VARCHAR(30),
    descricao VARCHAR(50),
    quantidade INT,
    preco FLOAT
);

CREATE TABLE categoria(
    nome VARCHAR(20) PRIMARY KEY,
    id_produto VARCHAR(8) REFERENCES produto(sku)
);

CREATE TABLE funcionario(
    matricula VARCHAR(8) PRIMARY KEY,
    nome VARCHAR(30)
);

CREATE TABLE cliente(
    email VARCHAR(80) PRIMARY KEY,
    rua VARCHAR(30),
    bairro VARCHAR(20)
);

CREATE TABLE telefone(
    numero VARCHAR(14) PRIMARY KEY,
    id_cliente VARCHAR(80) REFERENCES cliente(email)
);

CREATE TABLE endereco(
    id_endereco INTEGER PRIMARY KEY AUTOINCREMENT,
    cep VARCHAR(8),
    cep2 VARCHAR(8) NULL,
    id_cliente VARCHAR(80) REFERENCES cliente(email)
);

CREATE TABLE pedido(
    id_pedido INTEGER PRIMARY KEY AUTOINCREMENT,
    status VARCHAR(20),
    valor_total FLOAT,
    id_cliente VARCHAR(80) REFERENCES cliente(email),
    id_preparador VARCHAR(8) REFERENCES funcionario(matricula),
    id_inspetor ARCHAR(8) REFERENCES funcionario(matricula)
);

CREATE TABLE contem(
    id_produto VARCHAR(8) REFERENCES produto(sku),
    id_pedido INT REFERENCES pedido(id_pedido)
);

-- Inserir 15 linhas na tabela 'produto'
INSERT INTO produto (sku, nome, descricao, quantidade, preco) VALUES ('P0000001', 'Smartphone X1', 'Smartphone com tela AMOLED', 50, 1999.99);
INSERT INTO produto (sku, nome, descricao, quantidade, preco) VALUES ('P0000002', 'Laptop Pro 15', 'Laptop com 16GB RAM e 512GB SSD', 30, 4999.99);
INSERT INTO produto (sku, nome, descricao, quantidade, preco) VALUES ('P0000003', 'Fone de Ouvido Wireless', 'Fone de ouvido bluetooth com cancelamento de ruído', 100, 399.99);
INSERT INTO produto (sku, nome, descricao, quantidade, preco) VALUES ('P0000004', 'Smartwatch 3', 'Relógio inteligente com monitoramento de saúde', 70, 799.99);
INSERT INTO produto (sku, nome, descricao, quantidade, preco) VALUES ('P0000005', 'Câmera 4K', 'Câmera digital com gravação em 4K', 20, 2499.99);
INSERT INTO produto (sku, nome, descricao, quantidade, preco) VALUES ('P0000006', 'Teclado Mecânico', 'Teclado mecânico com retroiluminação RGB', 150, 299.99);
INSERT INTO produto (sku, nome, descricao, quantidade, preco) VALUES ('P0000007', 'Mouse Gamer', 'Mouse gamer com ajuste de DPI', 80, 199.99);
INSERT INTO produto (sku, nome, descricao, quantidade, preco) VALUES ('P0000008', 'Monitor 24"', 'Monitor LED de 24 polegadas', 60, 1199.99);
INSERT INTO produto (sku, nome, descricao, quantidade, preco) VALUES ('P0000009', 'Impressora Multifuncional', 'Impressora com scanner e copiadora', 40, 699.99);
INSERT INTO produto (sku, nome, descricao, quantidade, preco) VALUES ('P0000010', 'Router Wi-Fi 6', 'Router com tecnologia Wi-Fi 6', 90, 599.99);
INSERT INTO produto (sku, nome, descricao, quantidade, preco) VALUES ('P0000011', 'Projetor Full HD', 'Projetor com resolução Full HD', 15, 3499.99);
INSERT INTO produto (sku, nome, descricao, quantidade, preco) VALUES ('P0000012', 'Teclado USB', 'Teclado USB com 104 teclas', 200, 129.99);
INSERT INTO produto (sku, nome, descricao, quantidade, preco) VALUES ('P0000013', 'Webcam HD', 'Webcam com resolução HD e microfone embutido', 120, 249.99);
INSERT INTO produto (sku, nome, descricao, quantidade, preco) VALUES ('P0000014', 'HD Externo 1TB', 'HD externo com 1TB de armazenamento', 25, 399.99);
INSERT INTO produto (sku, nome, descricao, quantidade, preco) VALUES ('P0000015', 'Gamer Chair', 'Cadeira ergonômica para gamers', 10, 1599.99);


-- Inserir 15 linhas na tabela 'categoria'
INSERT INTO categoria (nome, id_produto) VALUES ('Smartphones', 'P0000001');
INSERT INTO categoria (nome, id_produto) VALUES ('Laptops', 'P0000002');
INSERT INTO categoria (nome, id_produto) VALUES ('Headphones', 'P0000003');
INSERT INTO categoria (nome, id_produto) VALUES ('Smartwatches', 'P0000004');
INSERT INTO categoria (nome, id_produto) VALUES ('Cameras', 'P0000005');
INSERT INTO categoria (nome, id_produto) VALUES ('Keyboards', 'P0000006');
INSERT INTO categoria (nome, id_produto) VALUES ('Mice', 'P0000007');
INSERT INTO categoria (nome, id_produto) VALUES ('Monitors', 'P0000008');
INSERT INTO categoria (nome, id_produto) VALUES ('Printers', 'P0000009');
INSERT INTO categoria (nome, id_produto) VALUES ('Routers', 'P0000010');
INSERT INTO categoria (nome, id_produto) VALUES ('Projectors', 'P0000011');
INSERT INTO categoria (nome, id_produto) VALUES ('Peripherals', 'P0000012');
INSERT INTO categoria (nome, id_produto) VALUES ('Webcams', 'P0000013');
INSERT INTO categoria (nome, id_produto) VALUES ('Storage', 'P0000014');
INSERT INTO categoria (nome, id_produto) VALUES ('Furniture', 'P0000015');

-- Inserir 15 linhas na tabela 'funcionario'
INSERT INTO funcionario (matricula, nome) VALUES ('F0000001', 'Ana Costa');
INSERT INTO funcionario (matricula, nome) VALUES ('F0000002', 'Carlos Silva');
INSERT INTO funcionario (matricula, nome) VALUES ('F0000003', 'Maria Oliveira');
INSERT INTO funcionario (matricula, nome) VALUES ('F0000004', 'João Santos');
INSERT INTO funcionario (matricula, nome) VALUES ('F0000005', 'Beatriz Almeida');
INSERT INTO funcionario (matricula, nome) VALUES ('F0000006', 'Felipe Rodrigues');
INSERT INTO funcionario (matricula, nome) VALUES ('F0000007', 'Patricia Lima');
INSERT INTO funcionario (matricula, nome) VALUES ('F0000008', 'Ricardo Martins');
INSERT INTO funcionario (matricula, nome) VALUES ('F0000009', 'Luciana Pereira');
INSERT INTO funcionario (matricula, nome) VALUES ('F0000010', 'Eduardo Fernandes');
INSERT INTO funcionario (matricula, nome) VALUES ('F0000011', 'Fernanda Souza');
INSERT INTO funcionario (matricula, nome) VALUES ('F0000012', 'Gustavo Nunes');
INSERT INTO funcionario (matricula, nome) VALUES ('F0000013', 'Sofia Castro');
INSERT INTO funcionario (matricula, nome) VALUES ('F0000014', 'André Almeida');
INSERT INTO funcionario (matricula, nome) VALUES ('F0000015', 'Camila Silva');



-- Inserir 15 linhas na tabela 'cliente' com emails baseados no nome
INSERT INTO cliente (email, rua, bairro) VALUES ('ana.costa@exemplo.com', 'Rua A', 'Bairro Centro');
INSERT INTO cliente (email, rua, bairro) VALUES ('carlos.silva@exemplo.com', 'Rua B', 'Bairro Jardim');
INSERT INTO cliente (email, rua, bairro) VALUES ('maria.oliveira@exemplo.com', 'Rua C', 'Bairro Vila');
INSERT INTO cliente (email, rua, bairro) VALUES ('joao.santos@exemplo.com', 'Rua D', 'Bairro Parque');
INSERT INTO cliente (email, rua, bairro) VALUES ('beatriz.almeida@exemplo.com', 'Rua E', 'Bairro São João');
INSERT INTO cliente (email, rua, bairro) VALUES ('felipe.rodrigues@exemplo.com', 'Rua F', 'Bairro Novo');
INSERT INTO cliente (email, rua, bairro) VALUES ('patricia.lima@exemplo.com', 'Rua G', 'Bairro Sol');
INSERT INTO cliente (email, rua, bairro) VALUES ('ricardo.martins@exemplo.com', 'Rua H', 'Bairro Leste');
INSERT INTO cliente (email, rua, bairro) VALUES ('luciana.pereira@exemplo.com', 'Rua I', 'Bairro Oeste');
INSERT INTO cliente (email, rua, bairro) VALUES ('eduardo.fernandes@exemplo.com', 'Rua J', 'Bairro Norte');
INSERT INTO cliente (email, rua, bairro) VALUES ('fernanda.souza@exemplo.com', 'Rua K', 'Bairro Sul');
INSERT INTO cliente (email, rua, bairro) VALUES ('gustavo.nunes@exemplo.com', 'Rua L', 'Bairro Alto');
INSERT INTO cliente (email, rua, bairro) VALUES ('sofia.castro@exemplo.com', 'Rua M', 'Bairro Jardim América');
INSERT INTO cliente (email, rua, bairro) VALUES ('andre.almeida@exemplo.com', 'Rua N', 'Bairro Jardim Europa');
INSERT INTO cliente (email, rua, bairro) VALUES ('camila.silva@exemplo.com', 'Rua O', 'Bairro Vila Nova');

-- Inserir 15 linhas na tabela 'endereco'
INSERT INTO endereco (cep, cep2, id_cliente) VALUES ('12345678', '87654321', 'ana.costa@exemplo.com');
INSERT INTO endereco (cep, cep2, id_cliente) VALUES ('23456789', NULL, 'carlos.silva@exemplo.com');
INSERT INTO endereco (cep, cep2, id_cliente) VALUES ('34567890', '09876543', 'maria.oliveira@exemplo.com');
INSERT INTO endereco (cep, cep2, id_cliente) VALUES ('45678901', NULL, 'joao.santos@exemplo.com');
INSERT INTO endereco (cep, cep2, id_cliente) VALUES ('56789012', '21098765', 'beatriz.almeida@exemplo.com');
INSERT INTO endereco (cep, cep2, id_cliente) VALUES ('67890123', NULL, 'felipe.rodrigues@exemplo.com');
INSERT INTO endereco (cep, cep2, id_cliente) VALUES ('78901234', '32109876', 'patricia.lima@exemplo.com');
INSERT INTO endereco (cep, cep2, id_cliente) VALUES ('89012345', NULL, 'ricardo.martins@exemplo.com');
INSERT INTO endereco (cep, cep2, id_cliente) VALUES ('90123456', '43210987', 'luciana.pereira@exemplo.com');
INSERT INTO endereco (cep, cep2, id_cliente) VALUES ('01234567', NULL, 'eduardo.fernandes@exemplo.com');
INSERT INTO endereco (cep, cep2, id_cliente) VALUES ('22345678', '87654321', 'fernanda.souza@exemplo.com');
INSERT INTO endereco (cep, cep2, id_cliente) VALUES ('23456789', NULL, 'gustavo.nunes@exemplo.com');
INSERT INTO endereco (cep, cep2, id_cliente) VALUES ('34567890', '09876543', 'sofia.castro@exemplo.com');
INSERT INTO endereco (cep, cep2, id_cliente) VALUES ('45678901', NULL, 'andre.almeida@exemplo.com');
INSERT INTO endereco (cep, cep2, id_cliente) VALUES ('56789012', '21098765', 'camila.silva@exemplo.com');

-- Inserir 15 linhas na tabela 'telefone'
INSERT INTO telefone (numero, id_cliente) VALUES ('(11) 99999-0001', 'ana.costa@exemplo.com');
INSERT INTO telefone (numero, id_cliente) VALUES ('(11) 99999-0002', 'carlos.silva@exemplo.com');
INSERT INTO telefone (numero, id_cliente) VALUES ('(11) 99999-0003', 'maria.oliveira@exemplo.com');
INSERT INTO telefone (numero, id_cliente) VALUES ('(11) 99999-0004', 'joao.santos@exemplo.com');
INSERT INTO telefone (numero, id_cliente) VALUES ('(11) 99999-0005', 'beatriz.almeida@exemplo.com');
INSERT INTO telefone (numero, id_cliente) VALUES ('(11) 99999-0006', 'felipe.rodrigues@exemplo.com');
INSERT INTO telefone (numero, id_cliente) VALUES ('(11) 99999-0007', 'patricia.lima@exemplo.com');
INSERT INTO telefone (numero, id_cliente) VALUES ('(11) 99999-0008', 'ricardo.martins@exemplo.com');
INSERT INTO telefone (numero, id_cliente) VALUES ('(11) 99999-0009', 'luciana.pereira@exemplo.com');
INSERT INTO telefone (numero, id_cliente) VALUES ('(11) 99999-0010', 'eduardo.fernandes@exemplo.com');
INSERT INTO telefone (numero, id_cliente) VALUES ('(11) 99999-0011', 'fernanda.souza@exemplo.com');
INSERT INTO telefone (numero, id_cliente) VALUES ('(11) 99999-0012', 'gustavo.nunes@exemplo.com');
INSERT INTO telefone (numero, id_cliente) VALUES ('(11) 99999-0013', 'sofia.castro@exemplo.com');
INSERT INTO telefone (numero, id_cliente) VALUES ('(11) 99999-0014', 'andre.almeida@exemplo.com');
INSERT INTO telefone (numero, id_cliente) VALUES ('(11) 99999-0015', 'camila.silva@exemplo.com');

-- Inserir 15 linhas na tabela 'pedido'
INSERT INTO pedido (status, valor_total, id_cliente, id_preparador, id_inspetor) VALUES ('Em Separação', 2999.99, 'ana.costa@exemplo.com', 'F0000001', 'F0000002');
INSERT INTO pedido (status, valor_total, id_cliente, id_preparador, id_inspetor) VALUES ('Enviado', 4999.99, 'carlos.silva@exemplo.com', 'F0000003', 'F0000004');
INSERT INTO pedido (status, valor_total, id_cliente, id_preparador, id_inspetor) VALUES ('Recebido', 399.99, 'maria.oliveira@exemplo.com', 'F0000005', 'F0000006');
INSERT INTO pedido (status, valor_total, id_cliente, id_preparador, id_inspetor) VALUES ('Em Separação', 799.99, 'joao.santos@exemplo.com', 'F0000007', 'F0000008');
INSERT INTO pedido (status, valor_total, id_cliente, id_preparador, id_inspetor) VALUES ('Enviado', 2499.99, 'beatriz.almeida@exemplo.com', 'F0000009', 'F0000010');
INSERT INTO pedido (status, valor_total, id_cliente, id_preparador, id_inspetor) VALUES ('Recebido', 299.99, 'felipe.rodrigues@exemplo.com', 'F0000011', 'F0000012');
INSERT INTO pedido (status, valor_total, id_cliente, id_preparador, id_inspetor) VALUES ('Em Separação', 1199.99, 'patricia.lima@exemplo.com', 'F0000013', 'F0000014');
INSERT INTO pedido (status, valor_total, id_cliente, id_preparador, id_inspetor) VALUES ('Enviado', 699.99, 'ricardo.martins@exemplo.com', 'F0000015', 'F0000001');
INSERT INTO pedido (status, valor_total, id_cliente, id_preparador, id_inspetor) VALUES ('Recebido', 3499.99, 'luciana.pereira@exemplo.com', 'F0000002', 'F0000003');
INSERT INTO pedido (status, valor_total, id_cliente, id_preparador, id_inspetor) VALUES ('Em Separação', 129.99, 'eduardo.fernandes@exemplo.com', 'F0000004', 'F0000005');
INSERT INTO pedido (status, valor_total, id_cliente, id_preparador, id_inspetor) VALUES ('Enviado', 249.99, 'fernanda.souza@exemplo.com', 'F0000006', 'F0000007');
INSERT INTO pedido (status, valor_total, id_cliente, id_preparador, id_inspetor) VALUES ('Recebido', 399.99, 'gustavo.nunes@exemplo.com', 'F0000008', 'F0000009');
INSERT INTO pedido (status, valor_total, id_cliente, id_preparador, id_inspetor) VALUES ('Em Separação', 1199.99, 'sofia.castro@exemplo.com', 'F0000010', 'F0000011');
INSERT INTO pedido (status, valor_total, id_cliente, id_preparador, id_inspetor) VALUES ('Enviado', 1599.99, 'andre.almeida@exemplo.com', 'F0000012', 'F0000013');
INSERT INTO pedido (status, valor_total, id_cliente, id_preparador, id_inspetor) VALUES ('Recebido', 899.99, 'camila.silva@exemplo.com', 'F0000014', 'F0000015');

-- Inserir 10 linhas na tabela 'contem'
INSERT INTO contem (id_produto, id_pedido) VALUES ('P0000001', 1);
INSERT INTO contem (id_produto, id_pedido) VALUES ('P0000002', 2);
INSERT INTO contem (id_produto, id_pedido) VALUES ('P0000003', 3);
INSERT INTO contem (id_produto, id_pedido) VALUES ('P0000004', 4);
INSERT INTO contem (id_produto, id_pedido) VALUES ('P0000005', 5);
INSERT INTO contem (id_produto, id_pedido) VALUES ('P0000006', 6);
INSERT INTO contem (id_produto, id_pedido) VALUES ('P0000007', 7);
INSERT INTO contem (id_produto, id_pedido) VALUES ('P0000008', 8);
INSERT INTO contem (id_produto, id_pedido) VALUES ('P0000009', 9);
INSERT INTO contem (id_produto, id_pedido) VALUES ('P0000010', 10);

SELECT * FROM produto;
SELECT * FROM categoria;
SELECT * FROM funcionario;
SELECT * FROM cliente;
SELECT * FROM telefone;
SELECT * FROM endereco;
SELECT * FROM pedido;
SELECT * FROM contem;