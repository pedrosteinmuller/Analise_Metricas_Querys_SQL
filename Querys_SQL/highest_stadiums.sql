-- Query to find the 10 stadiums with the highest average attendance
SELECT 
    stadium_name,
    AVG(attendance) AS average_attendance
FROM 
    stadium_attendance
GROUP BY 
    stadium_name
ORDER BY 
    average_attendance DESC
LIMIT 10;