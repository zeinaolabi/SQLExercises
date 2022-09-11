SELECT DISTINCT courses.name
FROM courses, enrolled, students, majorsIn, departments
WHERE courses.crn = enrolled.courses_crn and students.id = enrolled.students_id 
and students.id = majorsIn.students_id and majorsIn.departments_id = departments.id 
and departments.name = "BIF"
 