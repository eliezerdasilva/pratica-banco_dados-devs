/*
1. Liste os nomes únicos dos produtos;
2. Agrupe as comandas pelo status de comanda e conte quantas comandas existem em cada status;
3. Encontre a quantidade máxima de produtos vendidos em uma única comanda;
4. Liste as mesas que possuem mais de 5 pessoas - HAVING;
5. Agrupe os produtos pelo preço de venda e liste os produtos com preço de venda maior que 10;
6. Encontre a quantidade média de produtos vendidos por comanda e liste apenas as comandas que possuem uma quantidade média superior a 3;
7. Agrupe os produtos pela descrição e liste apenas aqueles que possuem mais de 5 registros;
8. Liste as mesas com o número máximo de pessoas e ordene-as em ordem decrescente pela quantidade máxima de pessoas;
9. Agrupe as comandas por cliente e liste apenas os clientes que possuem mais de 3 comandas;
 */
--1
SELECT DISTINCT nome FROM produto;
--2
SELECT statusComandaid, count(*) FROM comanda Group BY statuscomandaid;
--3
SELECT comandaproduto.id, max(quantidade) FROM comandaproduto 
 GROUP BY id
HAVING id = 34;
--4
SELECT nome, quantidademaximapessoas FROM mesa GROUP BY quantidademaximapessoas, nome HAVING quantidademaximapessoas > 5;
--5
SELECT  precovenda FROM produto
GROUP BY precovenda
HAVING precovenda > 10;
-- variacao 
SELECT  produto ,precovenda FROM produto
GROUP BY precovenda , produto
HAVING precovenda > 10;
-- variacao 
SELECT produto.* 
FROM produto
GROUP BY id
HAVING precovenda > 10
ORDER BY precovenda asc;
--6
SELECT  comandaid, AVG(quantidade) AS media_produtos
FROM comandaproduto
GROUP BY comandaid,comandaid
HAVING AVG(quantidade) >= 3;
 --7
SELECT  descricao , produto.id  FROM produto
GROUP BY  produto.id,descricao
having  count(descricao)  > 5;
--8
SELECT *
FROM mesa
WHERE quantidademaximapessoas = (SELECT MAX(quantidademaximapessoas) FROM mesa)
ORDER BY quantidademaximapessoas DESC;
--9
SELECT  comanda.clienteid from comanda 
group by comanda.clienteid  
 HAVING COUNT(*) >= 3;