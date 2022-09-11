SELECT name, start_time
FROM courses
WHERE start_time = (
    SELECT MIN(start_time)
    FROM courses
)