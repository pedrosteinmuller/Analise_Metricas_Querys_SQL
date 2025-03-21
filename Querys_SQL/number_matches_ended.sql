SELECT 
    COUNT(*) 
FROM 
    'basedosdados.mundo_transfermarkt_competicoes.brasileirao_serie_a'
WHERE 
    gols_mandante = 0 AND gols_visitante = 0;