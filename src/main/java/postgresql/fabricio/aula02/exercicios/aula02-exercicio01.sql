
drop table tipo_evento

create table tipo_evento
(
	id serial primary key,
	tipo varchar(60) not null
)

create table pessoas
(
	cpf varchar(11) primary key,
	nome varchar(120) not null,
	email varchar(150) not null,
	fone varchar(20)
)

create table eventos 
(
	id serial primary key,
	nome varchar(120) not null,
	data_init date,
	data_fim date,
	localizacao varchar(150) not null,
	fk_tipo integer,
	foreign key (fk_tipo) references tipo_evento(id)
)

create table programacao
(
	id serial primary key,
	nome varchar(120) not null,
	data_init date,
	data_fim date,
	descricao varchar(1000),
	lugar varchar(120) not null,
	responsavel varchar(100) not null,
	fk_evento integer,
	foreign key (fk_evento) references eventos(id)
	
)

create table ingressos
(
	id serial primary key,
	titulo varchar(100) not null,
	lugar varchar(120) not null,
	valor real not null,
	quantidade integer,
	fk_evento integer,
	foreign key (fk_evento) references eventos(id)
)

create table compras
(
	id serial primary key,
	quantidade integer,
	fk_pessoa varchar(11),
	foreign key (fk_pessoa) references pessoas(cpf)
)

select * from eventos