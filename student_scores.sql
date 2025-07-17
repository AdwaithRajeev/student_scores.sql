-- Create students table
CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    class INT
);

-- Create scores table
CREATE TABLE scores (
    id SERIAL PRIMARY KEY,
    student_id INT,
    subject VARCHAR(30),
    marks INT,
    FOREIGN KEY (student_id) REFERENCES students(id)
);

-- Insert data into students
INSERT INTO students (name, class) VALUES 
('Adwdhh', 10),
('Arun', 10),
('Diya', 10),
('Varun', 10);

-- Insert data into scores
INSERT INTO scores (student_id, subject, marks) VALUES 
(1, 'Maths', 20),
(1, 'Science', 50),
(2, 'Maths', 60),
(3, 'English', 70),
(4, 'Science', 80);

-- Simple SELECT
SELECT * FROM students;
SELECT * FROM scores;

-- WHERE example
SELECT * FROM scores WHERE marks > 50;

-- AND / OR example
SELECT * FROM scores WHERE subject = 'Science' AND marks > 60;

-- JOIN to show student names with subject and marks
SELECT students.name, students.class, scores.subject, scores.marks
FROM students
JOIN scores ON students.id = scores.student_id;

-- Total marks per student
SELECT students.name, SUM(scores.marks) AS total_marks
FROM students
JOIN scores ON students.id = scores.student_id
GROUP BY students.name;
