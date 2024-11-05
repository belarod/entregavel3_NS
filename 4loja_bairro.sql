CREATE TABLE fornecedor(
    cnpj VARCHAR(14) PRIMARY KEY,
    nome VARCHAR(30),
    rua VARCHAR(30),
    bairro VARCHAR(20),
    telefone VARCHAR(14)
);

CREATE TABLE produto(
    sku VARCHAR(8) PRIMARY KEY,
    nome VARCHAR(30),
    local VARCHAR(20),
    quantidade INT,
    preco FLOAT
);

CREATE TABLE fornece(
    id_fornece INTEGER PRIMARY KEY AUTOINCREMENT,
    id_fornecedor VARCHAR(14) REFERENCES fornecedor(cnpj),
    id_produto VARCHAR(8) REFERENCES produto(sku)
);

CREATE TABLE cliente(
    cpf VARCHAR(11) PRIMARY KEY,
    nome VARCHAR(30),
    rua VARCHAR(30),
    bairro VARCHAR(20),
    telefone VARCHAR(14)
);

CREATE TABLE venda(
    id_venda INTEGER PRIMARY KEY AUTOINCREMENT,
    id_produto VARCHAR(8) REFERENCES produto(sku),
    id_cliente VARCHAR(11) REFERENCES cliente(cpf),
    quantidade INT,
    valor_total FLOAT,
    data DATE
);

-- Inserir 15 linhas na tabela 'fornecedor'
INSERT INTO fornecedor (cnpj, nome, rua, bairro, telefone) VALUES ('12345678000195', 'Fornecedor A', 'Rua das Flores', 'Jardim das Rosas', '(11) 1234-5678');
INSERT INTO fornecedor (cnpj, nome, rua, bairro, telefone) VALUES ('23456789000196', 'Fornecedor B', 'Rua dos Lírios', 'Centro', '(21) 2345-6789');
INSERT INTO fornecedor (cnpj, nome, rua, bairro, telefone) VALUES ('34567890000197', 'Fornecedor C', 'Avenida Brasil', 'Zona Norte', '(31) 3456-7890');
INSERT INTO fornecedor (cnpj, nome, rua, bairro, telefone) VALUES ('45678901000198', 'Fornecedor D', 'Rua das Orquídeas', 'Vila Mariana', '(41) 4567-8901');
INSERT INTO fornecedor (cnpj, nome, rua, bairro, telefone) VALUES ('56789012000199', 'Fornecedor E', 'Rua do Sol', 'Centro', '(51) 5678-9012');
INSERT INTO fornecedor (cnpj, nome, rua, bairro, telefone) VALUES ('67890123000100', 'Fornecedor F', 'Avenida Paulista', 'Jardim Paulista', '(61) 6789-0123');
INSERT INTO fornecedor (cnpj, nome, rua, bairro, telefone) VALUES ('78901234000101', 'Fornecedor G', 'Rua do Comércio', 'Bairro Novo', '(71) 7890-1234');
INSERT INTO fornecedor (cnpj, nome, rua, bairro, telefone) VALUES ('89012345000102', 'Fornecedor H', 'Rua da Paz', 'Vila Velha', '(81) 8901-2345');
INSERT INTO fornecedor (cnpj, nome, rua, bairro, telefone) VALUES ('90123456000103', 'Fornecedor I', 'Rua dos Girassóis', 'São Pedro', '(91) 9012-3456');
INSERT INTO fornecedor (cnpj, nome, rua, bairro, telefone) VALUES ('01234567000104', 'Fornecedor J', 'Avenida Independência', 'Centro Histórico', '(11) 0123-4567');
INSERT INTO fornecedor (cnpj, nome, rua, bairro, telefone) VALUES ('12345678000105', 'Fornecedor K', 'Rua das Acácias', 'Parque da Cidade', '(21) 1234-5678');
INSERT INTO fornecedor (cnpj, nome, rua, bairro, telefone) VALUES ('23456789000106', 'Fornecedor L', 'Rua das Palmeiras', 'Vila do Sol', '(31) 2345-6789');
INSERT INTO fornecedor (cnpj, nome, rua, bairro, telefone) VALUES ('34567890000107', 'Fornecedor M', 'Avenida das Américas', 'Zona Sul', '(41) 3456-7890');
INSERT INTO fornecedor (cnpj, nome, rua, bairro, telefone) VALUES ('45678901000108', 'Fornecedor N', 'Rua dos Pinheiros', 'Vila Nova', '(51) 4567-8901');
INSERT INTO fornecedor (cnpj, nome, rua, bairro, telefone) VALUES ('56789012000109', 'Fornecedor O', 'Rua do Bosque', 'Centro', '(61) 5678-9012');

