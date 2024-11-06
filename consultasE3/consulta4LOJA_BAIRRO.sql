--1. Qual o total de vendas realizadas para cada cliente? Mostre quantidade e preço total.
SELECT
    c.nome AS nome_cliente,
    SUM(v.quantidade) AS quantidade_total,
    SUM(v.valor_total) AS preco_total
FROM venda v
INNER JOIN cliente c ON v.id_cliente = c.cpf
GROUP BY c.nome;



--2. Quais produtos estão com estoque baixo (< 5 itens)? Liste o produto
SELECT
    p.nome AS Produto,
    p.quantidade AS estoque
FROM
    produto p
LEFT JOIN
    fornece fe ON p.sku = fe.id_produto
LEFT JOIN
    fornecedor f ON fe.id_fornecedor = f.cnpj
WHERE
    p.quantidade <= 5;



--3. Liste os 4 produtos mais vendidos e suas quantidades. Na mesma consulta, traga quantos clientes distintos os compraram
SELECT
    p.nome AS Produto,
    SUM(v.quantidade) AS Total_vendas,
    COUNT(DISTINCT v.id_cliente) AS Clientes_dif
FROM venda v
INNER JOIN produto p ON v.id_produto = p.sku
GROUP BY p.sku
ORDER BY Total_vendas DESC
LIMIT 4;



--4. Qual é o valor médio de compra (ticket médio) de cada cliente? E da loja como um todoo
SELECT
    cliente.nome AS cliente,
    AVG(venda.valor_total) AS ticket_medio_cliente,
    (SELECT AVG(valor_total) FROM venda) AS ticket_medio_loja
FROM
    venda
INNER JOIN
    cliente ON venda.id_cliente = cliente.cpf
GROUP BY
    cliente.cpf;

--5. Liste a quantidade de produtos vendidos por dia da semana
SELECT
    CASE
        WHEN strftime('%w', v.data) = '0' THEN 'Domingo'
        WHEN strftime('%w', v.data) = '1' THEN 'Segunda-feira'
        WHEN strftime('%w', v.data) = '2' THEN 'Terça-feira'
        WHEN strftime('%w', v.data) = '3' THEN 'Quarta-feira'
        WHEN strftime('%w', v.data) = '4' THEN 'Quinta-feira'
        WHEN strftime('%w', v.data) = '5' THEN 'Sexta-feira'
        WHEN strftime('%w', v.data) = '6' THEN 'Sábado'
    END AS Dia_da_semana,
    SUM(v.quantidade) AS Qntd_vendida
FROM venda v
GROUP BY Dia_da_semana
ORDER BY Dia_da_semana;



--6. Qual o fornecedor teve a maior quantidade de produtos vendidos?
SELECT
    f.nome AS Fornecedor,
    SUM(v.quantidade) AS Qntd_vendida
FROM
    venda v
INNER JOIN produto p ON v.id_produto = p.sku
INNER JOIN fornece fn ON p.sku = fn.id_produto
INNER JOIN fornecedor f ON fn.id_fornecedor = f.cnpj
GROUP BY f.cnpj
ORDER BY Qntd_vendida DESC
LIMIT 1;



--7. Liste todas as vendas para o primeiro produto cadastrado. O relatorio deve conter produto, fornecedor, cliente, data de venda e quantidade
SELECT
    DISTINCT p.nome AS produto,
    f.nome AS fornecedor,
    c.nome AS cliente,
    v.data AS data_venda,
    v.quantidade AS quantidade
FROM venda v
INNER JOIN produto p ON v.id_produto = p.sku
INNER JOIN fornece fn ON p.sku = fn.id_produto
INNER JOIN fornecedor f ON fn.id_fornecedor = f.cnpj
INNER JOIN cliente c ON v.id_cliente = c.cpf
WHERE p.sku = (SELECT sku
               FROM produto
               ORDER BY sku
               LIMIT 1)
ORDER BY v.data;
