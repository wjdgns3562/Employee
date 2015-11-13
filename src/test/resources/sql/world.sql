

select count(*) 

drop table member;

create table member (
	id 				int auto_increment,
	email			varchar(255),
	name			varchar(255),
	password 		varchar(255),
	register_date	date,
	constraint pk_id primary key (id)
);

--
--Member CRUD(Create, Read, Update, Delete)
--DML(Data Manipulation Language)
--Create
insert into member
(email, name, password, register_date)
values
('xxx@yyy','홍길동3','1234','2015/11/11')

--Read 
select * from member;

--Update
update member set name= '홍순이2', password ='9876' where id=5;

--Delete
delete from member;




--City
--
--selectAll
select  id,
		name,
		countryCode,
		district,
		population
   from city

--selectByCountryCode(String countryCode)  
 select id,
		name,
		countryCode,
		district,
		population
   from city
  where countryCode = 'KOR'
  
  
--
-- Country
--
  
select * from city

select * from country where code='KOR';

select ci.id,
	   ci.countrycode,
	   ci.name,
	   co.code,
	   co.name,
	   co.headofstate
  from city ci inner join country co
    on ci.countrycode = co.code
 where co.code='KOR'

