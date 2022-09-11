SELECT DISTINCT courses.name
FROM courses, enrolled, students, majors_in, departments
WHERE courses.crn = enrolled.courses_crn and students.id = enrolled.students_id 
and students.id = majors_in.students_id and majors_in.departments_id = departments.id 
and departments.name = "BIF"