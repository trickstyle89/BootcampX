SELECT DISTINCT(teachers.name), cohorts.name, SUM(assistance_requests) AS total_assists
FROM teachers
JOIN assistance_requests ON teachers.id = teacher_id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = 'JUL02'
ORDER BY total_assists;