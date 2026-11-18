CREATE DATABASE EMPLOYEES;

USE EMPLOYEES;

 CREATE TABLE EMPLOYEE(
 emp_id INT,
 emp_name VARCHAR (50),
 department VARCHAR(30),
 city VARCHAR(30),
 salary BIGINT,
 experience INT);
 
 INSERT INTO EMPLOYEE
(emp_id, emp_name, department, city, salary, experience)
VALUES
(101, 'Arun', 'IT', 'Bangalore', 45000, 2),
(102, 'Kiran', 'HR', 'Hyderabad', 55000, 5),
(103, 'Ravi', 'Sales', 'Chennai', 35000, 3),
(104, 'Anil', 'IT', 'Bangalore', 75000, 7),
(105, 'Priya', 'Finance', 'Mumbai', 60000, 4),
(106, 'Suman', 'HR', 'Delhi', 40000, 2),
(107, 'Varun', 'IT', 'Hyderabad', 90000, 8),
(108, 'Ananya', 'Sales', 'Bangalore', 50000, 5),
(109, 'Rahul', 'Finance', 'Chennai', 65000, 6),
(110, 'Sneha', 'IT', 'Mumbai', 30000, 1);

SELECT *  FROM EMPLOYEE;

/* 1.Display employees whose salary is between 30000 and 60000 but not equal to 45000.
2.Display employees who belong to IT, HR, or Sales but not from Bangalore.
3.Display employees whose names start with 'A' and end with 'N'.
4.Display employees whose second character is 'R' and last character is 'A'.*/

 SELECT * FROM EMPLOYEE  WHERE SALARY BETWEEN 30000 AND 60000 AND  SALARY <> 45000;
 
 SELECT * FROM EMPLOYEE WHERE department IN('HR','IT','SALES') AND CITY <> 'BANGALORE';
 
SELECT * FROM EMPLOYEE WHERE emp_name LIKE "A%N";

SELECT * FROM EMPLOYEE WHERE emp_name LIKE "_R%A";

/* 5.Display employees whose salary is not between 25000 and 50000 and city is not Hyderabad.
6.Display employees whose name contains exactly two 'A's.
7.Display employees whose experience is 2, 4, 6, or 8 years but not from IT.
8.Display employees whose city is NULL or salary greater than 70000.*/

SELECT * FROM EMPLOYEE WHERE SALARY  NOT BETWEEN 25000 AND 50000 AND  CITY <> 'HYDERABAD';

SELECT * FROM EMPLOYEE WHERE EMP_NAME LIKE "%A%A" AND EMP_NAME  NOT LIKE "%A%A%A%A";

SELECT  * FROM EMPLOYEE WHERE EXPERIENCE IN (2,4,6,8)  AND DEPARTMENT <>'IT';

SELECT * FROM EMPLOYEE WHERE CITY = 'NULL' OR SALARY > 70000;

/* 9.Display employees whose names contain 'AR' but do not start with 'A'.
10.Display employees whose salary is divisible by 1000.
11.Display employees ordered by department ascending and salary descending.
12.Display employees ordered by city ascending, experience descending, and salary ascending.*/

SELECT * FROM EMPLOYEE WHERE EMP_NAME LIKE "%AR%" AND EMP_NAME  NOT LIKE "A%";

 SELECT  SALARY/1000  AS SALARY  FROM EMPLOYEE;

SELECT * FROM EMPLOYEE ORDER BY department asc, salary DESC;

SELECT * FROM EMPLOYEE ORDER BY CITY asc, EXPERIENCE desc, salary ASC;

/* 13.Display employees ordered by salary descending; if salaries are equal, sort by name ascending.
14.Display employees ordered by the last letter of their names.
15.Display employees ordered by salary in descending order but show only the first 5 records.
16.Display employees ordered by experience ascending and salary descending.*/

SELECT * FROM EMPLOYEE ORDER BY salary desc , EMP_NAME ASC;

SELECT * FROM EMPLOYEE order by right(EMP_NAME, 1) ASC;

SELECT * FROM EMPLOYEE order by SALARY desc LIMIT 5; 

SELECT * FROM EMPLOYEE order by EXPERIENCE  asc, SALARY desc; 

/* 17.Display employees whose names start with 'S' ordered by city and then salary.
18.Display employees ordered by department, city, and name.
19.Display employees ordered by name length.
20.Display employees ordered by the second character of their names.*/

SELECT * FROM EMPLOYEE WHERE EMP_NAME LIKE "S%" order by CITY asc, SALARY ASC;

SELECT * FROM EMPLOYEE order by department, city, EMP_name;

SELECT * FROM EMPLOYEE order by length(EMP_NAME) ASC;

SELECT *
FROM employee
ORDER BY SUBSTRING(emp_name, 2, 1) ASC;

/*21.Display department-wise employee count.
22.Display city-wise average salary.
23.Display department-wise maximum salary and minimum salary.
24.Display city-wise total salary and employee count.
25.Display department and city-wise employee count.*/

SELECT * FROM EMPLOYEE;

