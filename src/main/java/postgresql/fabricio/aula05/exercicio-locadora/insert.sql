--Atores
insert into atores(nome) values ('Gabryell Ayjhonson'); --1
insert into atores(nome) values ('Lucas Amanssafera'); --2
insert into atores(nome) values ('Renato Areguão'); --3
insert into atores(nome) values ('Leandro Hassudu'); --4
insert into atores(nome) values ('Fábio Porchet'); --5
insert into atores(nome) values ('Tatá Ternéca'); --6
insert into atores(nome) values ('Paulo Gostoso'); --7
insert into atores(nome) values ('Marcos Verdes'); --8
insert into atores(nome) values ('Rodrigo Sarranha'); --9
insert into atores(nome) values ('Zacarias Pipoca'); --10

select * from atores

--Generos
insert into generos(nome) values ('Ação'); --1
insert into generos(nome) values ('Comédia'); --2
insert into generos(nome) values ('Drama'); --3
insert into generos(nome) values ('Terror'); --4
insert into generos(nome) values ('Ficção Científica'); --5
insert into generos(nome) values ('Romance'); --6
insert into generos(nome) values ('Aventura'); --7
insert into generos(nome) values ('Fantasia'); --8
insert into generos(nome) values ('Animação'); --9
insert into generos(nome) values ('Musical'); --10

select * from generos

--Categorias
insert into categorias(nome,valor) values ('Clássico',20); --1
insert into categorias(nome,valor) values ('Independente',21); --2
insert into categorias(nome,valor) values ('Documentário',22); --3
insert into categorias(nome,valor) values ('Infantil',23); --4
insert into categorias(nome,valor) values ('Curta-Metragem',24); --5
insert into categorias(nome,valor) values ('Épico',25); --6
insert into categorias(nome,valor) values ('Cult',26); --7
insert into categorias(nome,valor) values ('Baseado em fatos reais',27); --8
insert into categorias(nome,valor) values ('Premiado',28); --9
insert into categorias(nome,valor) values ('Estrangeiro',29); --10

select * from categorias

--Filmes
insert into filmes(titulo_original,titulo,quantidade,fk_categoria,fk_genero) --1
	values ('The Shawshank Redemption','Um Sonho de Liberdade',15,1,3);

insert into filmes(titulo_original,titulo,quantidade,fk_categoria,fk_genero)  --2
	values ('The Godfather','O Poderoso Chefão',20,9,3);

insert into filmes(titulo_original,titulo,quantidade,fk_categoria,fk_genero) --3
	values ('The Dark Knight','O Cavaleiro das Trevas',18,10,1);

insert into filmes(titulo_original,titulo,quantidade,fk_categoria,fk_genero) --4
	values ('Inception','A Origem',10,7,5);

insert into filmes(titulo_original,titulo,quantidade,fk_categoria,fk_genero) --5
	values ('The Matrix','Matrix',22,9,5);

insert into filmes(titulo_original,titulo,quantidade,fk_categoria,fk_genero) --6
	values ('Titanic','Titanic',16,1,3);

insert into filmes(titulo_original,titulo,quantidade,fk_categoria,fk_genero) --7
	values ('Jurassic Park','Parque dos Dinossauros',14,2,4);

insert into filmes(titulo_original,titulo,quantidade,fk_categoria,fk_genero) --8
	values ('The Lion King','O Rei Leão',20,4,7);

insert into filmes(titulo_original,titulo,quantidade,fk_categoria,fk_genero) --9
	values ('The Avengers','Os Vingadores',18,10,1);

insert into filmes(titulo_original,titulo,quantidade,fk_categoria,fk_genero) --10
	values ('The Silence of the Lambs','O Silêncio dos Inocentes',10,8,4);

insert into filmes(titulo_original,titulo,quantidade,fk_categoria,fk_genero) --11
	values ('The Midnight Library','A Biblioteca da Meia-Noite',25,5,6);

insert into filmes(titulo_original,titulo,quantidade,fk_categoria,fk_genero) --12
	values ('Galactic Expedition','Expedição Galáctica',17,7,8);

insert into filmes(titulo_original,titulo,quantidade,fk_categoria,fk_genero) --13
	values ('The Forgotten Kingdom','O Reino Esquecido',12,3,5);

insert into filmes(titulo_original,titulo,quantidade,fk_categoria,fk_genero) --14
	values ('The Last Laugh','A Última Risada',14,1,10);

insert into filmes(titulo_original,titulo,quantidade,fk_categoria,fk_genero) --15
	values ('Echoes of the Past','Ecos do Passado',33,2,9);

