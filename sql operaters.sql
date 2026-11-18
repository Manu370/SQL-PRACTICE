/*Operators:-
1)	WAQ to use any one of the database.
2)	WAQ to create a table with name movies having attributes movie_no, movie_name,date_of_relase.
3)	WAQ to  give 10 values to the above table .
4)	WAQ to add another attribute with name amount_of_ticket.
5)	WAQ to give the values for this amount_of_ticket. */

use training_center;

CREATE TABLE MOIVES(movie_no INT, movie_name VARCHAR(20), date_of_relase date);

INSERT INTO MOIVES(movie_no, movie_name, date_of_relase) VALUES
(1,  'Baahubali',       '2015-07-10'),
(2,  'ATM',              '2015-08-21'),
(3,  'Fidaa',            '2017-02-17'),
(4,  'Magadheera',       '2009-09-25'),
(5,  'Raja The Great',   '2017-10-05'),
(6,  'Happy Days',       '2007-03-02'),
(7,  'Ragada',           '2010-01-14'),
(8,  'July',             '2005-01-01'),
(9,  'Khaidi',           '2019-01-11'),
(10, 'Parugu',           '2008-03-28');

/* 4)	WAQ to add another attribute with name amount_of_ticket.
5)	WAQ to give the values for this amount_of_ticket. */

alter table MOIVES ADD amount_of_ticket BIGINT;

UPDATE moives SET amount_of_ticket = 250 WHERE movie_no = 1;
UPDATE moives SET amount_of_ticket = 150 WHERE movie_no = 2;
UPDATE moives SET amount_of_ticket = 200 WHERE movie_no = 3;
UPDATE moives SET amount_of_ticket = 180 WHERE movie_no = 4;
UPDATE moives SET amount_of_ticket = 220 WHERE movie_no = 5;
UPDATE moives SET amount_of_ticket = 120 WHERE movie_no = 6;
UPDATE moives SET amount_of_ticket = 160 WHERE movie_no = 7;
UPDATE moives SET amount_of_ticket = 100 WHERE movie_no = 8;
UPDATE moives SET amount_of_ticket = 300 WHERE movie_no = 9;
UPDATE moives SET amount_of_ticket = 190 WHERE movie_no = 10;

/* 6)	WAQ to display all the details in movies table if movie_no is 4.
7)	WAQ to display all the details amount_of_ticket range in 200 to 400.
8)	WAQ to display movie_name and movie_no if the movie_name is “ATM”.
9)	WAQ to delete all values if the movie_name is “bahubali”.
10)	WAQ to display all the details if the movie_names*/

select * from moives where movie_no = 4;

select * from moives;

select * from moives where amount_of_ticket between 200 and 400;

/* 8)	WAQ to display movie_name and movie_no if the movie_name is “ATM”.
9)	WAQ to delete all values if the movie_name is “bahubali”.
10)	WAQ to display all the details if the movie_names in “raja the great”,”happydays”,”ragada”,”july”.*/

SELECT movie_name, movie_no FROM MOIVES WHERE movie_name ="atm";

DELETE FROM MOIVES  WHERE movie_name = 'bahubali';

SELECT * FROM MOIVES where movie_name in ('raja the great', 'happydays', 'ragada', 'july');

/* 11)	WAQ to display all the details if the movie_no is 4 and movie_name is “magadeera”.
12)	WAQ to display all the details if the movie_name is “fidaa” or amount_of_ticket    
13)	WAQ to display all the details if the movie_name start with “k”.*/ 

SELECT * FROM MOIVES WHERE movie_no = 4 and movie_name ='magadeera';

SELECT * FROM MOIVES;

SELECT * FROM MOIVES WHERE movie_name= 'fidaa' or amount_of_ticket=200;

SELECT * FROM MOIVES WHERE movie_name like "k%";

/*14)	WAQ to display all the details if the movie end with “i”.
15)	WAQ to display all the details if the movie start with “p” and end with “u”.
16)	WAQ to display all the details if the heroin_name is “sai pallavi”,” trisha”,”samntha”,”kajal” and hero_names are “nithin”,”prabhas”,”surya”,”allu arjun”.*/

SELECT * FROM MOIVES WHERE movie_name like "%i";

SELECT * FROM MOIVES WHERE movie_name like "p%u";

select * from  MOIVES ;

ALTER TABLE moIVES ADD hero_name VARCHAR(30);
ALTER TABLE moIVes ADD heroine_name VARCHAR(30);

UPDATE moIVes SET hero_name = 'Sundeep Kishan', heroine_name = 'Samantha'    WHERE movie_no = 2;
UPDATE moives SET hero_name = 'Varun Tej',      heroine_name = 'Sai Pallavi' WHERE movie_no = 3;
UPDATE moives SET hero_name = 'Ram Charan',     heroine_name = 'Kajal'      WHERE movie_no = 4;
UPDATE moives SET hero_name = 'Ravi Teja',      heroine_name = 'Mehreen'    WHERE movie_no = 5;
UPDATE moives SET hero_name = 'Varun Sandesh',  heroine_name = 'Tamannaah'  WHERE movie_no = 6;
UPDATE moives SET hero_name = 'Nithin',         heroine_name = 'Anupama'    WHERE movie_no = 7;
UPDATE moives SET hero_name = 'Allu Arjun',     heroine_name = 'Ileana'     WHERE movie_no = 8;
UPDATE moives SET hero_name = 'Surya',          heroine_name = 'Trisha'     WHERE movie_no = 9;
UPDATE moives SET hero_name = 'Allu Arjun',     heroine_name = 'Sheela'     WHERE movie_no = 10;

SELECT * FROM moives
WHERE heroine_name IN ('Sai Pallavi', 'Trisha', 'Samantha', 'Kajal')
  AND hero_name    IN ('Nithin', 'Prabhas', 'Surya', 'Allu Arjun');




