CREATE DATABASE schooltest;
USE schooltest;


CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT
);


CREATE TABLE courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    student_id INT,
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);


INSERT INTO students (name, age) VALUES ('Alice', 14);
INSERT INTO students (name, age) VALUES ('Bob', 15);
INSERT INTO students (name, age) VALUES ('Charlie', 13);


INSERT INTO courses (course_name, student_id) VALUES ('Math', 1);
INSERT INTO courses (course_name, student_id) VALUES ('Science', 1);
INSERT INTO courses (course_name, student_id) VALUES ('English', 2);



SELECT students.name, students.age, courses.course_name
FROM students
INNER JOIN courses ON students.student_id = courses.student_id;