insert into filmes(titulo_original,titulo,quantidade,fk_categoria,fk_genero) --16
	values ('Panic!','Pânico!',20,8,10);

insert into filmes(titulo_original,titulo,quantidade,fk_categoria,fk_genero) --17
	values ('Panic! 2','Pânico! 2',20,10,8);

insert into filmes(titulo_original,titulo,quantidade,fk_categoria,fk_genero) --18
	values ('Panic! 3','Pânico! 3',20,1,4);

insert into filmes(titulo_original,titulo,quantidade,fk_categoria,fk_genero) --19
	values ('Panic! 4','Pânico! 4',20,4,1);

insert into filmes(titulo_original,titulo,quantidade,fk_categoria,fk_genero) --20
	values ('Panic! 5','Pânico! 5',20,1,1);

insert into filmes(titulo_original,titulo,quantidade,fk_categoria,fk_genero) --21
	values ('Panic! 6','Pânico! 6',20,4,4);

insert into filmes(titulo_original,titulo,quantidade,fk_categoria,fk_genero) --22
	values ('Panic! 7','Pânico! 5',20,8,8);

insert into filmes(titulo_original,titulo,quantidade,fk_categoria,fk_genero) --23
	values ('Panic! 8','Pânico! 6',20,10,10);

select * from filmes

--filmes_ator
insert into filme_atores (ator_id, filme_id, ator, diretor) --1
	values (1, 1, 'Sim', 'Não');

insert into filme_atores (ator_id, filme_id, ator, diretor) --2
	values (9, 2, 'Sim', 'Não');

insert into filme_atores (ator_id, filme_id, ator, diretor) --3
	values (10, 3, 'Sim', 'Sim');

insert into filme_atores (ator_id, filme_id, ator, diretor) --4
	values (2, 6, 'Sim', 'Não');

insert into filme_atores (ator_id, filme_id, ator, diretor) --5
	values (3, 7, 'Sim', 'Não');

insert into filme_atores (ator_id, filme_id, ator, diretor) --6
	values (4, 4, 'Sim', 'Sim');

insert into filme_atores (ator_id, filme_id, ator, diretor) --7
	values (5, 6, 'Sim', 'Não');

insert into filme_atores (ator_id, filme_id, ator, diretor) --8
	values (6, 5, 'Sim', 'Não');

insert into filme_atores (ator_id, filme_id, ator, diretor) --9
	values (7, 8, 'Sim', 'Não');

insert into filme_atores (ator_id, filme_id, ator, diretor) --10
	values (8, 9, 'Sim', 'Não');

insert into filme_atores (ator_id, filme_id, ator, diretor) --11
	values (2, 9, 'Sim', 'Não');

insert into filme_atores (ator_id, filme_id, ator, diretor) --12
	values (1, 6, 'Sim', 'Não');

insert into filme_atores (ator_id, filme_id, ator, diretor) --13
	values (3, 8, 'Sim', 'Não');

insert into filme_atores (ator_id, filme_id, ator, diretor) --14
	values (9, 10, 'Sim', 'Não');

insert into filme_atores (ator_id, filme_id, ator, diretor) --15
	values (5, 1, 'Sim', 'Não');

insert into filme_atores (ator_id, filme_id, ator, diretor) --16
	values (3, 9, 'Não', 'Não');

insert into filme_atores (ator_id, filme_id, ator, diretor) --17
	values (3, 6, 'Não', 'Não');

insert into filme_atores (ator_id, filme_id, ator, diretor) --18
	values (5, 8, 'Não', 'Não');

insert into filme_atores (ator_id, filme_id, ator, diretor) --19
	values (10, 10, 'Não', 'Não');

insert into filme_atores (ator_id, filme_id, ator, diretor) --20
	values (1, 5, 'Não', 'Não');

insert into filme_atores (ator_id, filme_id, ator, diretor) --21
	values (1, 8, 'Não', 'Não');

insert into filme_atores (ator_id, filme_id, ator, diretor) --22
	values (1, 10, 'Não', 'Não');

insert into filme_atores (ator_id, filme_id, ator, diretor) --23
	values (3, 5, 'Não', 'Não'); -- fim

insert into filme_atores (ator_id, filme_id, ator, diretor) --24
	values (2, 16, 'Não', 'Não');

insert into filme_atores (ator_id, filme_id, ator, diretor) --25
	values (5, 17, 'Não', 'Não');

