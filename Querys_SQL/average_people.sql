SELECT ano_campeonato, ROUND(AVG(publico), 2) AS media_publico,
from 'basedosdados.mundo_transfermarkt_competicoes.brasileirao_serie_a'
WHERE ano_campeonato >= 2014
GROUP BY ano_campeonato
ORDER BY media_publico DESC;