SELECT students.id, COUNT(departments.id)
FROM students, majorsIn, departments
WHERE students.id = majorsIn.students_id and majorsIn.departments_id = departments.id
GROUP BY students.id