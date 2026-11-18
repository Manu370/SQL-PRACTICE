/*1. WAQ to create a database with name college.
2. WAQ to create a table with name student having attributes student_id, student_name, course, marks.
3. WAQ to start transaction in a table.
4. WAQ to create a savepoint with name ram.
5. WAQ to insert 5 values in savepoint ram.
6. WAQ to update marks = 90 if the student_name is Rahul.
7. WAQ to rollback the savepoint ram.
*/

CREATE DATABASE COLLEGES;

USE COLLEGES;

CREATE TABLE STUDENTS(student_id int, student_name VARCHAR(20), course VARCHAR(10), marks INT);

START transaction;

SET AUTOCOMMIT=0;

/*4. WAQ to create a savepoint with name ram.
5. WAQ to insert 5 values in savepoint ram.
6. WAQ to update marks = 90 if the student_name is Rahul.
7. WAQ to rollback the savepoint ram.*/

savepoint RAM;

INSERT INTO students(student_id, student_name, course, marks) VALUES
(1, 'Rahul', 'BCA', 75),
(2, 'Sneha', 'BCom', 82),
(3, 'Arjun', 'BSc', 68),
(4, 'Priya', 'BA', 90),
(5, 'Vikram', 'BTech', 88);

update students set marks=90 where student_name='rahul';

rollback to savepoint RAM;

SELECT * FROM STUDENTS;

/*8. WAQ to create another savepoint with name shyam.
9. WAQ to insert 3 values into the student table in this shyam savepoint.
10. WAQ to save permanently the transactions in shyam savepoint.
11. Now rollback the shyam savepoint.*/

 savepoint SHYAM;
 
 INSERT INTO students (student_id, student_name, course, marks) VALUES
(6, 'Anjali', 'BCA', 79),
(7, 'Karan', 'BCom', 85),
(8, 'Meena', 'BSc', 91);

commit;

rollback to savepoint SHYAM;

/*12. WAQ to display all the details inside the table.
13. WAQ to display information about the table.*/

SELECT * FROM STUDENTS;

DESCRIBE STUDENTS;

