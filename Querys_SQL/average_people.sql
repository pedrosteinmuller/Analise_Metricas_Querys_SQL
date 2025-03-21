-- Calculate the average attendance over the last 10 years
WITH Last10Years AS (
    SELECT *
    FROM attendance
    WHERE year >= strftime('%Y', 'now') - 10
)
SELECT AVG(attendance_count) AS average_attendance
FROM Last10Years;