insert into filme_atores (ator_id, filme_id, ator, diretor) --26
	values (7, 18, 'Não', 'Não');

insert into filme_atores (ator_id, filme_id, ator, diretor) --27
	values (8, 19, 'Não', 'Não');

insert into filme_atores (ator_id, filme_id, ator, diretor) --28
	values (1, 20, 'Não', 'Não');

insert into filme_atores (ator_id, filme_id, ator, diretor) --29
	values (9, 21, 'Não', 'Não');

insert into filme_atores (ator_id, filme_id, ator, diretor) --30
	values (10, 22, 'Não', 'Não');

insert into filme_atores (ator_id, filme_id, ator, diretor) --31
	values (6, 23, 'Não', 'Não');

select * from filme_atores

--Profissão
insert into profissao(nome) values ('Vendedor');
insert into profissao(nome) values ('Atendente'); 
insert into profissao(nome) values ('Pedreiro'); 
insert into profissao(nome) values ('Auxiliar de limpeza'); 
insert into profissao(nome) values ('Auxiliar de produção');
insert into profissao(nome) values ('Motorista');
insert into profissao(nome) values ('Recepcionista'); 
insert into profissao(nome) values ('Auxiliar Administrativo'); 
insert into profissao(nome) values ('Operador de máquinas'); 
insert into profissao(nome) values ('Servente de obras');

select * from profissao

--Clientes
INSERT INTO clientes(cpf, nome, telefone) VALUES ('12345678910', 'João Silva', '99999-9999');
INSERT INTO clientes(cpf, nome, telefone) VALUES ('98765432198', 'Maria Santos', '88888-8888');
INSERT INTO clientes(cpf, nome, telefone) VALUES ('11122233344', 'Pedro Oliveira', '77777-7777');
INSERT INTO clientes(cpf, nome, telefone) VALUES ('55566677788', 'Ana Souza', '66666-6666');
INSERT INTO clientes(cpf, nome, telefone) VALUES ('99988877766', 'Luiz Costa', '55555-5555');
INSERT INTO clientes(cpf, nome, telefone) VALUES ('33344455566', 'Carla Pereira', '44444-4444');
INSERT INTO clientes(cpf, nome, telefone) VALUES ('77788899900', 'Márcio Alves', '33333-3333');
INSERT INTO clientes(cpf, nome, telefone) VALUES ('22211100099', 'Fernanda Lima', '22222-2222');
INSERT INTO clientes(cpf, nome, telefone) VALUES ('44455566677', 'Ricardo Neves', '11111-1111');
INSERT INTO clientes(cpf, nome, telefone) VALUES ('88899900011', 'Aline Rodrigues', '00000-0000');

UPDATE clientes SET fk_profissao = 1 WHERE id = 1;
UPDATE clientes SET fk_profissao = 2 WHERE id = 2;
UPDATE clientes SET fk_profissao = 3 WHERE id = 3;
UPDATE clientes SET fk_profissao = 4 WHERE id = 4;
UPDATE clientes SET fk_profissao = 5 WHERE id = 5;
UPDATE clientes SET fk_profissao = 6 WHERE id = 6;
UPDATE clientes SET fk_profissao = 7 WHERE id = 7;
UPDATE clientes SET fk_profissao = 8 WHERE id = 8;
UPDATE clientes SET fk_profissao = 9 WHERE id = 9;
UPDATE clientes SET fk_profissao = 10 WHERE id = 10;

select * from clientes
	
--Dependentes
insert into dependentes(cliente_id, dependente_id, parentesco, nome) 
	values (1,1,'irmão', 'José');

insert into dependentes(cliente_id, dependente_id, parentesco, nome) 
	values (2,1,'irmã', 'Lucas');

insert into dependentes(cliente_id, dependente_id, parentesco, nome) 
	values (3,1,'pai', 'João');

insert into dependentes(cliente_id, dependente_id, parentesco, nome) 
	values (4,1,'primo', 'Lincol');

insert into dependentes(cliente_id, dependente_id, parentesco, nome) 
	values (5,1,'filho', 'Enzo');

insert into dependentes(cliente_id, dependente_id, parentesco, nome) 
	values (6,1,'Mãe','Joana');

insert into dependentes(cliente_id, dependente_id, parentesco, nome) 
	values (7,1,'primo', 'Junior');

insert into dependentes(cliente_id, dependente_id, parentesco, nome) 
	values (8,1,'irmão','Keyvid');

insert into dependentes(cliente_id, dependente_id, parentesco, nome) 
	values (9,1,'tia','Maria José');

