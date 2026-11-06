/*
  File   : 01_students_table.sql
  Topic  : DDL basics (CREATE TABLE, constraints)
  Goal   : Create students table and insert 2 sample rows
*/

CREATE DATABASE IF NOT EXISTS practice_db;

USE practice_db;

DROP TABLE IF EXISTS students;

CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name  VARCHAR(100) NOT NULL,
    email      VARCHAR(150) NOT NULL UNIQUE, -- UNIQUE: no two students share one email
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DESCRIBE students;

INSERT INTO students (full_name, email)
VALUES ('Asha Rao', 'asha@example.com'),
       ('Ravi Singh', 'ravi@example.com');

SELECT student_id, full_name, email FROM students;

COMMIT;