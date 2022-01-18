SELECT day, count(*) AS total_assignments, sum(duration)
FROM assignments
GROUP BY day
ORDER BY day;