insert into dependentes(cliente_id, dependente_id, parentesco, nome) 
	values (10,1,'tio', 'Inácio');

select * from dependentes

--Locação
INSERT INTO locacao (data_locacao, desconto, multa, sub_total, fk_cliente)
VALUES ('2024-01-15', 5.00, 0.00, 50.00, 4);

INSERT INTO locacao (data_locacao, desconto, multa, sub_total, fk_cliente)
VALUES ('2024-01-16', 0.00, 0.00, 30.00, 10);

INSERT INTO locacao (data_locacao, desconto, multa, sub_total, fk_cliente)
VALUES ('2024-01-17', 10.00, 2.00, 80.00, 7);

INSERT INTO locacao (data_locacao, desconto, multa, sub_total, fk_cliente)
VALUES ('2024-01-18', 5.00, 0.00, 60.00, 2);

INSERT INTO locacao (data_locacao, desconto, multa, sub_total, fk_cliente)
VALUES ('2024-01-19', 3.00, 1.00, 40.00, 10);

INSERT INTO locacao (data_locacao, desconto, multa, sub_total, fk_cliente)
VALUES ('2024-01-20', 7.00, 0.00, 70.00, 5);

INSERT INTO locacao (data_locacao, desconto, multa, sub_total, fk_cliente)
VALUES ('2024-01-21', 0.00, 5.00, 90.00, 8);

INSERT INTO locacao (data_locacao, desconto, multa, sub_total, fk_cliente)
VALUES ('2024-01-22', 2.00, 0.00, 50.00, 1);

INSERT INTO locacao (data_locacao, desconto, multa, sub_total, fk_cliente)
VALUES ('2024-01-23', 1.00, 1.00, 45.00, 10);

INSERT INTO locacao (data_locacao, desconto, multa, sub_total, fk_cliente)
VALUES ('2024-01-24', 0.00, 0.00, 35.00, 6);

INSERT INTO locacao (data_locacao, desconto, multa, sub_total, fk_cliente)
VALUES ('2024-01-25', 3.00, 2.00, 55.00, 9);

INSERT INTO locacao (data_locacao, desconto, multa, sub_total, fk_cliente)
VALUES ('2024-01-26', 5.00, 0.00, 60.00, 3);

INSERT INTO locacao (data_locacao, desconto, multa, sub_total, fk_cliente)
VALUES ('2024-01-27', 4.00, 1.00, 50.00, 8);

INSERT INTO locacao (data_locacao, desconto, multa, sub_total, fk_cliente)
VALUES ('2024-01-28', 0.00, 0.00, 40.00, 7);

INSERT INTO locacao (data_locacao, desconto, multa, sub_total, fk_cliente)
VALUES ('2024-01-29', 2.00, 3.00, 65.00, 9);

INSERT INTO locacao (data_locacao, desconto, multa, sub_total, fk_cliente)
VALUES ('2024-01-30', 3.00, 0.00, 55.00, 1);

INSERT INTO locacao (data_locacao, desconto, multa, sub_total, fk_cliente)
VALUES ('2024-01-31', 1.00, 2.00, 45.00, 7);

INSERT INTO locacao (data_locacao, desconto, multa, sub_total, fk_cliente)
VALUES ('2024-02-01', 0.00, 0.00, 35.00, 2);

INSERT INTO locacao (data_locacao, desconto, multa, sub_total, fk_cliente)
VALUES ('2024-02-02', 4.00, 0.00, 60.00, 8);

INSERT INTO locacao (data_locacao, desconto, multa, sub_total, fk_cliente)
VALUES ('2024-02-03', 0.00, 1.00, 50.00, 6); -- fim

INSERT INTO locacao (data_locacao, desconto, multa, sub_total, fk_cliente)
VALUES ('2024-02-03', 0.00, 3.00, 50.00, 2);

INSERT INTO locacao (data_locacao, desconto, multa, sub_total, fk_cliente)
VALUES ('2024-02-04', 0.00, 0.00, 25.00, 3);

INSERT INTO locacao (data_locacao, desconto, multa, sub_total, fk_cliente)
VALUES ('2024-02-05', 0.00, 0.00, 20.00, 6);

INSERT INTO locacao (data_locacao, desconto, multa, sub_total, fk_cliente)
VALUES ('2024-02-06', 0.00, 1.00, 15.00, 10);

INSERT INTO locacao (data_locacao, desconto, multa, sub_total, fk_cliente)
VALUES ('2024-02-07', 0.00, 0.00, 30.00, 9);

