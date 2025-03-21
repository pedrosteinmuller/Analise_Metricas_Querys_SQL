-- Calcula a média de público nos últimos 10 anos para o Brasileirão Série A
WITH ultimos_10_anos AS (
    SELECT 
        ano,
        publico
    FROM 
        'basedosdados.mundo_transfermarkt_competicoes.brasileirao_serie_a'
    WHERE 
        ano >= strftime('%Y', 'now') - 10
)

SELECT 
    AVG(publico) AS media_publico
FROM 
    ultimos_10_anos;