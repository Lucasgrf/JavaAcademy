
SQL

--comentários no sql
--DDL -> Data Definition Language

CREATE DATABASE aula;
	Table
	Trigger
	Procedure
	Sequence

DROP DATABASE aula --Usado pra apagar o banco de dados inteiro

CREATE TABLE cursos
	(
		id integer,
		nome varchar(50),
		ch integer
	)

CREATE TABLE pessoas
	(
		CPF varchar(11) primary key,
		RG varchar(7) unique
		
		
	)

ALTER

ALTER TABLE cursos
add column coordenador varchar(120)

ALTER TABLE cursos
drop column coordenador

ALTER TABLE cursos
alter column coordenador type varchar(100)

ALTER TABLE cursos
rename column coordenador to coord

--Banco matrícula
create database matriculas

create table alunos
(
		id serial primary key,
		nome varchar(100) not null
)

create table professores
(
		id serial primary key,
		nome varchar(100) not null
)

create table professores
(
		id serial primary key,
		nome varchar(100) not null
)

create table cursos
(
		id serial primary key,
		nome varchar(60) not null,
		fk_coord integer not null,
		foreign key (fk_coord) references professores(id)
		
)

create table matriculas
(
		id serial primary key,
		fk_aluno integer not null,
		fk_curso integer not null,
		foreign key (fk_aluno) references Alunos(id),
		foreign key (fk_curso) references Cursos(id)
)

select * from matriculas

--DML -> Data manipulation Language

INSERT

DELETE

UPDATE


