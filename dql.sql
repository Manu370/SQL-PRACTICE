/*DQL:-
1)	WAQ to display all the details in a l_park.
2)	WAQ to display only non repeat values of no_of_persons from l_park table.
3)	WAQ to display brand_name and cost_of_bottle from bar table.
4)	WAQ to display all details in l_park if the no_of_persons is 2.
5)	WAQ to create  table with name employee having attributes emp_id, emp_name,salary, email*/


USE PARK;

SELECT * FROM I_PARK;

SELECT distinct no_of_persons  FROM I_PARK;

USE PUB;
SHOW TABLES;
desc BAR;
SELECT brand_name, cost_of_bottle FROM  BAR;
select * FROM I_PARK WHERE no_of_persons=2;

show databases;

create table employeess( emp_id int, emp_name varchar(20), salary int, email varchar(100));

/*WAQ to insert  10 values to above table. 
7)	WAQ to display all details in a employee table .
8)	WAQ to display emp_name ,salary , email from employee table.
9)	WAQ to display all details in a employee table if the employee name is Akhil.
10)	WAQ to display emp_name , salary from employee if the salary in between 20000 to 60000.*/

INSERT INTO employeess(emp_id, emp_name, salary, email) VALUES
(41, 'Rakesh', 25000, 'rakesh@gmail.com'),
(42, 'Sunita', 55000, 'sunita@yahoo.com'),
(43, 'Akhil', 40000, 'akhil@gmail.com'),
(44, 'Priya', 72000, 'priya@outlook.com'),
(45, 'Karthik', 30000, 'karthik@company.ai'),
(46, 'Divya', 18000, 'divya@yahoo.com'),
(47, 'Manoj', 60000, 'manoj@gmail.com'),
(48, 'Swathi', 45000, 'swathi@outlook.com'),
(49, 'Ravi', 45000, 'ravi@gmail.com'),
(50, 'Lakshmi', 85000, 'lakshmi@gmail.com');

SELECT * FROM EMPLOYEESS;

SELECT emp_name, salary, email FROM employeess;

/*9)	WAQ to display all details in a employee table if the employee name is Akhil.
10)	WAQ to display emp_name , salary from employee if the salary in between 20000 to 60000.*/

SELECT * FROM EMPLOYEESS  WHERE EMP_NAME ='AKHIL';

SELECT emp_name , salary from employeess where salary between 20000  and 60000;

/*11)	WAQ to display all the details in a employee table if the email end with “i”.
12)	WAQ to display all the details in a employee table if the emp_id is 45.
13)	WAQ to display only two attributes they are salary and email. 
14)	WAQ to display non_repeate values  of salary from employee table.
15)	WAQ to display the information about the table employee.*/

select * FROM EMPLOYEESS WHERE EMAIL LIKE '%I';

select * FROM EMPLOYEESS WHERE emp_id = 45;

SELECT salary, email from employeess;

SELECT  distinct salary from employeess;

select * from employeess;

 describe employeess;
 
/*16)WAQ to display the list of the databases.
17)	WAQ to display the tables names in a pub database.
18)	WAQ to display  all the */

show databases;

use pub;

show tables;
  
  
  use park;
select * from i_park; 
 



