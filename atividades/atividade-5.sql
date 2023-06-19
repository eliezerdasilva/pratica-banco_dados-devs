/*## Atividade 5

Utilizando a base de dados do projeto Ravin, construa as seguintes queries:

1. Liste os produtos em ordem crescente de preço de venda;
2. Liste as mesas em ordem decrescente de quantidade máxima de pessoas;
3. Liste o pessoas em ordem alfabética de nome;
4. Liste as comandas em ordem crescente de valor;
5. Liste os status de comanda em ordem alfabética de nome.
6. Liste os 5 produtos mais caros em ordem decrescente de preço de venda;
7. Liste as comandas dos clientes a partir da terceira comanda, em ordem alfabética de código;
8. Liste as mesas com a quantidade máxima de pessoas maior que 4, em ordem crescente de número, mostrando apenas os 3 primeiros resultados;
9. Liste os produtos ativos em ordem alfabética de nome, a partir do sexto produto, mostrando apenas os 4 primeiros resultados;
10. Liste as comandas com valor acima de 100 em ordem decrescente de valor, mostrando apenas os 2 primeiros resultados;
*/

--1
SELECT * FROM produto ORDER BY precovenda ASC; 
--2
SELECT * FROM mesa ORDER BY quantidademaximapessoas DESC;
--3
SELECT * FROM pessoa ORDER BY nome ASC;
--4
SELECT  * FROM comanda ORDER BY valor ASC;
--5
SELECT statuscomanda.nome 
FROM statuscomanda 
JOIN comanda ON comanda.statuscomandaid = statuscomanda.id ORDER BY nome ASC;

--6
SELECT * FROM produto ORDER BY precovenda DESC LIMIT 5;
--7
SELECT * FROM comanda ORDER BY codigo ASC OFFSET 3;
--8
SELECT * FROM mesa WHERE quantidademaximapessoas >= 4 ORDER BY mesa  ASC LIMIT 3; 
--9
SELECT * FROM produto WHERE ativo = TRUE ORDER BY nome ASC OFFSET 6 LIMIT 4;
--10
SELECT * FROM comanda WHERE valor >= 100 ORDER BY  valor ASC  LIMIT 2;

