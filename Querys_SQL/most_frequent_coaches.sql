SELECT 
    tecnico COUNT(*) AS jogos
FROM 
    (SELECT 
        tecnico_mandante AS tecnico
    FROM
        'basedosdados.mundo_transfermarkt_competicoes.brasileirao_serie_a'
    UNION ALL
    SELECT 
        tecnico_visitante AS tecnico
    FROM
        'basedosdados.mundo_transfermarkt_competicoes.brasileirao_serie_a') AS tecnicos
GROUP BY tecnico
HAVING jogos >= 100 and tecnico <> ''
ORDER BY jogos DESC
