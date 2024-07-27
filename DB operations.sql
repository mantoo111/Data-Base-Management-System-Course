create database temp1;
create database if not exists temp1;
use temp1;
create table studet (
id int primary key,
name varchar (50),
age int not null
);
insert into studet values(1, "ansa",22);
insert into studet values(2, "asma", 27);
insert into studet values(3, "arslan", 25);
insert into studet values(4, "arfan", 21);
show databases;
show tables;
select *from studet;
insert into studet
(id,name,age)
values
(11, "sana", 34);
--- keys:
create table temp2(
id int unique
);
insert into temp2 values(101);
insert into temp2 values(141);
select *from temp2;
create table emp(
id int,
salary int default 25000
);
insert into emp (id)value (10);
select *from emp;


CREATE TABLE pricelist (
    room_number NUMBER(10),
    season VARCHAR(5),
    weekdays VARCHAR(2),
    price NUMBER(12),
    FOREIGN KEY (room_number) REFERENCES student(std_id),--- bec of simple id
    PRIMARY KEY (room_number, season, weekdays)
);

