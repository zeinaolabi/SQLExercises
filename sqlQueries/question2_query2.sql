/*Getting the name and the start time from the table courses
By adding a subquery to the WHERE clause to get the minimum start time in the table*/
SELECT name, start_time
FROM courses
WHERE start_time = (
    SELECT MIN(start_time)
    FROM courses
)