SELECT  DEPARTMENT,COUNT(*) FROM EMPLOYEE GROUP BY  DEPARTMENT;

SELECT  CITY ,avg(SALARY) FROM EMPLOYEE GROUP BY  CITY;

SELECT  DEPARTMENT,max(SALARY) AS MAXIMUM, min(SALARY) AS MINIMUM FROM EMPLOYEE GROUP BY  DEPARTMENT;

SELECT  CITY ,avg(SALARY) FROM EMPLOYEE GROUP BY  CITY;

SELECT CITY, SUM(SALARY) AS TOTAL_SALARY, COUNT(*) FROM EMPLOYEE GROUP BY CITY;

SELECT DEPARTMENT, CITY, COUNT(*) FROM employee GROUP BY CITY, DEPARTMENT;

/* 26.Display city-wise maximum experience.
27.Display department-wise average salary rounded to nearest integer.
28.Display city-wise count of employees whose salary exceeds 50000.
29.Display department-wise total salary of employees having experience greater than 3 years.
30.Display city-wise employee count excluding employees from HR.*/

SELECT CITY,max(EXPERIENCE) FROM EMPLOYEE group by CITY;

SELECT DEPARTMENT, round(AVG(SALARY)) AS SAALARY FROM EMPLOYEE GROUP BY DEPARTMENT;

SELECT CITY,count(*) FROM EMPLOYEE  WHERE SALARY >50000  group by CITY;

SELECT DEPARTMENT,sum(SALARY) FROM EMPLOYEE  WHERE EXPERIENCE >3 group by DEPARTMENT;

SELECT CITY,count(*) FROM EMPLOYEE WHERE DEPARTMENT='HR' group by CITY;

/* 31.Display departments having more than 5 employees.
32.Display cities whose average salary exceeds 50000.
33.Display departments whose maximum salary is above 90000.
34.Display cities having at least 3 employees and average experience greater than 4 years.
35.Display departments where total salary exceeds 300000.*/
 
SELECT DEPARTMENT, COUNT(*) AS EMPLOYESS FROM EMPLOYEE GROUP BY DEPARTMENT HAVING EMPLOYESS >5; 

SELECT CITY, avg(SALARY) AS SALARY FROM EMPLOYEE GROUP BY CITY HAVING  SALARY > 50000;

SELECT CITY, avg(EXPERIENCE) AS EXPERIENCE,count(*) FROM EMPLOYEE GROUP BY CITY HAVING EXPERIENCE > 4; 

SELECT DEPARTMENT, max(SALARY) FROM EMPLOYEE GROUP BY DEPARTMENT HAVING max(SALARY)>90000;

SELECT DEPARTMENT, sum(SALARY) FROM EMPLOYEE GROUP BY DEPARTMENT HAVING sum(SALARY)>30000;

/* 36.Display cities whose minimum salary is greater than 25000.
37.Display departments having exactly 2 employees.
38.Display cities where employee count is between 3 and 7.
39.Display departments whose average salary is between 40000 and 60000.
40.Display cities having more than 2 employees and maximum salary above 80000.*/

SELECT CITY, min(SALARY) AS SALARY FROM  EMPLOYEE group by CITY HAVING  SALARY > 25000;

SELECT DEPARTMENT , COUNT(*) FROM  EMPLOYEE GROUP BY DEPARTMENT  HAVING COUNT(*)=2;

SELECT CITY, COUNT(*) FROM  EMPLOYEE GROUP BY CITY HAVING COUNT(*) between 3 AND 7;

SELECT DEPARTMENT, ROUND(avg(SALARY)) FROM  EMPLOYEE GROUP BY DEPARTMENT HAVING avg(SALARY) between 40000 AND 60000;

 SELECT CITY, count(*), MAX(SALARY) FROM EMPLOYEE GROUP BY CITY  HAVING max(SALARY)>25000 AND  COUNT(*)>2;
 /* 41.Display department-wise employee count for employees earning more than 30000. Show only departments having more than 2 such employees.
42.Display city-wise average salary for employees with experience greater than 3 years. Show only cities whose average salary exceeds 50000.
43.Display department-wise total salary excluding HR employees. Show only departments whose total salary exceeds 200000.
44.Display city-wise employee count for employees whose names start with 'A'. Show only cities having at least 2 such employees.
45.Display department-wise maximum salary for employees from Bangalore. Show only departments where maximum salary exceeds 70000.*/

SELECT DEPARTMENT, count(*) AS EMPLOYEES, SUM(SALARY) FROM EMPLOYEE GROUP BY DEPARTMENT HAVING SUM(SALARY)>30000 AND EMPLOYEES>2;

SELECT department, SUM(salary) AS total_salary FROM employee WHERE department <> 'HR' GROUP BY department HAVING SUM(salary) > 200000;

SELECT * FROM EMPLOYEE;

SELECT CITY, count(*), count(*) FROM EMPLOYEE WHERE EMP_NAME LIKE "A%" GROUP BY CITY  HAVING  COUNT(*)=2;





























































 
 
