SELECT
*
FROM (
    SELECT
        time_mandante as time,
        SUM(gols_mandante) AS gols_mandante,
    FROM
        'basedosdados.mundo_transfermarkt_competicoes.brasileirao_serie_a'
    GROUP BY
        time
    ORDER BY
) AS mandante
FULL OUTER JOIN (
    SELECT
        time_visitante AS time,
        SUM(gols_visitante) AS gols_visitante
    FROM
        'basedosdados.mundo_transfermarkt_competicoes.brasileirao_serie_a'
    GROUP BY
        time
) AS visitante
ON mandante.time = visitante.time
ORDER BY
    mandante.gols_mandante DESC,
    visitante.gols_visitante DESC