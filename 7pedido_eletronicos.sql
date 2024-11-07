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
    id_numero INTEGER PRIMARY KEY AUTOINCREMENT,
    numero VARCHAR(14),
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

--cadastre 5 categorias de prod
INSERT INTO categoria (nome, id_produto) VALUES
('Roupas', '12345678'),
('Calçados', '34567890'),
('Acessórios', '45678901'),
('Bolsas', '56789012'),
('Jeans', '23456789');

--cadastre 30 produtos entre essas categorias
INSERT INTO produto (sku, nome, descricao, quantidade, preco) VALUES
('12345678', 'Camiseta Branca', 'Camiseta de algodão branca', 50, 39.99),
('12345679', 'Camiseta Preta', 'Camiseta de algodão preta', 45, 42.99),
('12345680', 'Camisa Polo', 'Camisa polo masculina', 30, 59.99),
('12345681', 'Blusa de Frio', 'Blusa de frio feminina', 25, 79.99),
('12345682', 'Casaco', 'Casaco impermeável', 15, 129.99),
('23456789', 'Tênis Nike', 'Tênis esportivo Nike', 40, 299.90),
('23456790', 'Tênis Adidas', 'Tênis esportivo Adidas', 35, 279.90),
('23456791', 'Sapatênis', 'Sapatênis casual masculino', 20, 99.90),
('23456792', 'Bota Couro', 'Bota de couro masculina', 18, 249.90),
('23456793', 'Sandália Feminina', 'Sandália feminina casual', 60, 89.90),
('34567890', 'Relógio Digital', 'Relógio digital com pulseira de silicone', 30, 199.90),
('34567891', 'Pulseira de Couro', 'Pulseira masculina de couro', 50, 59.99),
('34567892', 'Óculos de Sol', 'Óculos de sol modelo aviador', 40, 149.90),
('34567893', 'Cinto Masculino', 'Cinto de couro masculino', 70, 79.90),
('34567894', 'Cachecol', 'Cachecol de lã', 25, 39.99),
('45678901', 'Bolsa Feminina', 'Bolsa feminina de couro', 40, 149.90),
('45678902', 'Mochila Escolar', 'Mochila escolar de lona', 35, 89.90),
('45678903', 'Bolsa de Viagem', 'Bolsa grande para viagem', 20, 199.90),
('45678904', 'Carteira Masculina', 'Carteira de couro masculina', 50, 49.90),
('45678905', 'Bolsa de Mão', 'Bolsa de mão feminina elegante', 30, 159.90),
('56789012', 'Calça Jeans Slim', 'Calça jeans slim masculina', 45, 99.90),
('56789013', 'Calça Jeans Feminina', 'Calça jeans feminina', 30, 109.90),
('56789014', 'Bermuda Jeans', 'Bermuda jeans masculina', 50, 69.90),
('56789015', 'Jaqueta Jeans', 'Jaqueta jeans masculina', 20, 159.90),
('56789016', 'Calça Jeans Escura', 'Calça jeans escura masculina', 25, 119.90),
('12345683', 'Blusa Feminina', 'Blusa feminina de manga longa', 40, 49.99),
('12345684', 'Camiseta Estampada', 'Camiseta estampada', 60, 34.99),
('12345685', 'Jaqueta de Couro', 'Jaqueta de couro feminina', 15, 199.90),
('12345686', 'Casaco de Inverno', 'Casaco de inverno masculino', 20, 229.90),
('12345687', 'Regata', 'Regata masculina', 70, 29.99),
('23456794', 'Tênis Casual', 'Tênis casual confortável', 50, 139.90),
('23456795', 'Chinelo', 'Chinelo de dedo masculino', 80, 19.90),
('23456796', 'Bota Feminina', 'Bota feminina de cano curto', 25, 169.90),
('23456797', 'Sapatênis Casual', 'Sapatênis casual feminino', 30, 129.90),
('23456798', 'Tênis Converse', 'Tênis Converse All Star', 40, 199.90),
('34567895', 'Boné', 'Boné de aba reta', 60, 29.90),
('34567896', 'Relógio de Pulso', 'Relógio de pulso modelo clássico', 45, 169.90),
('34567897', 'Bracelete', 'Bracelete de metal', 50, 49.90),
('34567898', 'Colar Masculino', 'Colar masculino de aço inoxidável', 40, 79.90),
('34567899', 'Meia de Algodão', 'Meia de algodão confortável', 100, 9.90),
('45678906', 'Bolsa Tiracolo', 'Bolsa tiracolo feminina', 30, 89.90),
('45678907', 'Mochila de Couro', 'Mochila de couro feminina', 20, 189.90),
('45678908', 'Bolsa de Ombro', 'Bolsa de ombro grande', 50, 109.90),
('45678909', 'Bolsa de Lona', 'Bolsa de lona para o dia a dia', 60, 79.90),
('45678910', 'Bolsa de Praia', 'Bolsa de praia grande', 25, 49.90),
('56789017', 'Calça Jeans Skinny', 'Calça jeans skinny feminina', 50, 129.90),
('56789018', 'Short Jeans', 'Short jeans feminino', 60, 79.90),
('56789019', 'Jaqueta Jeans Feminina', 'Jaqueta jeans feminina', 30, 139.90),
('56789020', 'Calça Jeans Rasgada', 'Calça jeans masculina rasgada', 35, 149.90),
('56789021', 'Saia Jeans', 'Saia jeans feminina', 40, 89.90);

