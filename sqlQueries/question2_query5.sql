/*Counting the number of students enrolled in CSC275 course and 
major in CS by joining the tables and adding the conditions in the WHERE clause*/
SELECT COUNT(students.id)
FROM courses, enrolled, students, majors_in, departments
WHERE courses.crn = enrolled.courses_crn and students.id = enrolled.students_id 
and students.id = majors_in.students_id and majors_in.departments_id = departments.id 
and courses.name = "CSC275" and departments.name = "CS" 