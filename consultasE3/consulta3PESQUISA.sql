--1. Consulte a nota média de cada produto (sobre a média das questões) para cada uma das pesquisas. Liste o título e a data da pesquisa, seguido dos produtos e suas medias
SELECT
    p.nome AS Pesquisa,
    p.data AS Data,
    pr.sku AS produto_sku,
    AVG(CASE
            WHEN per.likert = '1' THEN 1
            WHEN per.likert = '2' THEN 2
            WHEN per.likert = '3' THEN 3
            WHEN per.likert = '4' THEN 4
            WHEN per.likert = '5' THEN 5
            WHEN per.likert = '6' THEN 6
            WHEN per.likert = '7' THEN 7
            ELSE NULL
        END) AS nota_media_pergunta
FROM pesquisa p
INNER JOIN contem c ON p.id_pesquisa = c.id_pesquisa
INNER JOIN pergunta per ON c.id_pergunta = per.id_pergunta
INNER JOIN responde r ON r.id_pesquisa = p.id_pesquisa AND r.id_participante = r.id_participante
INNER JOIN possui po ON po.id_participante = r.id_participante
INNER JOIN produto pr ON pr.sku = po.sku
GROUP BY p.id_pesquisa, pr.sku
ORDER BY p.data, pr.sku;



--3. Liste somente os produtos com média >=4 em ambas as pesquisas
