create table autor
(
	id serial primary key,
	nome varchar(120) not null,
	nacionalidade varchar(50) not null
)

create table editora
(
	id serial primary key,
	nome varchar(120) not null
)

create table categoria
(
	id serial primary key,
	tipo_categoria varchar(30) not null --poderia ser apenas (nome)
)
drop table livro
create table livro
(
	isbn varchar(22) primary key,
	titulo varchar(50) not null,
	ano_publicacao integer,
	fk_editora integer,
	foreign key (fk_editora) references editora(id),
	fk_categoria integer,
	foreign key (fk_categoria) references categoria(id)
)
drop table livro_autor
create table livro_autor
(
	id serial primary key,
	fk_livro varchar(22),
	foreign key (fk_livro) references livro(isbn),
	fk_autor integer,
	foreign key (fk_autor) references autor(id)
)

--DML

INSERT

insert into categoria(tipo_categoria) values('Horror')
insert into categoria(tipo_categoria) values('Ficção Científica')
insert into categoria(tipo_categoria) values('Policial')
 
insert into editora(nome) values('Rocco'),('Sextante')

insert into autor (nome, nacionalidade) values ('Lucas', 'Brasileiro')

insert into livro (isbn, titulo,ano_publicacao,fk_editora,fk_categoria)
	values ('232349232132', 'O corvo',2000,2,1)

--insert into livro (isbn, titulo,ano_publicacao,fk_editora,fk_categoria)
	--values ('23234234567', 'Harry Potter',2000,1,4); Não da pra inserir numa categoria que não existe

insert into livro_autor(fk_livro,fk_autor) values('232349232132',4)

--exercicio
insert into categoria(tipo_categoria) values('Literatura Juvenil')
insert into categoria(tipo_categoria) values('Ficção Científica')
insert into categoria(tipo_categoria) values('Humor')

insert into editora(nome) values('Rocco'),('Wmf Martins Fontes'), ('Casa da Palavra'),
	('Belas letras'), ('Matrix')


insert into autor (nome, nacionalidade) values ('J.K. Rowling', 'Inglaterra');
insert into autor (nome, nacionalidade) values ('Clive Staples Lewis', 'Inglaterra');
insert into autor (nome, nacionalidade) values ('Afonso Solano', 'Brasil');
insert into autor (nome, nacionalidade) values ('Marcos Piangers', 'Brasil');
insert into autor (nome, nacionalidade) values ('Ciro Botelho - Tiririca', 'Brasil');
insert into autor (nome, nacionalidade) values ('Bianca Mól', 'Brasil');

insert into livro (isbn, titulo,ano_publicacao,fk_editora,fk_categoria)
	values ('8532511015', 'Harry Potter e a Pedra Filosofal',2000,3,5)

insert into livro (isbn, titulo,ano_publicacao,fk_editora,fk_categoria)
	values ('9788578270698', 'As crônicas de Nárnia',2009,4,5)
	
insert into livro (isbn, titulo,ano_publicacao,fk_editora,fk_categoria)
	values ('9788577343348', 'O Espadachim de Carvão',2013,5,6)

insert into livro (isbn, titulo,ano_publicacao,fk_editora,fk_categoria)
	values ('9788581742458', 'O Papai é Pop',2015,6,7)

insert into livro (isbn, titulo,ano_publicacao,fk_editora,fk_categoria)
	values ('9788582302026', 'Pior Que Tá Não Fica',2015,7,7)

insert into livro (isbn, titulo,ano_publicacao,fk_editora,fk_categoria)
	values ('9788577345670', 'Garota Desdobrável',2015,5,5)

insert into livro (isbn, titulo,ano_publicacao,fk_editora,fk_categoria)
	values ('8532512062', 'Harry Potter e o Prisioneiro de Azkaban',2000,3,5)

insert into livro_autor(fk_livro,fk_autor) values('8532511015',6);
insert into livro_autor(fk_livro,fk_autor) values('9788578270698',7);
insert into livro_autor(fk_livro,fk_autor) values('9788577343348',8);
insert into livro_autor(fk_livro,fk_autor) values('9788581742458',9);
insert into livro_autor(fk_livro,fk_autor) values('9788582302026',10);
insert into livro_autor(fk_livro,fk_autor) values('9788577345670',11);
insert into livro_autor(fk_livro,fk_autor) values('8532512062',6);
	
SELECT

select * from livro
select * from categoria
select * from editora
select * from autor
select * from livro_autor

DELETE

delete from editora
delete from categoria
delete from autor
delete from livro
delete from livro_autor
--deleta tudo da tabela editora, não usar

delete from autor where id = 5 
--maneira correta de usar o delete

UPDATE

update editora set nome = 'Darkside' 
--update usado de maneira errada

update categoria set tipo_categoria = 'Humor' where id = 3
--maneira correta utilizando where no update
