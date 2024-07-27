create database university;
use university;
create table dept(
id int primary key,
name varchar(50)
);

create table teacher(
id int primary key,
name varchar(50),
dept_id int,
foreign key (dept_id) references dept(id)
on update cascade
on delete cascade
); 
insert into teacher
values
(101,"ansa",101),
(102, "arfa",102);
select *from teacher; 
insert into dept
values
(101, "ENGLISH"),
(102,"URDU");
select *from dept;
update dept
set id=103
where id=102;
--- in the above line changes made in dept table reflect changes in teacher table .
drop table teacher;



