/*Getting the id of students and the number of majors they're declared in
by joining the tables then grouping the result by students' ids
which shows us how many majors each student is in*/
SELECT students.id, COUNT(departments.id)
FROM students, majorsIn, departments
WHERE students.id = majorsIn.students_id and majorsIn.departments_id = departments.id
GROUP BY students.id