-- Inserir 15 linhas na tabela 'produto'
INSERT INTO produto (sku, nome, local, quantidade, preco) VALUES ('P0000001', 'Produto A', 'Prateleira 1', 100, 29.99);
INSERT INTO produto (sku, nome, local, quantidade, preco) VALUES ('P0000002', 'Produto B', 'Prateleira 2', 200, 59.99);
INSERT INTO produto (sku, nome, local, quantidade, preco) VALUES ('P0000003', 'Produto C', 'Prateleira 3', 150, 99.99);
INSERT INTO produto (sku, nome, local, quantidade, preco) VALUES ('P0000004', 'Produto D', 'Prateleira 1', 120, 12.49);
INSERT INTO produto (sku, nome, local, quantidade, preco) VALUES ('P0000005', 'Produto E', 'Prateleira 2', 180, 22.89);
INSERT INTO produto (sku, nome, local, quantidade, preco) VALUES ('P0000006', 'Produto F', 'Prateleira 3', 90, 45.00);
INSERT INTO produto (sku, nome, local, quantidade, preco) VALUES ('P0000007', 'Produto G', 'Prateleira 1', 60, 70.55);
INSERT INTO produto (sku, nome, local, quantidade, preco) VALUES ('P0000008', 'Produto H', 'Prateleira 2', 75, 35.75);
INSERT INTO produto (sku, nome, local, quantidade, preco) VALUES ('P0000009', 'Produto I', 'Prateleira 3', 85, 85.20);
INSERT INTO produto (sku, nome, local, quantidade, preco) VALUES ('P0000010', 'Produto J', 'Prateleira 1', 110, 55.40);
INSERT INTO produto (sku, nome, local, quantidade, preco) VALUES ('P0000011', 'Produto K', 'Prateleira 2', 95, 30.99);
INSERT INTO produto (sku, nome, local, quantidade, preco) VALUES ('P0000012', 'Produto L', 'Prateleira 3', 85, 44.10);
INSERT INTO produto (sku, nome, local, quantidade, preco) VALUES ('P0000013', 'Produto M', 'Prateleira 1', 70, 66.25);
INSERT INTO produto (sku, nome, local, quantidade, preco) VALUES ('P0000014', 'Produto N', 'Prateleira 2', 55, 77.85);
INSERT INTO produto (sku, nome, local, quantidade, preco) VALUES ('P0000015', 'Produto O', 'Prateleira 3', 40, 54.60);

-- Inserir 10 linhas na tabela 'fornece'
INSERT INTO fornece (id_fornecedor, id_produto) VALUES ('12345678000195', 'P0000001');
INSERT INTO fornece (id_fornecedor, id_produto) VALUES ('23456789000196', 'P0000002');
INSERT INTO fornece (id_fornecedor, id_produto) VALUES ('34567890000197', 'P0000003');
INSERT INTO fornece (id_fornecedor, id_produto) VALUES ('45678901000198', 'P0000004');
INSERT INTO fornece (id_fornecedor, id_produto) VALUES ('56789012000199', 'P0000005');
INSERT INTO fornece (id_fornecedor, id_produto) VALUES ('67890123000100', 'P0000006');
INSERT INTO fornece (id_fornecedor, id_produto) VALUES ('78901234000101', 'P0000007');
INSERT INTO fornece (id_fornecedor, id_produto) VALUES ('89012345000102', 'P0000008');
INSERT INTO fornece (id_fornecedor, id_produto) VALUES ('90123456000103', 'P0000009');
INSERT INTO fornece (id_fornecedor, id_produto) VALUES ('01234567000104', 'P0000010');

-- Inserir 10 linhas na tabela 'venda'
INSERT INTO venda (id_produto, id_cliente, quantidade, valor_total, data) VALUES ('P0000001', '11122233344', 3, 89.97, '2024-09-01');
INSERT INTO venda (id_produto, id_cliente, quantidade, valor_total, data) VALUES ('P0000002', '22233344455', 5, 299.95, '2024-09-02');
INSERT INTO venda (id_produto, id_cliente, quantidade, valor_total, data) VALUES ('P0000003', '33344455566', 2, 199.98, '2024-09-03');
INSERT INTO venda (id_produto, id_cliente, quantidade, valor_total, data) VALUES ('P0000004', '44455566677', 10, 124.90, '2024-09-04');
INSERT INTO venda (id_produto, id_cliente, quantidade, valor_total, data) VALUES ('P0000005', '55566677788', 8, 183.12, '2024-09-05');
INSERT INTO venda (id_produto, id_cliente, quantidade, valor_total, data) VALUES ('P0000006', '66677788899', 4, 180.00, '2024-09-06');
INSERT INTO venda (id_produto, id_cliente, quantidade, valor_total, data) VALUES ('P0000007', '77788899900', 6, 423.30, '2024-09-07');
INSERT INTO venda (id_produto, id_cliente, quantidade, valor_total, data) VALUES ('P0000008', '88899900011', 7, 250.25, '2024-09-08');
INSERT INTO venda (id_produto, id_cliente, quantidade, valor_total, data) VALUES ('P0000009', '99900011122', 5, 426.00, '2024-09-09');
INSERT INTO venda (id_produto, id_cliente, quantidade, valor_total, data) VALUES ('P0000010', '00011122233', 3, 166.20, '2024-09-10');

