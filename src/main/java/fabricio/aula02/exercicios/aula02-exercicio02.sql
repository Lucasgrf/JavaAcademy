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
	tipo_categoria varchar(30) not null
)

create table livro
(
	isbn varchar(22) primary key,
	titulo varchar(50) not null,
	ano_publicacao date not null,
	fk_editora integer,
	foreign key (fk_editora) references editora(id),
	fk_categoria integer,
	foreign key (fk_categoria) references categoria(id)
)

create table livro_autor
(
	id serial primary key,
	fk_livro varchar(22),
	foreign key (fk_livro) references livro(isbn),
	fk_autor integer,
	foreign key (fk_autor) references autor(id)
)
