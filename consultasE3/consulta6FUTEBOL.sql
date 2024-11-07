--2. Qual jogador marcou mais gols? Liste o nome, equipe e quantidade de gols
SELECT
    j.nome AS jogador,
    e.nome AS equipe,
    SUM(jg.gol) AS total_gols
FROM jogador j
JOIN equipe e ON j.id_equipe = e.nome
JOIN joga jg ON j.id_jogador = jg.id_jogador
GROUP BY j.id_jogador, e.nome
ORDER BY total_gols DESC
LIMIT 1;



--3. Liste a quantidade de cartões amarelos e vermelhos (um em cada coluna) recebidos por cada jogador. Mostre somente os jogadores que receberam algum cartao
SELECT
    j.nome,
    COUNT(CASE WHEN c.cor = 'amarelo' THEN 1 END) AS Qntd_amarelo,
    COUNT(CASE WHEN c.cor = 'vermelho' THEN 1 END) AS Qntd_vermelho
FROM jogador j
INNER JOIN joga jo ON j.id_jogador = jo.id_jogador
INNER JOIN cartao c ON jo.id_joga = c.id_joga
GROUP BY j.id_jogador, j.nome
HAVING COUNT(c.id_cartao) > 0;



--4. Liste as equipes que não receberam cartões
SELECT e.nome AS equipe
FROM equipe e
WHERE NOT EXISTS (
    SELECT 1
    FROM joga j
    INNER JOIN cartao c ON j.id_joga = c.id_joga
    WHERE j.id_jogador IN (
        SELECT id_jogador
        FROM jogador
        WHERE id_equipe = e.nome
        )
    );



--5. Qual o local com mais número de partidas realizadas?
SELECT p.local,
    COUNT(*) AS Qntd_partidas
FROM participa p
GROUP BY p.local
ORDER BY Qntd_partidas DESC
LIMIT 1;