select ename from emp;
select emp.ename,dept.dname,dept.deptno from emp inner join dept on emp. deptno=dept.deptno;

select mgr from emp;
select emp.ename,dept.dname,dept.deptno from emp inner join dept on emp.deptno=dept.deptno where dept.deptno in (10,20);
select deptno from emp;
select emp.ename,dept.dname,dept.deptno from emp inner join dept on emp.deptno=dept.deptno where dept.deptno in (10,20);
select * from film where language_id =(select language_id from language where name='english');
select language_id from film;
SELECT ABS(-15) "Absolute" FROM DUAL;
select ACOS(0) from dual;
select ASIN(0) from dual;
select ATAN2(90,1) from dual;
select BITAND(12,10) from dual;
select CEIL(5.2) from dual;
CREATE TABLE CITIES
(
    CITY_ID INT PRIMARY KEY,
    CITY_NAME VARCHAR(40) NOT NULL
);

CREATE TABLE METROPOLITAN
(
    HOTEL_ID INT NOT NULL CONSTRAINT HOTELS_PK PRIMARY KEY,
    HOTEL_NAME VARCHAR(40) NOT NULL,
    CITY_ID INT CONSTRAINT METRO_FK REFERENCES CITIES(CITY_ID)
);

 CREATE TABLE FLTAVAIL
(
    FLIGHT_ID CHAR(6) NOT NULL,
    SEGMENT_NUMBER INT NOT NULL,
    FLIGHT_DATE DATE NOT NULL,
    ECONOMY_SEATS_TAKEN INT,
    BUSINESS_SEATS_TAKEN INT,
    FIRSTCLASS_SEATS_TAKEN INT,
    CONSTRAINT FLTAVAIL_PK PRIMARY KEY (FLIGHT_ID, SEGMENT_NUMBER),
    CONSTRAINT FLTS_FK
        FOREIGN KEY (FLIGHT_ID, SEGMENT_NUMBER)
        REFERENCES Flights (FLIGHT_ID, SEGMENT_NUMBER)
);

SELECT e.ename AS Emp, m.ename AS mgr
FROM emp e
LEFT JOIN emp m ON e.mgr = m.empno
WHERE e.ename LIKE 'S%';

