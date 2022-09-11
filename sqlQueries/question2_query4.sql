/*Getting the id and name of students that aren't enrolled in any courses
by adding a subquery that find all students that are enrolled
and making sure that the selected student isn't enrolled*/
SELECT students.id, students.name
FROM students
WHERE students.id NOT IN (
    SELECT students.id
    FROM students, enrolled
    WHERE students.id = enrolled.students_id
)