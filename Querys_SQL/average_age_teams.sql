SELECT 
    time_mandante AS time,
    AVG(idade_media_titular_mandante) AS idade_media
FROM 
    'basedosdados.mundo_transfermarkt_competicoes.brasileirao_serie_a'
WHERE 
    ano_campeonato = 2024
GROUP BY 
    time
ORDER BY 
    idade_media DESC;