INSERT INTO locacao (data_locacao, desconto, multa, sub_total, fk_cliente)
VALUES ('2024-02-08', 0.00, 1.00, 45.00, 7);

INSERT INTO locacao (data_locacao, desconto, multa, sub_total, fk_cliente)
VALUES ('2024-02-09', 0.00, 0.00, 35.00, 8);

INSERT INTO locacao (data_locacao, desconto, multa, sub_total, fk_cliente)
VALUES ('2024-02-10', 0.00, 0.00, 50.00, 2);

select * from locacao

--Filme alugado
INSERT INTO locacao_filme (locacao_id, filme_id, valor, num_dias, data_devolucao)
VALUES (3, 1, 10.00, 3, '2024-01-18');

INSERT INTO locacao_filme (locacao_id, filme_id, valor, num_dias, data_devolucao)
VALUES (4, 2, 15.00, 5, '2024-01-21');

INSERT INTO locacao_filme (locacao_id, filme_id, valor, num_dias, data_devolucao)
VALUES (5, 3, 12.00, 4, '2024-01-21');

INSERT INTO locacao_filme (locacao_id, filme_id, valor, num_dias, data_devolucao)
VALUES (6, 4, 8.00, 2, '2024-01-20');

INSERT INTO locacao_filme (locacao_id, filme_id, valor, num_dias, data_devolucao)
VALUES (7, 5, 20.00, 7, '2024-01-26');

INSERT INTO locacao_filme (locacao_id, filme_id, valor, num_dias, data_devolucao)
VALUES (8, 6, 18.00, 6, '2024-01-26');

INSERT INTO locacao_filme (locacao_id, filme_id, valor, num_dias, data_devolucao)
VALUES (9, 7, 10.00, 3, '2024-01-24');

INSERT INTO locacao_filme (locacao_id, filme_id, valor, num_dias, data_devolucao)
VALUES (10, 8, 14.00, 5, '2024-01-27');

INSERT INTO locacao_filme (locacao_id, filme_id, valor, num_dias, data_devolucao)
VALUES (11, 9, 9.00, 3, '2024-01-26');

INSERT INTO locacao_filme (locacao_id, filme_id, valor, num_dias, data_devolucao)
VALUES (12, 10, 11.00, 4, '2024-01-28');

INSERT INTO locacao_filme (locacao_id, filme_id, valor, num_dias, data_devolucao)
VALUES (13, 1, 16.00, 6, '2024-01-30');

INSERT INTO locacao_filme (locacao_id, filme_id, valor, num_dias, data_devolucao)
VALUES (14, 2, 17.00, 7, '2024-02-02');

INSERT INTO locacao_filme (locacao_id, filme_id, valor, num_dias, data_devolucao)
VALUES (15, 3, 13.00, 4, '2024-02-01');

INSERT INTO locacao_filme (locacao_id, filme_id, valor, num_dias, data_devolucao)
VALUES (16, 4, 12.00, 5, '2024-02-02');

INSERT INTO locacao_filme (locacao_id, filme_id, valor, num_dias, data_devolucao)
VALUES (17, 5, 15.00, 5, '2024-02-03');

INSERT INTO locacao_filme (locacao_id, filme_id, valor, num_dias, data_devolucao)
VALUES (18, 6, 11.00, 4, '2024-02-04');

INSERT INTO locacao_filme (locacao_id, filme_id, valor, num_dias, data_devolucao)
VALUES (19, 7, 9.00, 3, '2024-02-03');

INSERT INTO locacao_filme (locacao_id, filme_id, valor, num_dias, data_devolucao)
VALUES (20, 8, 14.00, 5, '2024-02-06');

INSERT INTO locacao_filme (locacao_id, filme_id, valor, num_dias, data_devolucao)
VALUES (21, 9, 13.00, 4, '2024-02-05'); -- fim

INSERT INTO locacao_filme (locacao_id, filme_id, valor, num_dias, data_devolucao)
VALUES (22, 16, 11.00, 8, '2024-02-06');

INSERT INTO locacao_filme (locacao_id, filme_id, valor, num_dias, data_devolucao)
VALUES (23, 17, 12.00, 7, '2024-02-07');

INSERT INTO locacao_filme (locacao_id, filme_id, valor, num_dias, data_devolucao)
VALUES (24, 18, 13.00, 6, '2024-02-08');

INSERT INTO locacao_filme (locacao_id, filme_id, valor, num_dias, data_devolucao)
VALUES (25, 19, 14.00, 5, '2024-02-09');

