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
	nome varchar(30) not null,
	era_inicio integer not null,
	era_fim integer not null
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

insert into eras(nome,era_inicio,era_fim) values('Cretáceo',145,65);
insert into eras(nome,era_inicio,era_fim) values('Jurássico',200,145);
insert into eras(nome,era_inicio,era_fim) values('Triássico',251,200);

select * from eras

insert into descobridores(nome) values('Maryanska');
insert into descobridores(nome) values('John Bell Hatcher');
insert into descobridores(nome) values('Cientistas Alemãs');
insert into descobridores(nome) values('Museu Americano de História Natural');
insert into descobridores(nome) values('Othniel Charles Marsh');
insert into descobridores(nome) values('Barnum Brown');

select * from descobridores

--Trigger
	
CREATE OR REPLACE FUNCTION verificaera() 
RETURNS TRIGGER AS $BODY$
DECLARE 
		inicio integer := 0;
		fim integer := 0;
BEGIN
	era_inicio := (select eras.era_inicio
					 from eras 
					 where eras.id = NEW.fk_era);
	era_fim := (select eras.era_fim
					 from eras 
					 where eras.id = NEW.fk_era);
	IF(estoqueatual >= NEW.quantidade)
	THEN
		update produtos set estoque = (estoqueatual - NEW.quantidade)
		where produtos.id = new.fk_produto;
		raise notice 'Tudo certo!';
		return new;
	ELSE
		RAISE EXCEPTION 'Inserção cancelada!';
		return null;
	END IF;
END
$BODY$
language plpgsql volatile;