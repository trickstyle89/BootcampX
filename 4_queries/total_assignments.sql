SELECT assignments.day, 
COUNT(DISTINCT assignments.id) AS number_of_assignments,
SUM(assignments.duration) AS total_duration
FROM assignments
GROUP BY assignments.day
ORDER BY assignments.day;
