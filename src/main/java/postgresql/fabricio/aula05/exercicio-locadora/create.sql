create table atores(
	id serial primary key,
	nome varchar(60) not null
);

create table generos(
	id serial primary key,
	nome varchar(60) not null
);

create table categorias(
	id serial primary key,
	nome varchar(60) not null,
	valor money
);

create table filmes(
	id serial primary key,
	titulo_original varchar(100) not null,
	titulo varchar(100),
	quantidade int not null,
	fk_categoria int,
	fk_genero int,
	foreign key (fk_categoria) references categorias(id),
	foreign key (fk_genero) references generos(id)
);

create table filme_atores(
	ator_id int,
	filme_id int,
	ator varchar(60) not null,
	diretor varchar(60) not null,
	primary key (ator_id,filme_id),
	foreign key (ator_id) references atores(id),
	foreign key (filme_id) references filmes(id)
);

create table profissao(
	id serial primary key,
	nome varchar(60) not null
);

create table clientes(
	id serial primary key,
	cpf varchar(11) not null,
	nome varchar(60) not null,
	telefone varchar(10) not null,
	fk_profissao int,
	foreign key (fk_profissao) references profissao(id)
);

create table dependentes(
	cliente_id int,
	dependente_id int,
	parentesco varchar(20),
	primary key (cliente_id,dependente_id),
	foreign key (cliente_id) references clientes(id),
	foreign key (dependente_id) references clientes(id)
);

ALTER TABLE dependentes ADD COLUMN nome varchar(100) NOT NULL;

create table locacao(
	id serial primary key,
	data_locacao date not null,
	desconto money,
	multa money,
	sub_total money not null,
	fk_cliente int,
	foreign key (fk_cliente) references clientes(id)
);

create table locacao_filme(
	locacao_id int,
	filme_id int,
	valor money not null,
	num_dias int not null,
	data_devolucao date not null,
	primary key (locacao_id,filme_id),
	foreign key (locacao_id) references locacao(id),
	foreign key (filme_id) references filmes(id)
);

create table enderecos(
	id serial primary key,
	logradouro varchar(40) not null,
	tipo_log varchar(40),
	complemento varchar(20),
	cidade varchar(60) not null,
	uf varchar(10),
	cep varchar(10),
	numero varchar(10) not null,
	bairro varchar(60) not null
);

create table cli_endereco(
	fk_endereco int,
	fk_cliente int,
	foreign key (fk_endereco) references enderecos(id),
	foreign key (fk_cliente) references clientes(id)
);