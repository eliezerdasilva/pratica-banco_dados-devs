### Atividade 8

1. Qual o produto com o maior preço de custo
2. Qual o produto com o maior preço de venda
3. Qual produto com o menor preço de custo
4. Qual produto com o menor preço de venda
5. A comanda mais recente
6. A comanda mais velha
7. A comanda com maior valor (baseado campo valor da tabela “comanda”) 
8. As 3 comandas com maior valor (baseado campo valor da tabela “comanda”) ordenadas em ordem crescente
9. Atualizar a tabela de pessoa para adicionar valores nos campos de data de nascimento
10. Os clientes que são aniversariantes do mês
11. O código das mesas que onde não possuem atendentes alocados
12. A quantidade de atendentes que existem cadastrados
13. A quantidade de comandas dos dois últimos anos (baseados na data e hoje) 
14. O maior valor de comanda (baseado campo valor da tabela “comanda”) dia a dia do mês atual
15. O valor de cada comanda (baseado na soma dos valores dos produtos da comanda) juntamente com valor do item mais caro que compõe a comanda 
16. O valor que cada cliente já gastou no restaurante 
17. A lista de códigos das mesas juntamente com o nome dos atendentes responsáveis por cada mesa (apenas as mesas que contém atendente)
18. A lista das comandas com seus produtos mostrando o código da comanda e o nome do produto
19. Os valores totais de cada comanda (baseado na soma dos itens da tabela “comandaProduto”)
20. A comanda que teve a maior valor, mostrando o código da comanda, o valor da comanda e o nome do atendente responsável por aquela comanda
21. A quantidade de clientes em cada dia
22. O funcionário mais velho que já fez algum atendimento
23. A comanda com maior valor (baseado na soma dos itens da tabela “comandaProduto”) e que não está paga
24. A comanda com menor valor (baseado na soma dos itens da tabela “comandaProduto”) e que já está paga
25. A quantidade de clientes que tem comandas em aberto
26. O valor arrecadado por cada mesa (baseado campo valor da tabela “comanda”)
27. A quantidade de clientes que nunca consumiram no restaurante
28. Os clientes que nunca consumiram no restaurante
29. As comandas que estão em mesas ocupadas juntamente com seu valor (baseado campo valor da tabela “comanda”)
30. Os 10 produtos mais vendidos (último mês)
31. O valor da comanda com maior valor e com menor valor (baseado campo valor da tabela “comanda”)
32. Os produtos que nunca saíram em nenhuma comanda 
33. A quantidade de vezes que um produto saiu em cada comand
--1
SELECT * FROM produto
WHERE precocusto = (SELECT MAX(precocusto) FROM produto);
--outro exemplo
SELECT * FROM produto order by produto.precoCusto desc limit 1;
--2
SELECT * FROM produto
WHERE precovenda = (SELECT MAX(precovenda) FROM produto);
--outro exemplo
select * from produto order by produto.precovenda desc limit 1;
--3
--Seleciona todos os registros que tem os valores maximo 
SELECT * FROM produto
WHERE precocusto = (SELECT min(precocusto) FROM produto);
--outro exemplo, que retorna apenas o primeiro valor com valor maximo
SELECT * FROM produto order by produto.precoCusto asc limit 1;
--4
--Seleciona todos os registros que tem os valores maximo 
SELECT * FROM produto
WHERE precovenda = (SELECT min(precovenda) FROM produto);
--outro exemplo, que retorna apenas o primeiro valor com valor maximo
select * from produto order by produto.precovenda asc limit 1;
--5
select * from comanda 
order by alteradoem asc limit 1;
--outro exemplo
select *
from comanda 
group by comanda.id
having  alteradoem = MAX(alteradoem)
limit 1;
--outro exemplo
select alteradoem
from comanda 
group by alteradoem 
having  alteradoem = MAX(alteradoem);
--6
select * from comanda 
order by alteradoem desc limit 1;
--outro exemplo
select *
from comanda 
group by comanda.id
having  alteradoem = min(alteradoem)
limit 1;
--outro exemplo
select alteradoem
from comanda 
group by alteradoem 
having  alteradoem = min(alteradoem);
--7 
select max(valor) from comanda;
--8
 select comanda.codigo, comanda.valor from comanda order by comanda.valor desc limit  3;
