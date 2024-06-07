
drop table tipo_evento

create table tipo_evento
(
	id serial primary key,
	tipo varchar(60)
)

create table pessoas
(
	cpf varchar(11) primary key,
	nome varchar(120) not null,
	email varchar(150) not null,
	fone varchar(20) not null
)

create table eventos 
(
	id serial primary key,
	nome varchar(120) not null,
	data_init date not null,
	data_fim date not null,
	localizacao varchar(150),
	fk_tipo integer not null,
	foreign key (fk_tipo) references tipo_evento(id)
)

create table programacao
(
	id serial primary key,
	nome varchar(120) not null,
	data_init date not null,
	data_fim date not null,
	descricao varchar(1000) not null,
	lugar varchar(120) not null,
	responsavel varchar(100) not null,
	fk_evento integer not null,
	foreign key (fk_evento) references eventos(id)
	
)

create table ingressos
(
	id serial primary key,
	titulo varchar(100) not null,
	lugar varchar(120) not null,
	valor real not null,
	quantidade integer not null,
	fk_evento integer not null,
	foreign key (fk_evento) references eventos(id)
)

create table compras
(
	id serial primary key,
	quantidade integer not null,
	fk_pessoa varchar(11) not null,
	foreign key (fk_pessoa) references pessoas(cpf)
)

select * from eventos