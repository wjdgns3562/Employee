

select * from city;

select * from country;

select count(*) from city;
select count(*) from country;

--
-- Member Table
-- DDL(Data Definition Language)
drop table member;

create table member (
	id				int auto_increment,
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
insert into member
(email, name, password, register_date)
values
('xxx@yyy', '홍길동', '1234', '2015/11/11')

-- Read
select * from member;

-- Update
update member
   set name = '홍순이2',
       password = '12349876' 
 where id = 5;
 
-- Delete
delete from member
 where id = 5;
 
--
-- City
--

-- selectAll() 
select id,
	   name,
	   countrycode,
	   district,
	   population
  from city

-- selectByCountryCode(String countryCode)  
select id,
	   name,
	   countrycode,
	   district,
	   population
  from city
 where countrycode = 'USA' 
  
--
-- Country
--

select * from city

select * from country where code = 'KOR'

select ci.id,
	   ci.countrycode,
	   ci.name,
	   co.code,
	   co.name, 
	   co.headofstate
  from city ci inner join country co 
    on ci.countrycode = co.code
 where co.code = 'USA'   

select id,
	   name,
	   countrycode,
	   district,
	   population
  from city
 order by countrycode asc, name asc
 limit 40, 10
 -- start, length
 -- from 0
 
 
 
 
 
 
 
















