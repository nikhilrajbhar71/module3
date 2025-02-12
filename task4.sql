CREATE DATABASE school1;
USE school1;

CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    age INT
);

CREATE TABLE courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100),
    student_id INT,
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);

-- Insert students
INSERT INTO students (name, age) VALUES ('Alice', 14);
INSERT INTO students (name, age) VALUES ('Bob', 15);
INSERT INTO students (name, age) VALUES ('Charlie', 13);


INSERT INTO courses (course_name, student_id) VALUES ('Math', 1);
INSERT INTO courses (course_name, student_id) VALUES ('Science', 1);
INSERT INTO courses (course_name, student_id) VALUES ('English', 2);


SELECT students.name, students.age, courses.course_name,courses.student_id
 from Students
 inner join courses on  students.student_id = courses.student_id where courses.course_name="Math";
