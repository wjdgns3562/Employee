select * from city;

select count(*) 

drop table member;

create table member(
	id 				numeric,
	email			varchar(255),
	name			varchar(255),
	password 		varchar(255),
	regiter_date	date
	constraint pk_id primary key(id)
);