-- Inserir 15 linhas na tabela 'cliente'
INSERT INTO cliente (cpf, nome, rua, bairro, telefone) VALUES ('11122233344', 'Ana Oliveira', 'Rua das Palmeiras', 'Centro', '(11) 9876-5432');
INSERT INTO cliente (cpf, nome, rua, bairro, telefone) VALUES ('22233344455', 'Carlos Santos', 'Rua das Acácias', 'Jardim Bela Vista', '(21) 8765-4321');
INSERT INTO cliente (cpf, nome, rua, bairro, telefone) VALUES ('33344455566', 'Mariana Silva', 'Avenida Central', 'Zona Norte', '(31) 7654-3210');
INSERT INTO cliente (cpf, nome, rua, bairro, telefone) VALUES ('44455566677', 'Felipe Costa', 'Rua dos Lírios', 'Vila Mariana', '(41) 6543-2109');
INSERT INTO cliente (cpf, nome, rua, bairro, telefone) VALUES ('55566677788', 'Juliana Pereira', 'Rua do Sol', 'Centro', '(51) 5432-1098');
INSERT INTO cliente (cpf, nome, rua, bairro, telefone) VALUES ('66677788899', 'Ricardo Almeida', 'Avenida Paulista', 'Jardim Paulista', '(61) 4321-0987');
INSERT INTO cliente (cpf, nome, rua, bairro, telefone) VALUES ('77788899900', 'Roberta Lima', 'Rua do Comércio', 'Bairro Novo', '(71) 3210-9876');
INSERT INTO cliente (cpf, nome, rua, bairro, telefone) VALUES ('88899900011', 'Eduardo Fernandes', 'Rua das Flores', 'Vila Velha', '(81) 2109-8765');
INSERT INTO cliente (cpf, nome, rua, bairro, telefone) VALUES ('99900011122', 'Paula Mendes', 'Rua dos Girassóis', 'São Pedro', '(91) 1098-7654');
INSERT INTO cliente (cpf, nome, rua, bairro, telefone) VALUES ('00011122233', 'Lucas Martins', 'Avenida Independência', 'Centro Histórico', '(11) 0987-6543');
INSERT INTO cliente (cpf, nome, rua, bairro, telefone) VALUES ('11122233345', 'Fernanda Rocha', 'Rua das Palmeiras', 'Centro', '(21) 9876-5432');
INSERT INTO cliente (cpf, nome, rua, bairro, telefone) VALUES ('22233344456', 'Gabriel Silva', 'Rua das Acácias', 'Jardim Bela Vista', '(31) 8765-4321');
INSERT INTO cliente (cpf, nome, rua, bairro, telefone) VALUES ('33344455567', 'Luana Costa', 'Avenida Central', 'Zona Norte', '(41) 7654-3210');
INSERT INTO cliente (cpf, nome, rua, bairro, telefone) VALUES ('44455566678', 'Thiago Oliveira', 'Rua dos Lírios', 'Vila Mariana', '(51) 6543-2109');
INSERT INTO cliente (cpf, nome, rua, bairro, telefone) VALUES ('55566677789', 'Camila Rodrigues', 'Rua do Sol', 'Centro', '(61) 5432-1098');

SELECT * FROM produto;
SELECT * FROM fornece;
SELECT * FROM cliente;
SELECT * FROM venda;
SELECT * FROM fornecedor;



