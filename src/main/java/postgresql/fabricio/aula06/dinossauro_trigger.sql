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

insert into eras(nome,era_inicio,era_fim) values('Cretáceo',145,65); --2
insert into eras(nome,era_inicio,era_fim) values('Jurássico',200,145); --3
insert into eras(nome,era_inicio,era_fim) values('Triássico',251,200); --4

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
BEGIN
    IF (NEW.inicio <= (SELECT era_inicio FROM eras WHERE id = NEW.fk_era) AND
        NEW.fim >= (SELECT era_fim FROM eras WHERE id = NEW.fk_era)) THEN
        RAISE NOTICE 'Tudo certo!';
        RETURN NEW;
    ELSE
        RAISE EXCEPTION 'Inserção cancelada!';
        RETURN NULL;
    END IF;
END;
$BODY$
LANGUAGE plpgsql;

CREATE TRIGGER trigger_era
BEFORE INSERT OR UPDATE
ON dinossauros
FOR EACH ROW
EXECUTE FUNCTION verificaera();

--DROP TRIGGER trigger_era ON dinossauros; //dropar uma trigger

--Inserts
insert into dinossauros(nome,toneladas,ano_descoberta,inicio,fim,fk_grupo,fk_descobridor,fk_regiao,fk_era) 
	values('Saichania',4,1977,145,66,1,1,1,2);

insert into dinossauros(nome,toneladas,ano_descoberta,inicio,fim,fk_grupo,fk_descobridor,fk_regiao,fk_era) 
	values('Tricerátops',6,1887,70,66,2,2,2,2);

insert into dinossauros(nome,toneladas,ano_descoberta,inicio,fim,fk_grupo,fk_descobridor,fk_regiao,fk_era) 
	values('Kentrossauro',2,1909,200,145,3,3,3,3);

insert into dinossauros(nome,toneladas,ano_descoberta,inicio,fim,fk_grupo,fk_descobridor,fk_regiao,fk_era) 
	values('Pinacossauro',6,1999,85,75,1,4,4,4); --Era errada

insert into dinossauros(nome,toneladas,ano_descoberta,inicio,fim,fk_grupo,fk_descobridor,fk_regiao,fk_era) 
	values('Alossauro',3,1877,155,150,4,5,5,3);

insert into dinossauros(nome,toneladas,ano_descoberta,inicio,fim,fk_grupo,fk_descobridor,fk_regiao,fk_era) 
	values('Torossauro',8,1891,67,65,2,2,6,2);

insert into dinossauros(nome,toneladas,ano_descoberta,inicio,fim,fk_grupo,fk_descobridor,fk_regiao,fk_era) 
	values('Anquilossauro',8,1906,66,63,1,6,5,4); --Era errada

select * from dinossauros