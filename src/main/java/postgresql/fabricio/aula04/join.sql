create table java
(
	professor varchar(20) null
	
);

create table dotnet
(
	professor varchar(20) null
	
);

insert into java values ('Fabricio'), ('Lucas'), ('Reiner')

insert into dotnet values ('Fabricio'), ('Ricardo')

select * from java
select * from dotnet

--inner join
select * from java
inner join dotnet
on java.professor = dotnet.professor

--left join
select * from java
left join dotnet on java.professor = dotnet.professor

--left join exclusivo
select * from java
left join dotnet on java.professor = dotnet.professor
where dotnet.professor is null

--right join
select * from java
right join dotnet on java.professor = dotnet.professor

--right join exclusivo
select * from java
right join dotnet 
on java.professor = dotnet.professor
where java.professor is null

--full outer join
select * from java
full outer join dotnet on java.professor = dotnet.professor

--full outer join exclusivo
select * from java
full outer join dotnet on java.professor = dotnet.professor
where java.professor is null or dotnet.professor is null


