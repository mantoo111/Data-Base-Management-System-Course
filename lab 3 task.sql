/*create table addresses(
address_id int primary KEY,
address_detail varchar(50)
);*/
create table parent_address(
parent_id int ,
address_id int,
data_address_from int primary key,
data_address_to varchar(50),
foreign key (parent_id )references parents(parent_id)

);
create table parents(
parent_id int primary key,
gender varchar(10),
first_name varchar(10),
middle_name varchar(10),
last_name varchar(10),
other_parent_details varchar(50)


);
create table students(
student_id int primary key,
gender varchar(10),
first_name varchar(10),
middle_name varchar(10),
last_name varchar(10),
date_of_birth varchar(15),
other_student_details varchar(50)


);

create table subjects(
subject_id int primary key,
subject_name varchar(10)

);
create table schools(
school_id int primary key,
address_id int,
school_name varchar(10),
school_principal varchar(10),
other_school_details varchar(50),
foreign key (address_id) references addresses(address_id)

);

create table homework(
homework_id int primary key,
student_id int,
date_created DATE,
homework_content varchar(10),
grade char,
other_homework_details varchar(50),
foreign key (student_id) references students(student_id)

);

create table reports(
report_id int primary key,
student_id int,
date_created DATE,
report_content varchar(10),
teacher_comments varchar(100),
other_report_details varchar(50),
foreign key (student_id) references students(student_id)
);
create table family_members(
family_member_id int primary key,
family_id int,
parent_of_student_member int not null,
parent_id int,
student_id,
foreign key (family_id) references families(family_id),
foreign key (parent_id) references parents(parent_id),
foreign key (student_id) references students(student_id)

);
create table families(
family_id int primary key,
head_of_family_member_id int,
family_name varchar(20),
foreign key (head_of_family_member_id) references parents(parent_id)

);

create table teachers(
teacher_id int primary key,
school_id int,
gender varchar(10),
first_name varchar(10),
middle_name varchar(10),
last_name varchar(10),
other_teacher_details varchar(50),
foreign key (school_id) references students(student_id)
);
create table classes(
class_id int primary key,
subject_id int,
teacher_id int,
class_code int not null,
class_name varchar(10),
date_from date,
date_to date,
foreign key (subject_id) references subjects(subject_id),
foreign key (teacher_id) references teachers(teacher_id)
);
desc classes;
