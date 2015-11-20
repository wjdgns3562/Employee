

select * from dept;

select * from emp;

select *
  from dept d inner join emp e
    on d.deptno = e.deptno
 where d.deptno = 81  


--
-- Member Table
-- DDL(Data Definition Language)
drop table member;

create table member (
	id				int,
	email			varchar(255),
	name			varchar(255),
	password 		varchar(255),
	register_date	date,
	constraint pk_id primary key (id)
);

-- 
-- Member CRUD (Create, Read, Update, Delete)
-- DML(Data Manipulation Language)
-- Create

create sequence member_id_seq

insert into member
(id, email, name, password, register_date)
values
(member_id_seq.nextval, 'xxx@yyy', '홍길동', '1234', '2015/11/11')

-- Read
select * from member;

-- Update
update member
   set name = '홍순이2',
       password = '12349876' 
 where id = 5;
 
-- Delete
delete from member
 where id = 1;

--
-- city
-- 
drop table city
 
create table city (
  id			numeric(11),
  name			char(50),
  countrycode	char(3),
  district		char(30),
  population	numeric(11),
  constraint city_pk_id primary key (id)
) 

select count(*) from city
select * from city where countrycode='KOR'

delete from city

insert into city
(
	id, 
	name, 
	countrycode, 
	district, 
	population
)
values
(
	1,
	'seoul',
	'KOR',
	'Asia',
	99998
)

--
-- inner join
-- left outer join
-- right outer join
--
select * from dept
select * from emp

select d.deptno as dept_deptno,
	   d.dname  as dept_dname,
	   d.loc    as dept_loc,
	   e.empno  as emp_empno,
	   e.ename  as emp_ename,
	   e.job	as emp_job
  from dept d inner join emp e
    on d.deptno = e.deptno
    
select d.deptno as dept_deptno,
	   d.dname  as dept_dname,
	   d.loc    as dept_loc,
	   e.empno  as emp_empno,
	   e.ename  as emp_ename,
	   e.job	as emp_job
  from dept d left outer join emp e 
    on d.deptno = e.deptno
    
    
delete from dept where deptno = 61    


