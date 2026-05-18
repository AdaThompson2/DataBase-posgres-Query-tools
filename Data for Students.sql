create table Students (student_id Serial primary Key, first_name varchar, 
last_name varchar, date_of_birth Date, enrollment_date date, major varchar)

create table Courses (course_id Serial Primary Key, course_name varchar, credits INT , 
department varchar)

create table Instructors (instructor_id Serial Primary key, first_name varchar(50), 
last_name varchar(50), hire_date Date, department varchar(50))

create table Enrollments (enrollment_id Serial Primary Key, 
student_id INT references students(student_id), course_id INT 
references courses(course_id), semester varchar(50), year INT, 
grade varchar(9))

SELECT * from students 
SELECT * from Instructors
SELECT * from Enrollments
SELECT * from Courses


Insert into students 
( student_id, first_name, last_name, date_of_birth, enrollment_date, major)
VALUES
(1, 'Ada', 'Johnson', '2002-05-14', '2022-09-01', 'Computer Science'),

Insert into students 
( student_id, first_name, last_name, date_of_birth, enrollment_date, major)
VALUES
(2, 'John', 'Smith', '2001-11-20', '2021-09-01', 'Mathematics'),
(3, 'Grace', 'Williams', '2003-02-10', '2023-09-01', 'Biology'),
(4, 'Michael', 'Brown', '2000-08-15', '2020-09-01', 'Physics'),
(5, 'Sarah', 'Davis', '2002-12-05', '2022-09-01', 'Chemistry'),
(6,'Daniel', 'Wilson', '2001-06-30', '2021-09-01', 'Engineering'),
(7, 'Sophia', 'Taylor', '2003-03-25', '2023-09-01', 'Economics'),
(8, 'James', 'Anderson', '2002-09-18', '2022-09-01', 'History'),
(9, 'Olivia', 'Thomas', '2001-07-12', '2021-09-01', 'Computer Science'),
(10, 'Ethan', 'Moore', '2000-10-08', '2020-09-01', 'Business');


Insert into Courses
(course_id, course_name, credits, 
department)

VALUES
(1,'Biology', 3, 'Microbiogy'),
( 2,'Mathstudies', 3, 'Mathematics'),
( 3,'Organic Chemistry', 4, 'Chemistry'),
(4,'Physics I', 3, 'Physics'),
(5,'Microeconomics', 3, 'Economics'),
(6,'Accounting General', 3, 'Accounting'),
(7,'Software Engineering', 4, 'Computer Science'),
(8, 'Genetics', 4, 'Plant Science');

Insert intO instructors
(instructor_id , first_name, last_name , hire_date , department)
VALUES
( 1, 'Special', 'Amoniah', '2019-01-15', 'Computer Science'),
(2,'Ada', 'Thompson', '2016-06-10', 'Mathematics'),
( 3,'Wilson', 'White', '2019-03-20', 'Physics'),
( 4,'Edison', 'John', '2017-09-05', 'Business'),
( 5,'George', 'White', '2020-11-11', 'Plant Science');

Insert into Enrollments
(enrollment_id , student_id , semester , year , 
grade )

VALUES
(11,  'First', 2024, 'A'),
(12, 'First', 2024, 'B'),
(13, 'Second', 2024, 'A'),
(14,  'Second', 2024, 'B'),
(15, 'First', 2024, 'A'),
(16,  'First', 2024, 'C'),
(17,  'Second', 2024, 'B'),
(18,  'Second', 2024, 'A'),
(19,'First', 2024, 'B'),
(20 ,'Second', 2024, 'A'),
(21,  'First', 2024, 'C'),
(22,  'Second', 2024, 'B'),
(23,  'First', 2024, 'A'),
(24,  'First', 2024, 'B'),
(25, 'Second', 2024, 'A'),
(26,  'First', 2024, 'B'),
(27,  'Second', 2024, 'A'),
(28,  'First', 2024, 'A'),
(29,  'First', 2024, 'B'),
(30,  'Second', 2024, 'C');

SELECT * FROM students;
Select * from courses where credits>3
Select * from instructors where department = 'Plant Science'
Select * from instructors where department = 'Computer Science'
