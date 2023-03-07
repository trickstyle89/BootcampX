SELECT cohorts.name, COUNT(*) AS total_students
FROM cohorts
JOIN students ON cohorts.id = students.cohort_id
GROUP BY cohorts.id
HAVING COUNT(*) >= 18;