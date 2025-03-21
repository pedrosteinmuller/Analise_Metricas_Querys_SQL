SELECT time, sum(gols) as total_gols
FROM (
    SELECT mandante as time, gols_mandante as gols
    FROM 'basedosdados.mundo_transfermarkt_competicoes.brasileirao_serie_a'
    UNION ALL
    SELECT visitante as time, gols_visitante as gols
    FROM 'basedosdados.mundo_transfermarkt_competicoes.brasileirao_serie_a'
) AS todos_gols
GROUP BY time
ORDER BY total_gols DESC
LIMIT 10;