--9
UPDATE pessoa
SET dataNascimento = '1990-01-01';
--10
SELECT *
FROM pessoa
WHERE EXTRACT(MONTH FROM dataNascimento) = EXTRACT(MONTH FROM CURRENT_DATE);
--11
select mesa.codigo from mesa where mesa.atendenteId is null;
--12 
select count(1) from pessoa where pessoa.tipoPessoa = 'F';
--Outro exemplo
SELECT SUM(CASE WHEN tipoPessoa = 'F' THEN 1 ELSE 0 END) AS total_feminino
FROM pessoa;
--13
select count(1) as " Total de comandas do último ano " from comanda where comanda.alteradoEm between '2021-06-11' and '2023-06-11';
--14
SELECT DATE_TRUNC('day', alteradoEm) AS dia, MAX(valor) AS maior_valor
FROM comanda
WHERE DATE_TRUNC('month', alteradoEm) = DATE_TRUNC('month', CURRENT_DATE)
GROUP BY dia
ORDER BY dia;
--15
SELECT comanda.id AS "Comanda Id", SUM(comandaProduto.valorTotal) AS "Total", MAX(comandaProduto.valorTotal) AS "Item mais caro"
FROM comanda
JOIN comandaProduto ON comandaProduto.comandaId = comanda.id
GROUP BY comanda.id
ORDER BY MAX(comandaProduto.valorTotal) DESC;
--16
select pessoa.id as "ID CLiente", pessoa.nome as "Nome Cliente", sum(comanda.valor) as  "Valor Total" from comanda
join pessoa on comanda.clienteId = pessoa.id group by pessoa.id;
--17
select mesa.codigo as "Codigo mesa", pessoa.nome as "Atendente" from mesa inner join pessoa on mesa.atendenteId = pessoa.id;
--18 
select comanda.codigo, produto.nome
from comandaproduto 
join produto on comandaproduto.produtoid = produto.id 
join comanda on comandaproduto.comandaid  = comanda.id;
--19
select comanda.codigo as "Codigo mesa", sum(comandaProduto.valorTotal) as "Soma valor total" from comanda join comandaProduto on comandaProduto.comandaId = comanda.id group by comanda.codigo;
--20
SELECT comanda.codigo as "Código da Comanda", pessoa.nome as "Nome do atendente", mesa.nome as "Mesa", max(comanda.valor) as "Valor"
FROM comanda
JOIN mesa ON comanda.mesaId = mesa.id
JOIN pessoa ON mesa.atendenteId = pessoa.id
GROUP BY comanda.codigo, pessoa.nome, mesa.nome
order by comanda.codigo asc;
--21
select comanda.alteradoEm as "Dia", count(comanda.Id) as "Quantidade de clientes" from comanda
group by comanda.alteradoEm;
--22
select pessoa.nome as "Nome Atendente", min(pessoa.dataNascimento) as "Data" from pessoa 
inner join mesa on mesa.atendenteId = pessoa.id
inner join comanda on comanda.mesaId = mesa.id
group by pessoa.dataNascimento , pessoa.id
order by pessoa.dataNascimento asc limit 1;
--23
SELECT comanda.id as "ID", comanda.codigo as "Codigo comanda", SUM(comandaProduto.valorTotal) AS "Valor total"
FROM comanda
JOIN comandaProduto ON comandaProduto.comandaId = comanda.id
JOIN statusComanda ON comanda.statusComandaId = statusComanda.id
WHERE statusComanda.nome LIKE 'Em aberto' 
GROUP BY comanda.id, comanda.codigo
ORDER BY SUM(comandaProduto.valorTotal) DESC
LIMIT 1;
--24
SELECT comanda.id as "ID", comanda.codigo as "Codigo comanda", SUM(comandaProduto.valorTotal) AS "Valor total"
FROM comanda
JOIN comandaProduto ON comandaProduto.comandaId = comanda.id
JOIN statusComanda ON comanda.statusComandaId = statusComanda.id
WHERE statusComanda.nome LIKE 'Fechada' 
GROUP BY comanda.id, comanda.codigo
ORDER BY SUM(comandaProduto.valorTotal) asc
LIMIT 1;
--25
select count(*) as "Quantidade de clientes com a comanda aberta" from pessoa
join comanda  on comanda.clienteid = pessoa.id
join statuscomanda  on comanda.statuscomandaid = statuscomanda.id
where statuscomanda.nome  like 'Em aberto';
--26 
select mesa.nome, sum(comanda.valor) as "Valor Total" from mesa
left join comanda on comanda.mesaid = mesa.id
group by mesa.id ;
--27
select count(*) as "Clientes que nunca consumiram" from pessoa
where pessoa.id not in (select comanda.clienteid from comanda);
--28
select *  from pessoa
where pessoa.id not in (select comanda.clienteid from comanda);
--29
select comanda.id as "ID", comanda.codigo as " Codigo comanda  ", comanda.valor as "Valor total " from comanda
inner join mesa on comanda.mesaid = mesa.id
inner join statusmesa on mesa.statusmesaid = statusmesa.id
where statusmesa.nome like 'Ocupada';
--30
SELECT produto.nome, COUNT(comandaproduto.id) AS "Quantidade de vendas por produto"
FROM produto
INNER JOIN comandaproduto ON comandaproduto.produtoId = produto.id
INNER JOIN comanda ON comandaproduto.comandaid = comanda.id
WHERE comanda.alteradoEm BETWEEN '2023-05-01' AND '2023-06-30'
GROUP BY produto.nome
ORDER BY COUNT(comandaproduto.id) DESC
LIMIT 10;
--31

select max(comanda.valor) from comanda
union
select min(comanda.valor) from comanda;
--outro exemplo
select max(comanda.valor), min(comanda.valor) from comanda;
--32
SELECT *
FROM produto
LEFT JOIN comandaproduto ON comandaproduto.produtoid = produto.id
WHERE comandaproduto.produtoid IS NULL;
--33
SELECT comanda.id AS "ID da Comanda", produto.nome AS "Nome do Produto", COUNT(comandaproduto.id) AS "Quantidade de Vezes"
FROM comanda
JOIN comandaproduto ON comandaproduto.comandaid = comanda.id
JOIN produto ON produto.id = comandaproduto.produtoid
GROUP BY comanda.id, produto.nome
order by comanda.id