--cadastre 10 clientes e 4 fornecedores
INSERT INTO cliente (cpf, nome, rua, bairro, telefone) VALUES
('12345678901', 'Carlos Silva', 'Av. Paulista, 1000', 'Bela Vista', '(11) 99888-7777'),
('23456789012', 'Maria Oliveira', 'Rua dos Três, 500', 'Vila Progresso', '(21) 97654-3210'),
('34567890123', 'João Santos', 'Rua da Paz, 200', 'Centro', '(41) 98567-4321'),
('45678901234', 'Ana Costa', 'Rua Verde, 150', 'Jardim Alegre', '(61) 93456-7890'),
('56789012345', 'Paulo Almeida', 'Av. Rio Branco, 850', 'Centro', '(11) 92345-6789'),
('67890123456', 'Juliana Pereira', 'Rua das Flores, 300', 'Jardim Europa', '(21) 98877-6543'),
('78901234567', 'Roberto Souza', 'Rua do Sol, 400', 'Vila Nova', '(31) 92222-3333'),
('89012345678', 'Mariana Lima', 'Av. Brasil, 1200', 'Centro', '(51) 91111-2222'),
('90123456789', 'Eduardo Ferreira', 'Rua X, 500', 'Bairro Alegre', '(61) 99999-5555'),
('01234567890', 'Luciana Rocha', 'Rua Y, 350', 'Vila Santa Clara', '(71) 99888-9999');
INSERT INTO fornecedor (cnpj, nome, rua, bairro, telefone) VALUES
('12345555500195', 'Fornecedor A', 'Rua A, 123', 'Centro', '(11) 1234-5678'),
('66665432000180', 'Fornecedor B', 'Rua B, 456', 'Jardim Paulista', '(11) 9876-5432'),
('11223377777122', 'Fornecedor C', 'Rua C, 789', 'Vila Progresso', '(21) 2345-6789'),
('33333788000144', 'Fornecedor D', 'Rua D, 101', 'Bairro Novo', '(31) 3456-7890');

--cadastre 10 produtos com nome, local (gandola/prateleira) preço e quantidade
INSERT INTO produto (sku, nome, local, quantidade, preco) VALUES
('PROD001', 'Produto A', 'Gândola', 100, 15.50),
('PROD002', 'Produto B', 'Prateleira', 200, 25.75),
('PROD003', 'Produto C', 'Gândola', 150, 35.00),
('PROD004', 'Produto D', 'Prateleira', 80, 12.99),
('PROD005', 'Produto E', 'Gândola', 50, 99.90),
('PROD006', 'Produto F', 'Prateleira', 300, 22.40),
('PROD007', 'Produto G', 'Gândola', 120, 17.60),
('PROD008', 'Produto H', 'Prateleira', 60, 49.99),
('PROD009', 'Produto I', 'Gândola', 200, 5.99),
('PROD010', 'Produto J', 'Prateleira', 150, 40.00);

--faça um insert na tabela fornece para cada um dos produtos  (passei o sku dos produtos)

INSERT INTO fornece (id_fornecedor, id_produto) VALUES
('12345678000195', 'P0000001'),
('23456789000196', 'P0000002'),
('34567890000197', 'P0000003'),
('45678901000198', 'P0000004'),
('56789012000199', 'P0000005'),
('67890123000100', 'P0000006'),
('78901234000101', 'P0000007'),
('89012345000102', 'P0000008'),
('90123456000103', 'P0000009'),
('01234567000104', 'P0000010'),
('12345678000105', 'P0000011'),
('23456789000106', 'P0000012'),
('34567890000107', 'P0000013'),
('45678901000108', 'P0000014'),
('56789012000109', 'P0000015'),
('12345555500195', 'P0000016'),
('66665432000180', 'P0000017'),
('11223377777122', 'P0000018');


--para esses 5 clientes 11122233344 22233344455 33344455566 44455566677 55566677788, simule 1 venda (entre 1 e 3 produtos de quantidade aleatoria, guarde a data e quantidade de produtos e valor total
INSERT INTO venda (id_produto, id_cliente, quantidade, valor_total, data)
VALUES
('P0000001', '11122233344', 2, (SELECT preco * 2 FROM produto WHERE sku = 'P0000001'), '2024-11-05'),
('P0000002', '11122233344', 1, (SELECT preco * 1 FROM produto WHERE sku = 'P0000002'), '2024-11-05'),
('P0000003', '22233344455', 1, (SELECT preco * 1 FROM produto WHERE sku = 'P0000003'), '2024-11-05'),
('P0000004', '22233344455', 1, (SELECT preco * 1 FROM produto WHERE sku = 'P0000004'), '2024-11-05'),
('P0000005', '22233344455', 1, (SELECT preco * 1 FROM produto WHERE sku = 'P0000005'), '2024-11-05'),
('P0000006', '33344455566', 1, (SELECT preco * 1 FROM produto WHERE sku = 'P0000006'), '2024-11-05'),
('P0000007', '33344455566', 2, (SELECT preco * 2 FROM produto WHERE sku = 'P0000007'), '2024-11-05'),
('P0000008', '44455566677', 3, (SELECT preco * 3 FROM produto WHERE sku = 'P0000008'), '2024-11-05'),
('P0000009', '55566677788', 2, (SELECT preco * 2 FROM produto WHERE sku = 'P0000009'), '2024-11-05');

--aumente o preço unitario em 10% para os 5 primeiros produtos. essa alteracao nao deve afetar os valores dos produtos ja vendidos
WITH primeiros_produtos AS (
    SELECT sku
    FROM produto
    ORDER BY sku
    LIMIT 5
)
UPDATE produto
SET preco = preco * 1.10
WHERE sku IN (SELECT sku FROM primeiros_produtos);

