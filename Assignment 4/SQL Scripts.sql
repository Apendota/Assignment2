CREATE DATABASE university_db; 
CREATE TABLE Student (StudentID INT PRIMARY KEY, Name VARCHAR(100), Email VARCHAR(100), Address VARCHAR(255));
CREATE TABLE Course (CourseID INT PRIMARY KEY, Title VARCHAR(100), Description TEXT);
CREATE TABLE Enrollment (EnrollmentID INT PRIMARY KEY, StudentID INT, CourseID INT, EnrollmentDate DATE, FOREIGN KEY (StudentID) REFERENCES Student(StudentID), FOREIGN KEY (CourseID) REFERENCES Course(CourseID));
CREATE TABLE Instructor (InstructorID INT PRIMARY KEY, Name VARCHAR(100), Email VARCHAR(100));
CREATE TABLE Department (DepartmentID INT PRIMARY KEY,Name VARCHAR(100), Location VARCHAR(100));

--Load files to the Database

LOAD DATA INFILE 'student_data.csv' INTO TABLE student
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

LOAD DATA INFILE 'course_data.csv' INTO TABLE course
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;  

LOAD DATA INFILE 'enrollment_data.csv' INTO TABLE enrollment
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

LOAD DATA INFILE 'instructor_data.csv' INTO TABLE Instructor
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

LOAD DATA INFILE 'department_data.csv' INTO TABLE department
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

--Select Statements:

SELECT * FROM students;
SELECT * FROM course;
SELECT * FROM enrollment;
SELECT * FROM instructor;
SELECT * FROM department;