INSERT INTO locacao_filme (locacao_id, filme_id, valor, num_dias, data_devolucao)
VALUES (26, 20, 15.00, 4, '2024-02-10');

INSERT INTO locacao_filme (locacao_id, filme_id, valor, num_dias, data_devolucao)
VALUES (27, 21, 16.00, 3, '2024-02-11');

INSERT INTO locacao_filme (locacao_id, filme_id, valor, num_dias, data_devolucao)
VALUES (28, 22, 17.00, 2, '2024-02-12');

INSERT INTO locacao_filme (locacao_id, filme_id, valor, num_dias, data_devolucao)
VALUES (29, 23, 18.00, 1, '2024-02-13');


select * from locacao_filme

--Endereços
INSERT INTO enderecos (logradouro, tipo_log, complemento, cidade, uf, cep, numero, bairro)
VALUES ('Avenida Paulista', 'Avenida', 'Apto 101', 'São Paulo', 'SP', '01311-000', '1000', 'Bela Vista');

INSERT INTO enderecos (logradouro, tipo_log, complemento, cidade, uf, cep, numero, bairro)
VALUES ('Rua das Flores', 'Rua', 'Casa 2', 'Curitiba', 'PR', '80010-000', '150', 'Centro');

INSERT INTO enderecos (logradouro, tipo_log, complemento, cidade, uf, cep, numero, bairro)
VALUES ('Praça da Liberdade', 'Praça', 'Bloco A', 'Belo Horizonte', 'MG', '30140-010', '200', 'Funcionários');

INSERT INTO enderecos (logradouro, tipo_log, complemento, cidade, uf, cep, numero, bairro)
VALUES ('Avenida Atlântica', 'Avenida', 'Cobertura', 'Rio de Janeiro', 'RJ', '22010-000', '500', 'Copacabana');

INSERT INTO enderecos (logradouro, tipo_log, complemento, cidade, uf, cep, numero, bairro)
VALUES ('Rua 25 de Março', 'Rua', 'Loja 5', 'São Paulo', 'SP', '01021-100', '250', 'Centro');

INSERT INTO enderecos (logradouro, tipo_log, complemento, cidade, uf, cep, numero, bairro)
VALUES ('Avenida Beira Mar', 'Avenida', 'Apto 202', 'Fortaleza', 'CE', '60165-120', '300', 'Meireles');

INSERT INTO enderecos (logradouro, tipo_log, complemento, cidade, uf, cep, numero, bairro)
VALUES ('Rua XV de Novembro', 'Rua', 'Sala 12', 'Curitiba', 'PR', '80020-310', '50', 'Centro');

INSERT INTO enderecos (logradouro, tipo_log, complemento, cidade, uf, cep, numero, bairro)
VALUES ('Avenida Afonso Pena', 'Avenida', 'Sala 102', 'Belo Horizonte', 'MG', '30130-002', '900', 'Centro');

INSERT INTO enderecos (logradouro, tipo_log, complemento, cidade, uf, cep, numero, bairro)
VALUES ('Rua Barão de Studart', 'Rua', 'Apto 303', 'Fortaleza', 'CE', '60120-000', '200', 'Aldeota');

INSERT INTO enderecos (logradouro, tipo_log, complemento, cidade, uf, cep, numero, bairro)
VALUES ('Rua das Acácias', 'Rua', 'Casa 3', 'São Paulo', 'SP', '02302-110', '120', 'Jardim das Flores');

select * from enderecos

--Endereço do cliente
INSERT INTO cli_endereco (fk_endereco, fk_cliente) VALUES (1, 1);
INSERT INTO cli_endereco (fk_endereco, fk_cliente) VALUES (2, 2);
INSERT INTO cli_endereco (fk_endereco, fk_cliente) VALUES (3, 3);
INSERT INTO cli_endereco (fk_endereco, fk_cliente) VALUES (4, 4);
INSERT INTO cli_endereco (fk_endereco, fk_cliente) VALUES (5, 5);
INSERT INTO cli_endereco (fk_endereco, fk_cliente) VALUES (6, 6);
INSERT INTO cli_endereco (fk_endereco, fk_cliente) VALUES (7, 7);
INSERT INTO cli_endereco (fk_endereco, fk_cliente) VALUES (8, 8);
INSERT INTO cli_endereco (fk_endereco, fk_cliente) VALUES (9, 9);
INSERT INTO cli_endereco (fk_endereco, fk_cliente) VALUES (10, 10);

select * from cli_endereco
