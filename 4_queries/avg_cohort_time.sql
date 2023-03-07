SELECT cohorts.name, AVG(completed_at - started_at) AS average_assistance
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY average_assistance;