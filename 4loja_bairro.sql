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
    id_fornecedor VARCHAR(14) REFERENCES fornecedor(cnpj),
    id_produto VARCHAR(8) REFERENCES produto(sku),
    PRIMARY KEY (id_fornecedor, id_produto)
);

CREATE TABLE cliente(
    cpf VARCHAR(11) PRIMARY KEY,
    nome VARCHAR(30),
    rua VARCHAR(30),
    bairro VARCHAR(20),
    telefone VARCHAR(14)
);

CREATE TABLE venda(
    id_produto VARCHAR(8) REFERENCES produto(sku),
    id_cliente VARCHAR(11) REFERENCES cliente(cpf),
    quantidade INT,
    valor_total FLOAT,
    data DATE,
    PRIMARY KEY (id_produto, id_cliente)
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