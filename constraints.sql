create database collage;
use collage;
create table studentinfo(
rollno int primary key,
name varchar(50),
marks int not null,
grade varchar(20),
city varchar(50)
);
ALTER TABLE studentinfo ADD COLUMN city VARCHAR(50);

insert into studentinfo
(rollno,name,marks,grade,city)
values
(101, "ali", 45, "F","rwp"),
(102, "arfa", 100, "A","isl"),
(103, "rida", 87, "A","rwp"),
(104, "ismma", 55, "B","lhr");
select *from studentinfo;
select distinct city from studentinfo;
--- if you want to print distinct then for that you can write select distinct city from studentinfo;->it will print only that data with distinct city.
select *from studentinfo where marks>60;
select *from studentinfo order by marks;
select city,count(rollno)
from studentinfo
group by city;
select city,count(rollno)
from studentinfo
group by city
having max(marks)>90;

select city 
from studentinfo
where grade="A"
group by city
having max(marks)<90
order by city asc;
set sql_safe_updates=0;
update studentinfo
set grade="O"
where grade="A";
select * from studentinfo;
