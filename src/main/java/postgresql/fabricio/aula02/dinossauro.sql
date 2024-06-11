create table descobridor
(
	id serial primary key,
	nome varchar(150) not null,
	pais varchar(60) not null
)

create table grupo
(
	id serial primary key,
	nome varchar(120) not null
)

create table periodo_existencia
(
	id serial primary key,
	inicio integer not null,
	fim integer not null
)

create table era
(
	id serial primary key,
	nome varchar(120) not null,
	fk_existencia integer,
	foreign key (fk_existencia) references periodo_existencia(id)
)

create table dinossauro
(
	id serial primary key,
	nome varchar(200) not null,
	peso_toneladas integer not null,
	ano_descoberta varchar(4) not null,
	fk_grupo integer,
	fk_era integer,
	fk_descobridor integer,
	foreign key (fk_grupo) references grupo(id),
	foreign key (fk_era) references era(id),
	foreign key (fk_descobridor) references descobridor(id)
)