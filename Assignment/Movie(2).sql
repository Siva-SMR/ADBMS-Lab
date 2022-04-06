create database moviedatabase;
use moviedatabase;
create table ACTOR(Act_id int primary key, Act_Name varchar(10), Act_Gender varchar(10));
insert into ACTOR values (101,'Vijay','Male');
insert into ACTOR values (201,'Surya','Male');
insert into ACTOR values (301,'Ajith','Male');
insert into ACTOR values (401,'Mohanlal','Male');
insert into ACTOR values (501,'DQ','Male');
select * from ACTOR;
create table DIRECTOR (Dir_id int primary key, Dir_Name varchar(10), Dir_Phone int);
insert into DIRECTOR values (001,'Hitchcock',789456123);
insert into DIRECTOR values (002,'Atlee',456789012);
insert into DIRECTOR values (003,'Nelson',041025896);
insert into DIRECTOR values (004,'Bala',012365489);
insert into DIRECTOR values (005,'Steven Spielberg',963258741);
select * from DIRECTOR;
create table MOVIES (Mov_id int primary key, Mov_Title varchar(10), Mov_Year int, Mov_Lang varchar(10), Dir_id int);
insert into MOVIES values (100,'Psycho',1960,'English',001);
insert into MOVIES values (200,'Bigil',2019,'Tamil',002);
insert into MOVIES values (300,'Beast',2022,'Tamil',003);
insert into MOVIES values (400,'Varmaa',2018,'Tamil',004);
insert into MOVIES values (500,'Jurassic Park',1993,'English',005);
select * from MOVIES;
create table MOVIE_CAST (Act_id int primary key, Mov_id int, Role varchar(10));
insert into MOVIE_CAST values (101,100,'Hero');
insert into MOVIE_CAST values (201,200,'Hero');
insert into MOVIE_CAST values (301,300,'Hero');
insert into MOVIE_CAST values (401,400,'Hero');
insert into MOVIE_CAST values (501,500,'Hero');
select * from MOVIE_CAST;
create table RATING (Mov_id int, Rev_Stars int);
insert into RATING values (100,4);
insert into RATING values (200,5);
insert into RATING values (300,5);
insert into RATING values (400,4);
insert into RATING values (500,5);
select * from RATING;


SELECT Mov_Title FROM MOVIES JOIN  DIRECTOR where MOVIES.Dir_id = DIRECTOR.Dir_id and Dir_Name = 'Hitchcock' ;





select  Act_Name from ACTOR join MOVIE_CAST on ACTOR.Act_id = MOVIE_CAST.Act_id join MOVIES on MOVIES.Mov_id = MOVIE_CAST.Mov_id where MOVIES.Mov_Year < 2000 OR MOVIES.Mov_Year > 2015;
