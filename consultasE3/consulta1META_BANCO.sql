--1. Liste os funcionários que atingiram ou ultrapassaram 100% das metas em TODAS as categorias.
SELECT f.nome
FROM funcionario f
JOIN meta m ON f.id_funcionario = m.id_funcionario
JOIN venda v ON v.id_funcionario = f.id_funcionario AND v.id_categoria = m.id_categoria
WHERE v.quantidade >= m.quantidade
GROUP BY f.id_funcionario;



--2. Calcular a média de vendas realizadas em cada categoria (seguros, contas, financiamentos, e empréstimos), identificando as categorias com melhor e pior desempenho – traga em uma nova coluna o texto “Melhor” e “Pior”para a categoria correspondente, demais trarão “Mediano”
WITH MediaVendas AS (
    SELECT
        c.id_categoria, c.nome AS categoria_nome,
        AVG(v.quantidade) AS media_vendas
    FROM venda v
    JOIN categoria c ON v.id_categoria = c.id_categoria
    WHERE c.id_categoria IN (1, 2, 3, 4)
    GROUP BY c.id_categoria
),
Desempenho AS (
    SELECT
        id_categoria, categoria_nome, media_vendas,
        (SELECT MAX(media_vendas) FROM MediaVendas) AS maior_media,
        (SELECT MIN(media_vendas) FROM MediaVendas) AS menor_media
    FROM MediaVendas
)
SELECT
    id_categoria, categoria_nome, media_vendas,
    CASE
        WHEN media_vendas = maior_media THEN 'Melhor'
        WHEN media_vendas = menor_media THEN 'Pior'
        ELSE 'Mediano'
    END AS desempenho
FROM Desempenho
ORDER BY id_categoria DESC;



--3. Calcule a média das notas finais de avaliação para cada equipe (agrupando os funcionarios de acordo com o gestor) e verificando quais equipes estao com melhor desempenho geral
SELECT g.nome AS equipe_do_gestor,
       AVG(a.nota_final) AS media_nf
FROM gestor g
INNER JOIN avalia a ON g.id_gestor = a.id_gestor
INNER JOIN funcionario f ON f.id_gestor = a.id_gestor
INNER JOIN meta m ON m.id_meta = a.id_meta
GROUP BY g.nome
ORDER BY  media_nf DESC;



--4. Listar todos os funcionários que não atingiram suas metas em uma ou mais categorias, destacando a quantidade que faltou para cada categoria onde a meta não foi atingida
SELECT f.nome AS Funcionário,
       c.nome AS Categoria,
       (m.quantidade - SUM(v.quantidade)) AS quantidade_que_faltou
FROM funcionario f
INNER JOIN meta m ON f.id_meta = m.id_meta
INNER JOIN categoria c ON m.id_categoria = c.id_categoria
LEFT JOIN venda v ON f.id_funcionario = v.id_funcionario AND v.id_categoria = m.id_categoria
GROUP BY f.nome, c.nome
HAVING SUM(v.quantidade) < m.quantidade;