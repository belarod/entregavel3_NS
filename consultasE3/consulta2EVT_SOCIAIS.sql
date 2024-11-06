--1. Liste todos os eventos cadastrados, ordenados pela data (mais próximo primeiro) e suas respectivas categorias
SELECT e.nome AS Evento,
       c.nome AS Categoria
FROM evento e
INNER JOIN categoria c ON e.categoria = c.nome
ORDER BY e.data;



--2. Liste os eventos que ao menos uma pessoa marcou como “Eu vou”
SELECT
    DISTINCT e.nome AS Evento
FROM
    evento e
INNER JOIN participa p ON e.id_evento = p.id_evento
ORDER BY e.data;



--3. Determine quais categorias de eventos têm o maior número de usuários interessados. Esse insight permite que a empresa entenda as preferências gerais dos usuários para otimizar a criação e a promoção de eventos
SELECT c.nome AS Categoria,
       COUNT(p.id_usuario) AS Usuários
FROM categoria c
INNER JOIN evento e ON e.categoria = c.nome
INNER JOIN participa p ON e.id_evento = p.id_evento
GROUP BY c.nome
ORDER BY Usuários DESC;



--4. Selecione as categorias que não possuem interesse dos clientes
SELECT DISTINCT c.nome
FROM categoria c
LEFT JOIN evento e ON e.categoria = c.nome
LEFT JOIN participa p ON e.id_evento = p.id_evento
WHERE p.id_usuario OR e.id_evento IS NULL;



--6. Analise o engajamento em eventos por faixa etária, identificando quais grupos demográficos (ex., jovens adultos, adultos, idosos) são mais propensos a se inscrever e participar dos eventos
SELECT
    CASE
        WHEN strftime('%Y', 'now') - strftime('%Y', u.data_nascimento) BETWEEN 18 AND 29 THEN 'Jovens (18-29)'
        WHEN strftime('%Y', 'now') - strftime('%Y', u.data_nascimento) BETWEEN 30 AND 59 THEN 'Adultos (30-59)'
        WHEN strftime('%Y', 'now') - strftime('%Y', u.data_nascimento) >= 60 THEN 'Idosos (60+)'
        ELSE 'Outro'
    END AS faixa_etaria,
    COUNT(DISTINCT p.id_usuario) AS qntd_participantes
FROM
    participa p
INNER JOIN usuario u ON u.id_usuario = p.id_usuario
INNER JOIN evento e ON e.id_evento = p.id_evento
GROUP BY
    faixa_etaria
ORDER BY
    qntd_participantes DESC;