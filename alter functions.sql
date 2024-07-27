create database school;
use school;
create table student(
rollno int primary key,
name varchar(50),
marks int not null,
grade varchar(20),
city varchar(50)
);
insert into student
(rollno,name,marks,grade,city)
values
(101, "ali", 45, "F","rwp"),
(102, "arfa", 100, "A","isl"),
(103, "rida", 87, "A","rwp"),
(104, "ismma", 55, "B","lhr");
select *from student;
alter table student
add column xyz int not null default 19;

--- modify column xyz varchar(50);
