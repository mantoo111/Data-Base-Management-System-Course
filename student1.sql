create table temp(
student_id int ,
student_name varchar(50),
student_email varchar(50),
student_phonenumber number(15),
student_age int not NULL

);
INSERT INTO temp  VALUES (1,'ayesha','ayeshi@gmail',0978654345,12);
INSERT INTO temp  VALUES (2,'awais','awais@gmail',65467533345,23);
INSERT INTO temp  VALUES (3,'arfa','ayeshi@gmail',0978689045,20);
INSERT INTO temp  VALUES (4,'khadija','hadija@gmail',03366567,19);
select*from temp;
alter table temp add  gender varchar(10);
alter table temp drop column student_phonenumber;
alter table temp modify student_id varchar(10);--for this feature column must be empty
desc temp;
alter table temp rename to emp11;
alter table emp11 add primary key (student_id);--givin error bec student_id is already rimary key