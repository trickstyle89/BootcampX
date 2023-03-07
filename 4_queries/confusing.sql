SELECT assignments.id, assignments.day, assignments.name, assignments.chapter, SUM(assistance_requests.id) AS total_requests
FROM assignments
JOIN assistance_requests ON assignments.id = assignment_id
GROUP BY assignments.name, assignments.id
ORDER BY total_requests DESC;