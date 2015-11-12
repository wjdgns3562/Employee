select * from member;

create table member (
	id 				int,
	email			varchar(255),
	name			varchar(255),
	password 		varchar(255),
	register_date	date,
	constraint pk_id primary key (id)
);

--Member CRUD(Create, Read, Update, Delete)
--DML(Data Manipulation Language)
--Create

create sequence member_id_seq

insert into member
(id, email, name, password, register_date)
values
(member_id_seq.nextval,'xxx@yyy','홍길동3','1234','2015/11/11')

--Read 
select * from member;

--Update
update member set name= '홍순이2', password ='9876' where id=5;

--Delete
delete from member;

--
--city
--
drop table city;

create table city (
  id 			numeric(11),
  name 			char(35),
  countryCode 	char(3),
  district 		char(20),
  population 	numeric(11),
  constraint city_pk_id primary key (id)
);