SELECT students.id, students.name
FROM students
WHERE students.id NOT IN (
    SELECT students.id
    FROM students, enrolled
    WHERE students.id = enrolled.students_id
)