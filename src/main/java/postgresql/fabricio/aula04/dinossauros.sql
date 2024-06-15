create table regioes
(
	id serial primary key,
	nome varchar(70) not null
)

create table grupos
(
	id serial primary key,
	nome varchar(30) not null
)

create table eras
(
	id serial primary key,
	nome varchar(30) not null
)

create table descobridores
(
	id serial primary key,
	nome varchar(80) not null
)

create table dinossauros
(
	id serial primary key,
	nome varchar(80) not null,
	toneladas integer not null,
	ano_descoberta integer not null,
	inicio integer,
	fim integer,
	fk_grupo integer,
	fk_descobridor integer,
	fk_regiao integer,
	fk_era integer,
	foreign key (fk_grupo) references grupos (id),
	foreign key (fk_descobridor) references descobridores (id),
	foreign key (fk_regiao) references regioes (id),
	foreign key (fk_era) references eras (id)
	
)

insert into regioes(nome) values('Mongólia');
insert into regioes(nome) values('Canadá');
insert into regioes(nome) values('Tanzânia');
insert into regioes(nome) values('China');
insert into regioes(nome) values('América do Norte');
insert into regioes(nome) values('USA');

select * from regioes

insert into grupos(nome) values('Anquilossauros');
insert into grupos(nome) values('Ceratopsídeos');
insert into grupos(nome) values('Estegossauros');
insert into grupos(nome) values('Terápodes');

select * from grupos

insert into eras(nome) values('Cretáceo');
insert into eras(nome) values('Jurássico');

select * from eras

insert into descobridores(nome) values('Maryanska');
insert into descobridores(nome) values('John Bell Hatcher');
insert into descobridores(nome) values('Cientistas Alemãs');
insert into descobridores(nome) values('Museu Americano de História Natural');
insert into descobridores(nome) values('Othniel Charles Marsh');
insert into descobridores(nome) values('Barnum Brown');

select * from descobridores

insert into dinossauros(nome,toneladas,ano_descoberta,inicio,fim,fk_grupo,fk_descobridor,fk_regiao,fk_era) 
	values('Saichania',4,1977,145,66,1,1,1,1);

insert into dinossauros(nome,toneladas,ano_descoberta,inicio,fim,fk_grupo,fk_descobridor,fk_regiao,fk_era) 
	values('Tricerátops',6,1887,70,66,2,2,2,1);

insert into dinossauros(nome,toneladas,ano_descoberta,inicio,fim,fk_grupo,fk_descobridor,fk_regiao,fk_era) 
	values('Kentrossauro',2,1909,201,145,3,3,3,2);

insert into dinossauros(nome,toneladas,ano_descoberta,inicio,fim,fk_grupo,fk_descobridor,fk_regiao,fk_era) 
	values('Pinacossauro',6,1999,85,75,1,4,4,1);

insert into dinossauros(nome,toneladas,ano_descoberta,inicio,fim,fk_grupo,fk_descobridor,fk_regiao,fk_era) 
	values('Alossauro',3,1877,155,150,4,5,5,2);

insert into dinossauros(nome,toneladas,ano_descoberta,inicio,fim,fk_grupo,fk_descobridor,fk_regiao,fk_era) 
	values('Torossauro',8,1891,67,65,2,2,6,1);

insert into dinossauros(nome,toneladas,ano_descoberta,inicio,fim,fk_grupo,fk_descobridor,fk_regiao,fk_era) 
	values('Anquilossauro',8,1906,66,63,1,6,5,1);

select * from dinossauros

select nome from dinossauros
select nome,toneladas from dinossauros order by nome

select dinossauros.nome,grupos.nome from dinossauros, grupos
where dinossauros.fk_grupo = grupos.id --relacionar chaves

select * from dinossauros 
inner join grupos on dinossauros.fk_grupo = grupos.id


select * from dinossauros
where toneladas > 4

select * from dinossauros
where ano_descoberta = 1909

select dinossauros.id, dinossauros.nome as Dinossauro, dinossauros.toneladas, dinossauros.ano_descoberta,
		grupos.nome as Grupo, descobridores.nome as Descobridor, eras.nome as Era, 
		dinossauros.inicio, dinossauros.fim, regioes.nome as Região
from dinossauros, grupos, descobridores, eras, regioes
where dinossauros.fk_grupo = grupos.id and dinossauros.fk_descobridor = descobridores.id
		and dinossauros.fk_era = eras.id and dinossauros.fk_regiao = regioes.id
order by dinossauros.nome

select dinossauros.id, dinossauros.nome as Dinossauro, dinossauros.toneladas, dinossauros.ano_descoberta,
		grupos.nome as Grupo, descobridores.nome as Descobridor, eras.nome as Era, 
		dinossauros.inicio, dinossauros.fim, regioes.nome as Região 
	from dinossauros
join grupos on dinossauros.fk_grupo = grupos.id
join descobridores on dinossauros.fk_descobridor = descobridores.id
join eras on dinossauros.fk_era = eras.id
join regioes on dinossauros.fk_regiao = regioes.id
order by dinossauros.ano_descoberta asc