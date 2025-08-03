--Lab => 3
--Perform SQL queries for Like operator


--Part => A

create table student
(
 stuid int,
 firstname varchar(25),
 lastname varchar(25),
 website varchar(50),
 city varchar(25),
 address varchar(100)
)

insert into student values
(1011,'keyur','patel','techonthenet.com','rajkot','A-303 Vasant Kunj, Rajkot'),
(1022,'hardik','shah','digminecraft.com','ahmedabad','Ram Krupa, Raiya Road'),
(1033,'kajal','trivedi','bigactivitiess.com','baroda','raj bhavan plot, near garden'),
(1044,'bhoomi','gajera','checkyourmath.com','ahmedabad','Jigs Home, Narol'),
(1055,'harmit','mital','@me.darshan.com','rajkot','b-55,raj residency'),
(1066,'ashok','jani',null,'baroda','a502,club house buliding');


--1. Display the name of students whose name starts with ‘k’
