SELECT 
    time AS time_com_mais_faltas,
    SUM(faltas_cometidas) AS total_faltas
FROM 
    'basedosdados.mundo_transfermarkt_competicoes.brasileirao_serie_a'
GROUP BY 
    time
ORDER BY 
    total_faltas DESC
LIMIT 1;