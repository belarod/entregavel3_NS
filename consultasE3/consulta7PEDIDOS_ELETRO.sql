--1. Quais são os produtos mais vendidos?
SELECT p.nome,
    SUM(p.quantidade) AS quantidade_vendida
FROM produto p;



--2. Qual é a porcentagem de pedidos que passam pela inspeção de qualidade?
SELECT (COUNT(p.id_pedido) * 100.0 / (SELECT COUNT(*) FROM pedido)) AS Porcentagem_inspeção
FROM pedido p
WHERE p.id_inspetor IS NOT NULL;



--5. Qual é o tempo médio de processamento de pedidos? Faça o cálculo com a data de venda e data de envio
SELECT AVG(DATE(p.data_envio) - DATE(p.data_venda)) AS Media_processamento
FROM pedido p
WHERE p.data_venda IS NOT NULL AND p.data_envio IS NOT NULL;

--7. Liste os dados de contato (um telefone em cada coluna) e endereço para todos os clientes
SELECT
    c.email AS Email,
    c.rua AS Rua,
    c.bairro AS Bairro,
    e.cep AS CEP1,
    e.cep2 AS CEP2,
    t1.numero AS Tel1,
    t2.numero AS Tel2
FROM cliente c
LEFT JOIN endereco e ON c.email = e.id_cliente
LEFT JOIN telefone t1 ON c.email = t1.id_cliente AND t1.id_numero = 1
LEFT JOIN telefone t2 ON c.email = t2.id_cliente AND t2.id_numero = 2;
