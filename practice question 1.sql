create database iffionix;
use iffionix ;
create table employe (
id int primary key,
name varchar (50),
salary int not null
);
insert into employe values(1, "adam", 25000);
insert into employe values(7, "boby", 30000);
insert into employe values(3, "casey", 40000);
select *from employe;
--- or can be done like
insert into employe
(id,name,salary)
values
(1, "adam", 25000),
(7, "boby", 30000),
(3, "casey", 40000);



