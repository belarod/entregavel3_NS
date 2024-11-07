--1. Quais são os 3 álbuns mais bem avaliados?
SELECT
    a.id_album,
    a.nome AS nome_album,
    AVG(CASE
        WHEN r.likert IS NOT NULL THEN CAST(r.likert AS INTEGER)
        ELSE NULL END) AS Media_review
FROM album a
INNER JOIN review r ON a.id_album = r.id_album
GROUP BY a.id_album
ORDER BY Media_review DESC
LIMIT 3;



--2. Quais álbuns são mais discutidos (maior qtd de reviews)?
SELECT
    a.id_album,
    a.nome AS Álbum,
    COUNT(r.id_review) AS Qntd_reviews
FROM album a
INNER JOIN review r ON a.id_album = r.id_album
GROUP BY a.id_album
ORDER BY Qntd_reviews DESC
LIMIT 3;



--3. Qual o tipo de mídia (cd, fita, vinil) com mais albuns disponiveis?
SELECT a.tipo_midia AS Tipo_mídia,
       COUNT(*) AS Qntd
FROM album a
WHERE tipo_midia IS NOT NULL
GROUP BY tipo_midia
ORDER BY Qntd DESC
LIMIT 1;



--4. Quais clientes são os maiores contribuidores de reviews de álbuns? E de Shows?
SELECT c.nome,
       COUNT(*) AS Qntd_total_reviews,
       SUM(CASE WHEN r.tipo = 'Álbum' THEN 1 ELSE 0 END) AS Qntd_reviews_album,
       SUM(CASE WHEN r.tipo = 'Turnê' THEN 1 ELSE 0 END) AS Qntd_reviews_show
FROM review r
INNER JOIN cliente c ON r.id_cliente = c.id_cliente
GROUP BY c.nome
ORDER BY Qntd_total_reviews DESC;



--5.Qual clientes não realizaram nenhuma avaliação?
SELECT c.nome
FROM cliente c
LEFT JOIN review r ON c.id_cliente = r.id_cliente
WHERE r.id_review IS NULL;



--6. Qual artista em a maior media de avaliacoes de seus albuns? E para shows? Faça uma relação de cada artista e seuas respectivas medias das reviews para álbuns e show, ordenando decrescentemente pela midia de ambas
SELECT
    a.nome AS nome_artista,
    COALESCE(AVG(r_album.likert), 0) AS Media_albuns,
    COALESCE(AVG(r_turne.likert), 0) AS Media_turne,
    (COALESCE(AVG(r_album.likert), 0) + COALESCE(AVG(r_turne.likert), 0)) / 2 AS Media
FROM artista a
LEFT JOIN turne t ON t.id_artista = a.id_artista
LEFT JOIN review r_turne ON r_turne.id_turne = t.id_turne
LEFT JOIN album al ON al.id_album = r_turne.id_album
LEFT JOIN review r_album ON r_album.id_album = al.id_album
GROUP BY a.nome
ORDER BY Media DESC;
