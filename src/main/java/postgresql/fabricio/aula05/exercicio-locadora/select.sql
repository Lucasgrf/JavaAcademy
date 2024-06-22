-- 1 - Listar todos os filmes alugados por um cliente específico, incluindo a data de locação e a data de devolução.
select locacao_filme.locacao_id,clientes.nome as Cliente,filmes.titulo_original as Filme,locacao_filme.valor,locacao_filme.num_dias as QtdDias,locacao_filme.data_devolucao,
       locacao.data_locacao
from locacao_filme
join locacao on locacao_filme.locacao_id = locacao.id
join clientes on locacao.fk_cliente = clientes.id
join filmes on locacao_filme.filme_id = filmes.id
where locacao.fk_cliente = 10;

-- 2 - Obter uma lista de clientes e seus dependentes.
select clientes.nome as Cliente, dependentes.nome as Parente, dependentes.parentesco
from clientes
join dependentes on clientes.id = dependentes.cliente_id;

-- 3 - Listar todos os filmes de um determinado gênero.
select filmes.titulo_original, filmes.titulo, filmes.quantidade, categorias.nome as categoria, generos.nome as genero
from filmes
join categorias on filmes.fk_categoria = categorias.id
join generos on filmes.fk_genero = generos.id
where fk_genero = 5;

-- 4 - Exibir todos os clientes que têm uma profissão específica.
select clientes.nome,profissao.nome as profissão
from clientes
join profissao on clientes.fk_profissao = profissao.id
where fk_profissao = 5;

-- 5 - Encontrar todos os filmes em uma categoria específica com quantidade disponível maior que 5.
select filmes.titulo_original, filmes.titulo, filmes.quantidade
from filmes
where quantidade > 20;

-- 6 - Listar todos os atores que participaram de filmes com um determinado título.
select filmes.titulo_original, atores.nome
from filme_atores
join atores on filme_atores.ator_id = atores.id
join filmes on filme_atores.filme_id = filmes.id
where filmes.id = 6;

-- 7 - Obter o endereço completo de um cliente específico.
select clientes.nome,enderecos.logradouro,enderecos.tipo_log,enderecos.complemento,enderecos.cidade,
       enderecos.uf,enderecos.cep,enderecos.numero,enderecos.bairro
from cli_endereco
join enderecos on cli_endereco.fk_endereco = enderecos.id
join clientes on cli_endereco.fk_cliente = clientes.id
where fk_cliente = 10; -- Poderia ter usado o enderecos.*, mas ficaria sem o nome do cliente.

-- 8 - Listar todos os filmes e seus respectivos gêneros e categorias.
select filmes.titulo, categorias.nome as categorias,generos.nome as generos
from filmes
join categorias on filmes.fk_categoria = categorias.id
join generos on filmes.fk_genero = generos.id;

-- 9 - Mostrar todos os clientes que alugaram um filme específico e a data de locação.
select clientes.nome,filmes.titulo, locacao.data_locacao
from locacao_filme
join filmes on locacao_filme.filme_id = filmes.id
join locacao on locacao_filme.locacao_id = locacao.id
join clientes on locacao.fk_cliente = clientes.id
where filme_id = 2;

-- 10 - Exibir a lista de clientes com multas superiores a um valor específico.
select clientes.nome as Cliente, locacao.multa
from locacao
join clientes on locacao.fk_cliente = clientes.id
WHERE CAST(locacao.multa AS numeric) > 0; --Cast passa a multa(money) pra numerico e ver se ele é maior que 0.

-- 11 - Listar todas as locações feitas em um período específico.
select clientes.nome as cliente, locacao.data_locacao, locacao.multa, locacao.desconto,locacao.sub_total
from locacao
join clientes on locacao.fk_cliente = clientes.id
where locacao.data_locacao > '2024-01-30';

-- 12 - Obter a quantidade total de filmes alugados por cada cliente. (DESAFIO)
select clientes.nome, count(*) as total_filmes_alugados
from locacao_filme
join locacao on locacao_filme.locacao_id = locacao.id
join clientes on locacao.fk_cliente = clientes.id
group by clientes.nome
order by total_filmes_alugados;

select count(*) as total_filmes_alugados 		--| Mostra total de filmes que foram alugados
from locacao_filme; 

-- 13 - Listar os clientes e os filmes que eles alugaram, ordenados por data de locação.
select clientes.nome, filmes.titulo, categorias.nome as categorias, generos.nome as generos, locacao.data_locacao
from locacao_filme
join locacao on locacao_filme.locacao_id = locacao.id
join clientes on locacao.fk_cliente = clientes.id
join filmes on locacao_filme.filme_id = filmes.id
join categorias on filmes.fk_categoria = categorias.id
join generos on filmes.fk_genero = generos.id
order by locacao.data_locacao;

-- 14 - Mostrar todos os clientes que moram em uma cidade específica e que alugaram filmes de uma categoria específica.
select clientes.nome, enderecos.cidade, categorias.nome as categoria
from locacao_filme
join filmes on locacao_filme.filme_id = filmes.id
join categorias on filmes.fk_categoria = categorias.id
join locacao on locacao_filme.locacao_id = locacao.id
join clientes on locacao.fk_cliente = clientes.id
join cli_endereco on clientes.id = cli_endereco.fk_cliente
join enderecos on cli_endereco.fk_endereco = enderecos.id
where enderecos.cidade = 'São Paulo' and categorias.id = 1;

-- 15 - Encontrar todos os atores que participaram de pelo menos 5 filmes, listando o nome do ator e o número de filmes em que atuou. (DESAFIO)
select atores.nome, count(filme_atores.filme_id) as total_filmes --Conta quantos filmes cada ator tem.
from filme_atores
join atores on filme_atores.ator_id = atores.id
join filmes on filme_atores.filme_id = filmes.id
group by atores.nome
having
    count(filme_atores.filme_id) >= 5; --Verifica quem tem 5 ou mais filmes e retorna o ator.

-- 16 - Exibir a quantidade total de filmes alugados por categoria e gênero, incluindo apenas as categorias e gêneros que têm mais de 5 filmes alugados no total (DESAFIO)
select clientes.nome,categorias.nome as categorias,generos.nome as generos,
WITH TotalFilmes AS (
SELECT categorias.nome AS categoria,generos.nome AS genero, 
	COUNT(*) AS qtd_filmes
FROM locacao_filme 
JOIN locacao ON locacao_filme.locacao_id = locacao.id
JOIN filmes ON locacao_filme.filme_id = filmes.id
JOIN categorias ON filmes.fk_categoria = categorias.id
JOIN generos ON filmes.fk_genero = generos.id
GROUP BY categorias.nome, generos.nome -- Meu Código acaba aqui!
),
CategoriasFiltradas AS (
SELECT categoria
FROM TotalFilmes
GROUP BY categoria
HAVING COUNT(*) > 2
),
GenerosFiltrados AS (
SELECT genero
FROM TotalFilmes
GROUP BY genero
HAVING
 COUNT(*) > 2
)
SELECT tf.categoria, tf.genero, tf.qtd_filmes
FROM TotalFilmes tf
WHERE
    tf.categoria IN (SELECT categoria FROM CategoriasFiltradas)
  AND tf.genero IN (SELECT genero FROM GenerosFiltrados); --O chatgpt fez 70% do código! Mas pelo menos me ajudou a entender.