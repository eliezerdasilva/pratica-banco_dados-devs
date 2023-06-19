/*
1. Calcule o valor total das comandas;
2. Obtenha o preço de venda máximo dos produtos;
3. Encontre o tempo de preparo mínimo dos produtos;
4. Calcule a média dos preços de custo dos produtos;
5. Conte quantas mesas estão disponíveis;
6. Calcule o valor total de vendas das comanda com status “Paga”;
7. Obtenha o preço de venda máximo dos produtos;
8. Encontre o o maior valor de uma determinada comanda;
9. Calcule a média de valor total das comanda;
10. Conte quantos produtos ativos existem;
*/
--1
SELECT sum(valor) FROM comanda;
--2
SELECT max(precovenda) FROM produto;
--4
SELECT min(tempodepreparo) FROM produto;
--3
SELECT avg(precocusto) FROM produto ;
--5
SELECT count(*) FROM mesa 
JOIN statusmesa ON  mesa.statusmesaid =statusmesa.id
WHERE statusmesa.nome =  'Livre';
--6
SELECT sum(valor) AS "Valor por comanda" FROM comanda 
WHERE statuscomandaid = 3;
--7
SELECT max(precovenda) FROM produto ;
--8
SELECT max(valor)FROM comanda WHERE id = 2 ;
--9
SELECT avg(valor) FROM comanda;
--10
SELECT count(*) FROM produto WHERE ativo = true;
