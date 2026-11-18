/* Clauses:-
1)	WAQ to create table with name moive having attributes movie_name, hero_name,heroine_name,no_of_songs .
2)	WAQ to insert 10 values into above table.
3)	WAQ to display all the details in a table.
4)	WAQ to change the movie_name with “arya” if no_of_songs is 4.
5)	WAQ to remove the values if hero_name is Prabhas.*/

  create database moives;
  
   use moives;

 CREATE TABLE MOIVE(movie_name VARCHAR(20), hero_name VARCHAR(30),heroine_name VARCHAR(30), no_of_songs int);
 
 ALTER TABLE MOIVE 
    MODIFY COLUMN movie_name VARCHAR(50),
    MODIFY COLUMN hero_name VARCHAR(50),
    MODIFY COLUMN heroine_name VARCHAR(50);
 
 INSERT INTO MOIVE(movie_name, hero_name, heroine_name, no_of_songs) VALUES
   ('RAVI','RAVI-TEJA','KAJAL', 5);
  INSERT INTO MOIVE(movie_name, hero_name, heroine_name, no_of_songs) VALUES
   ('Saaho', 'Prabhas', 'Shraddha Kapoor', 6),
   ('Radhe Shyam', 'Prabhas', 'Pooja Hegde', 4),
   ('Pushpa', 'Allu Arjun', 'Rashmika Mandanna', 7),
   ('Ala Vaikunthapurramuloo', 'Allu Arjun', 'Pooja Hegde', 6),
   ('RRR', 'Ram Charan', 'Alia Bhatt', 8),
   ('Magadheera', 'Ram Charan', 'Kajal Aggarwal', 4),
   ('Yevadu', 'Ram Charan', 'Shruti Haasan', 5),
   ('Arjun Reddy', 'Vijay Deverakonda', 'Shalini Pandey', 5);
   
    SELECT * FROM MOIVE;
    
    /* WAQ to display all the details in a table.
4)	WAQ to change the movie_name with “arya” if no_of_songs is 4.
5)	WAQ to remove the values if hero_name is Prabhas.*/

UPDATE MOIVE SET MOVIE_NAME='ARYA' WHERE NO_OF_SONGS=4;

 delete FROM MOIVE WHERE hero_name = 'Prabhas';
 
/* 6)	WAQ to change the all heroine values with different values in each row .
7)	WAQ to insert another column with name no_of_steps_in_dance .
8)	WAQ to give values to all null places inside the table.
9)	WAQ to remove the movie_name attribute with data.
10)	WAQ to display all the details if the no_of_songs is in the range of 1 to 6.*/

UPDATE MOIVE SET HEROINE_NAME =
  CASE 
    WHEN MOVIE_NAME = 'RAVI' THEN ' SAMANTH'
	WHEN MOVIE_NAME = 'RAVI' THEN ' SAMANTHS'
	WHEN MOVIE_NAME = 'PUSHPA' THEN 'KAGAL'
	WHEN MOVIE_NAME = 'RRR' THEN ' AAIL'
    WHEN MOVIE_NAME = 'ARYA' THEN ' KAGAL2'
  END;
  UPDATE MOIVE SET HEROINE_NAME ='RASMI';
  
   SELECT * FROM MOIVE;
  
ALTER TABLE MOIVE ADD no_of_steps_in_dance INT;

UPDATE MOIVE SET no_of_steps_in_dance = 100 WHERE no_of_steps_in_dance IS NULL;

ALTER TABLE MOIVE DROP MOVIE_NAME;

SELECT * FROM MOIVE WHERE NO_OF_SONGS between 1 AND 2;

/* 11)	WAQ to display all the details inside the table but the heroine_name is in asc order.
12)	WAQ to display all the count of no_of_songs  and hero_nam but based on  hero_name wise.
13)	WAQ to display all count of hero,  no_of_songs  if the no_of_song is 4.
14)	WAQ to display all the columns only for 3 values.
15)	WAQ to display all the details from the table top 12 vcalues.*/

 SELECT  * FROM MOIVE  order by HEROINE_NAME ASC;
 
 SELECT HERO_NAME, COUNT(NO_OF_SONGS) FROM MOIVE group by HERO_NAME;
 
SELECT  HERO_NAME, COUNT(NO_OF_SONGS) FROM MOIVE WHERE no_of_songs = 4 GROUP BY HERO_NAME;

select * from moive limit 3;

select * from moive limit 12;

/* 16)	WAQ to display all the details from the table  onily 3rd , 4th  , 5th  records.
17)	WAQ to add another column with name amount_of_ticket and isert values into this table.
18)	WAQ  to display 2nd maximum amount_of_ticket from movie table by using limit clause.*/

select * from moive limit 3 offset 2;

alter table  moive  add amount_of_ticket int;

select * from moive;

 update moive set amount_of_ticket =
   case
     when hero_name=' ravi-teja' then 200
     when heroine_name='kajal' then 600
     when hero_name= 'ram charan' then 400
     when hero_name= 'allu arjun' then 100
end;

select * from moive order by amount_of_ticket desc limit 1 offset 1;

/* 19)	WAQ to display 3rd  minimum amount_of_ticket from movie table.
20)	WAQ to display all the details inside the table movie if movie_name start with “M”.
21)	-+WAQ to display all the details in movie table movie_names in descending order.
22)	WAQ to display all the details inside the table movie hero wise display the count of no_of_movie.*/

select * from moive order by amount_of_ticket limit 1 offset 2;     

select * from moive;

SELECT * FROM MOIVE  WHERE HERO_NAME LIKE "A%";

SELECT * FROM MOIVE order by HERO_NAME desc;

SELECT  HERO_NAME,COUNT(NO_OF_SONGS) FROM MOIVE GROUP BY HERO_NAME;









 











 
 