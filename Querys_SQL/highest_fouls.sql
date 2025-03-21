SELECT time, sum(faltas) as faltas
FROM (
    SELECT mandante as time, faltas_mandante as faltas
    FROM 'basedosdados.mundo_transfermarkt_competicoes.brasileirao_serie_a'
    UNION ALL
    SELECT visitante as time, faltas_visitante as faltas
    FROM 'basedosdados.mundo_transfermarkt_competicoes.brasileirao_serie_a'
) AS soma_faltas
GROUP BY time
ORDER BY faltas DESC
LIMIT 10;