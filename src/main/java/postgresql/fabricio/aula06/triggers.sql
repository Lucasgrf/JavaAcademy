create table produtos 
(
    id integer not null primary key,
    nome varchar(50) not null,
    estoque integer
)

create sequence seq_produtos
increment by 1 no maxvalue no minvalue
cache 1

alter sequence seq_produtos owned by produtos.id

alter table produtos 
alter column id set default nextval('seq_produtos':: regclass)

insert into produtos(nome, estoque) 
values ('teclado dell 10PH', 23), 
('monitor dell P22H27', 7), 
('monitor dell 77F24', 10), 
('mouse dell MS22', 18)

create table vendas (
    id integer not null unique,
    fk_produto integer,
    quantidade integer not null,
    constraint fk_produto_id 
	foreign key (fk_produto) references produtos(id)
)

create sequence seq_vendas increment by 1 no maxvalue no minvalue cache 1

alter sequence seq_vendas owned by vendas.id

alter table vendas 
alter column id set default nextval('seq_vendas'::regclass)

select * from produtos
select * from vendas

--EVENTO -> CONDIÇÃO  -> AÇÃO = ECA

CREATE OR REPLACE FUNCTION verificaestoque() 
RETURNS TRIGGER AS $BODY$
DECLARE 
	estoqueatual integer := 0;
BEGIN
	estoqueatual := (select produtos.estoque 
					 from produtos 
					 where produtos.id = NEW.fk_produto );
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
language plpgsql volatile; -- informar a sintaxe da trigger

create trigger trigger_estoque after insert
on vendas
for each row execute procedure verificaestoque();

11 - 2

insert into vendas(fk_produto,quantidade) values (1,3)

select * from produtos
select * from vendas
