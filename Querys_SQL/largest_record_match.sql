SELECT 
    rodada,
    time_mandante,
    time_visitante,
    publico,
    estadio
FROM 
    'basedosdados.mundo_transfermarkt_competicoes.brasileirao_serie_a'
WHERE 
    publico = (SELECT MAX(publico) 
                FROM 'basedosdados.mundo_transfermarkt_competicoes.brasileirao_serie_a');