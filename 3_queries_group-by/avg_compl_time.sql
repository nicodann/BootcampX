SELECT students.name, sum(cast(assignment_submissions.duration as decimal)) / count(assignment_submissions.duration) as avg_as_duration
FROM students
JOIN assignment_submissions ON students.id = assignment_submissions.student_id
WHERE students.end_date IS NULL
GROUP BY students.name
ORDER BY avg_as_duration DESC;