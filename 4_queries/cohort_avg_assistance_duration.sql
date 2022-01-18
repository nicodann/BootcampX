SELECT avg(total_duration) as average_total_duration
FROM (
  SELECT cohorts.name, sum(completed_at - started_at) AS total_duration
  FROM assistance_requests
  JOIN students ON students.id = assistance_requests.student_id
  JOIN cohorts ON cohorts.id = students.cohort_id
  GROUP BY cohorts.name
) as total_durations;