--cadastre 5 clientes, cada um com pelo menos um endereco e necessariamente 2 telefones
INSERT INTO cliente (email, rua, bairro) VALUES
('cliente1@example.com', 'Rua A, 123', 'Bairro Central'),
('cliente2@example.com', 'Rua B, 456', 'Bairro Leste'),
('cliente3@example.com', 'Rua C, 789', 'Bairro Norte'),
('cliente4@example.com', 'Rua D, 101', 'Bairro Sul'),
('cliente5@example.com', 'Rua E, 202', 'Bairro Oeste');

INSERT INTO endereco (cep, cep2, id_cliente) VALUES
('12345678', NULL, 'cliente1@example.com'),
('23456789', '23456790', 'cliente2@example.com'),
('34567890', NULL, 'cliente3@example.com'),
('45678901', '45678902', 'cliente4@example.com'),
('56789012', NULL, 'cliente5@example.com');

INSERT INTO telefone (numero, id_cliente) VALUES
('11987654321', 'cliente1@example.com'),
('11234567890', 'cliente1@example.com'),
('11912345678', 'cliente2@example.com'),
('11345678901', 'cliente2@example.com'),
('11923456789', 'cliente3@example.com'),
('11456789012', 'cliente3@example.com'),
('11934567890', 'cliente4@example.com'),
('11987654321', 'cliente4@example.com'),
('11956789012', 'cliente5@example.com'),
('11876543210', 'cliente5@example.com');

--cadastre 3 funcionarios
INSERT INTO funcionario (matricula, nome) VALUES ('F001', 'Carlos Silva');
INSERT INTO funcionario (matricula, nome) VALUES ('F002', 'Ana Souza');
INSERT INTO funcionario (matricula, nome) VALUES ('F003', 'Bruno Oliveira');

--escolha 3 clientes, ssimue 2 vendas para cada um deles, a venda tera entre 1 e 3 produtos, de quantidades aleatorias. as quantidades deverao ser salvas junto com o preço unitario em cada item da venda. na venda tambem guarde a data, o meio, status (inicialmente como PEDIDO FEITO), a quantidadende produtos e valor total, utilize uma sub consulta apos cadastrasr os itens p atualizar/calcular o valor e a quantidade de produtos
INSERT INTO pedido (status, valor_total, id_cliente, id_preparador, id_inspetor)
VALUES ('PEDIDO FEITO', 0, 'cliente1@example.com', 'F001', 'F002');
INSERT INTO pedido (status, valor_total, id_cliente, id_preparador, id_inspetor)
VALUES ('PEDIDO FEITO', 0, 'cliente2@example.com', 'F002', 'F003');
INSERT INTO pedido (status, valor_total, id_cliente, id_preparador, id_inspetor)
VALUES ('PEDIDO FEITO', 0, 'cliente3@example.com', 'F001', 'F003');
ALTER TABLE contem ADD COLUMN quantidade INT;
ALTER TABLE contem ADD COLUMN preco_unitario FLOAT;
INSERT INTO contem (id_produto, id_pedido, quantidade, preco_unitario)
VALUES ('P001', 1, 2, 10.00);
INSERT INTO contem (id_produto, id_pedido, quantidade, preco_unitario)
VALUES ('P003', 1, 1, 15.00);
INSERT INTO contem (id_produto, id_pedido, quantidade, preco_unitario)
VALUES ('P002', 2, 3, 20.00);
INSERT INTO contem (id_produto, id_pedido, quantidade, preco_unitario)
VALUES ('P005', 3, 1, 30.00);
INSERT INTO contem (id_produto, id_pedido, quantidade, preco_unitario)
VALUES ('P004', 4, 3, 5.00);
INSERT INTO contem (id_produto, id_pedido, quantidade, preco_unitario)
VALUES ('P003', 5, 2, 15.00);
INSERT INTO contem (id_produto, id_pedido, quantidade, preco_unitario)
VALUES ('P001', 5, 1, 10.00);
INSERT INTO contem (id_produto, id_pedido, quantidade, preco_unitario)
VALUES ('P002', 6, 2, 20.00);
INSERT INTO contem (id_produto, id_pedido, quantidade, preco_unitario)
VALUES ('P004', 6, 1, 5.00);

UPDATE pedido
SET valor_total = (
        SELECT SUM(quantidade * preco_unitario)
        FROM contem
        WHERE contem.id_pedido = pedido.id_pedido
    );

--altere o status de 1 pedido de cada cliente para EM SEPARAÇAO. vincule um funcionario para fazer a separacao dos produtos, e um para ser o inspetor
UPDATE pedido
SET
    status = 'EM SEPARAÇÃO',
    id_preparador = '12345678',
    id_inspetor = '87654321'
WHERE id_cliente = 'cliente@example.com'
  AND status != 'EM SEPARAÇÃO';

 --altere o status de 1 pedido para cancelado
UPDATE pedido
SET
    status = 'CANCELADO'
WHERE id_cliente = 'cliente@example.com'
  AND id_pedido = 1;
