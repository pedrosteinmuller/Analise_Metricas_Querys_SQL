SELECT 
    rodada AS
    SUM(gols_mandante + gols_visitante) AS total_goals
FROM 
    'basedosdados.mundo_transfermarkt_competicoes.brasileirao_serie_a'
GROUP BY 
    rodada
ORDER BY 
    total_goals DESC
LIMIT 10;