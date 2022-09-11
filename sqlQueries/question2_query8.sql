/*Finding the number of students in each department
by joining the tables then grouping them by departments' id,
knowing that there has to be at least one student*/
SELECT departments.name, COUNT(students.id)
FROM students, majorsIn, departments
WHERE students.id = majorsIn.students_id and majorsIn.departments_id = departments.id
GROUP BY departments.id
HAVING COUNT(students_id) > 1