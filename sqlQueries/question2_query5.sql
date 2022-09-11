SELECT COUNT(students.id)
FROM students, enrolled, courses
WHERE students.id = enrolled.students_id and course.crn = enrolled.courses_crn and courses.name = "CSC275"