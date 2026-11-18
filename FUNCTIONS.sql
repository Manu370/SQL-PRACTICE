/*  Functions:-
1)	WAQ to create a table with name functionss having columns fun_name,no_of_functions, date_of_function.
2)	WAQ to give 12 values to above table .
3)	WAQ to add another attribute with name gifts at 3 rd position.
4)	WAQ to give values for this gifts attribute.
5)	WAQ to add another attribute with name cost_of_gifts.*/

CREATE TABLE functions (fun_name VARCHAR (20), no_of_functions INT, date_of_function DATE);

INSERT INTO functions(fun_name, no_of_functions, date_of_function)
VALUES
('Math', 10, '2026-01-01'),
('String', 8, '2026-01-02'),
('Date', 6, '2026-01-03'),
('Aggregate', 7, '2026-01-04'),
('Numeric', 9, '2026-01-05'),
('Conversion', 5, '2026-01-06'),
('Control', 6, '2026-01-07'),
('Window', 10, '2026-01-08'),
('JSON', 8, '2026-01-09'),
('System', 5, '2026-01-10'),
('User Defined', 4, '2026-01-11'),
('Security', 3, '2026-01-12');

/*3) WAQ to add another attribute with name gifts at 3 rd position.
4)	WAQ to give values for this gifts attribute.
5)	WAQ to add another attribute with name cost_of_gifts.*/

 ALTER  TABLE functions ADD GIFTS VARCHAR(20) AFTER no_of_functions;
 
UPDATE functions SET gifts = 'Pen' WHERE fun_name = 'Math';
UPDATE functions SET gifts = 'Book' WHERE fun_name = 'String';
UPDATE functions SET gifts = 'Diary' WHERE fun_name = 'Date';
UPDATE functions SET gifts = 'Bag' WHERE fun_name = 'Aggregate';
UPDATE functionsSET gifts = 'Pen' WHERE fun_name = 'Numeric';
UPDATE functions SET gifts = 'Bottle' WHERE fun_name = 'Conversion';
UPDATE functions SET gifts = 'Book' WHERE fun_name = 'Control';
UPDATE functions SET gifts = 'Diary' WHERE fun_name = 'Window';
UPDATE functions SET gifts = 'Bag' WHERE fun_name = 'JSON';
UPDATE functions SET gifts = 'Pen' WHERE fun_name = 'System';
UPDATE functions SET gifts = 'Book'WHERE fun_name = 'User Defined';
UPDATE functions SET gifts = 'Bottle' WHERE fun_name = 'Security';

/* 5)	WAQ to add another attribute with name cost_of_gifts.
6)	WAQ to insert values into cost_of_gifts .
7)	WAQ to covert all values in no_of_functions in binary code.
8)	WAQ to convert all fun_names into upper case.*/

 ALTER  TABLE functions ADD COST_OF_GIFTS INT;

UPDATE FUNCTIONS SET COST_OF_GIFTS =200 WHERE fun_name = 'Math';
UPDATE functions SET cost_of_gifts = 500 WHERE fun_name = 'String';
UPDATE functions SET cost_of_gifts = 150 WHERE fun_name = 'Date';
UPDATE functions SET cost_of_gifts = 300 WHERE fun_name = 'Aggregat
e';
UPDATE functions SET cost_of_gifts = 100 WHERE fun_name = 'Numeric';
UPDATE functions SET cost_of_gifts = 250 WHERE fun_name = 'Conversion';
UPDATE functions SET cost_of_gifts = 200 WHERE fun_name = 'Control';

UPDATE functions SET cost_of_gifts = 150 WHERE fun_name = 'Window';
UPDATE functions SET cost_of_gifts = 300 WHERE fun_name = 'JSON';
UPDATE functions SET cost_of_gifts = 100 WHERE fun_name = 'System';

UPDATE functions SET cost_of_gifts = 200 WHERE fun_name = 'User Defined';
UPDATE functions SET cost_of_gifts = 250 WHERE fun_name = 'Security';

/* 7)	WAQ to covert all values in no_of_functions in binary code.
8)	WAQ to convert all fun_names into upper case.*/

 SELECT * FROM FUNCTIONS;
 
 SELECT  bin(no_of_functions) FROM FUNCTIONS;
 
 SELECT  UPPER(FUN_NAME) AS FUN FROM FUNCTIONS;
 
/* WAQ to find the maximum cost_of_gifts.
10)	WAQ to find avg cost_of_gifts.
11)	WAQ to find 2 nd maximum cost_of_gifts.
13)	WAQ to display all the details inside the table if the date_of_function is before 2023-06-12.*/

SELECT max(COST_OF_GIFTS) FROM FUNCTIONS;

SELECT avg(COST_OF_GIFTS) AS GIFTS FROM FUNCTIONS;

-- SELECT max(COST_OF_GIFTS, 2) AS SECONDGIFTS FROM FUNCTIONS;

SELECT * FROM FUNCTIONS WHERE date_of_function > '2026-01-05';

SELECT DISTINCT cost_of_gifts
FROM functions
ORDER BY cost_of_gifts DESC
LIMIT 1 offset 1 ;

/* 14)	WAQ to display fun_name and date_of_function into a single attribute with name fun_details.
15)	WAQ to display only 5 characters in fun_name from left side.
16)	WAQ to display only 3 charecters in name_of_gifts starting index is 2.
17)	WAQ to display all columns in a single attribute  with saperator is * and name as details.*/

select concat(fun_name,' ',date_of_function) AS FUN_DETAILS FROM FUNCTIONS;

SELECT LEFT(fun_name,5) FROM FUNCTIONS;

SELECT substring(GIFTS,2,3) FROM FUNCTIONS;

SELECT concat_ws('*', fun_name, no_of_functions, gifts, date_of_function, cost_of_gifts) AS details FROM functions;

/* 18)	 display all the details in a functions table.
19)	 WAQ to display only date attributes from the functions table.
20)	 WAQ to display today date.
21)	 WAQ to display present time.
22)	 WAQ to display present time with date.
23)	 WAQ to add 5 days to present date.*/

SELECT * FROM FUNCTIONS;

SELECT  DATE_OF_FUNCTION FROM FUNCTIONS;

SELECT curdate()FROM FUNCTIONS;

SELECT CURTIME();

SELECT now();

SELECT DATE_ADD(CURDATE(), INTERVAL 5 DAY);

/* 24)	 WAQ to find the difference between present date with 2002-12-05.
25)	WAQ to display your birthday month from your birthday.
26)	 WAQ to display day name from your breakup day.
27)	 WAQ to remove 20 days from date_of_function .
28)	 WAQ to display all records in date_of_function if the dayname is monday.
29)	WAQ to increase  3 months in all rows the date_of_function values from functions.*/

SELECT DATEDIFF(CURDATE(), '2002-12-05') AS date_difference;

SELECT MONTH('2002-04-05') AS birthday_month;

-- 26

SELECT DAYNAME('2024-02-14') AS breakup_day;

-- 30

SELECT date_of_function,
       DATE_ADD(date_of_function, INTERVAL 3 MONTH) AS new_date
FROM functions;

-- 28

SELECT *
FROM functions
WHERE DAYNAME(date_of_function) = 'Monday';

-- 27
SELECT date_of_function,
       DATE_SUB(date_of_function, INTERVAL 20 DAY) AS new_date
FROM functions;

















