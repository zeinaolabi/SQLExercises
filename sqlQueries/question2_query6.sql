/*Selecting the number of CS students that are enrolled in any course
by joining the table then making sure the student majors in CS,
after that, group the results by courses*/
SELECT courses.name, COUNT(students.id)
FROM courses, enrolled, students, majors_in, departments
WHERE courses.crn = enrolled.courses_crn and students.id = enrolled.students_id 
and students.id = majors_in.students_id and majors_in.departments_id = departments.id 
and departments.name = "CS" 
GROUP BY courses.crn