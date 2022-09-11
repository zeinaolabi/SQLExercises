SELECT name
FROM courses
WHERE start_time == (
    SELECT MIN(start_time)
    FROM courses
)