SELECT 
    team,
    SUM(goals) AS total_goals
FROM (
    SELECT home_team AS team, home_goals AS goals
    FROM matches
    UNION ALL
    SELECT away_team AS team, away_goals AS goals
    FROM matches
) AS combined
GROUP BY team
ORDER BY total_goals DESC;