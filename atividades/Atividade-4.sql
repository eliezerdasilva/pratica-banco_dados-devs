/*
1. Selecione todos os registros da tabela "pessoa";
2. Recupere o nome e o CPF de todas as pessoas ativas na tabela "pessoa";
3. Obtenha o nome e o valor de todos os produtos da tabela "produto";
4. Selecione o código e o número de todas as mesas da tabela "mesa";
5. Recupere o nome e a descrição de todos os produtos ativos na tabela "produto";
6. Selecione o nome e o preço de venda de todos os produtos da tabela "produto" com preço de venda não nulo;
7. Recupere o nome e o telefone de todas as pessoas ativas na tabela "pessoa" que possuem um telefone cadastrado;
8. Listar todas as comandas com valor maior ou igual de 50 reais;
9. Listar os produtos com preço de custo abaixo dos 10 reais;
10. Selecione o nome e o código de todas as mesas da tabela "mesa" que estão associadas a um atendente específico (por exemplo, atendenteId = 1);
11. As comandas que tenham valor entre 30 e 50 reais;
12. Selecione o código das mesas que foram atendidas pela atendente Fernanda Oliveira (por exemplo, atendenteId = 1);
*/
select * from pessoa;

select nome,cpf from pessoa where ativo=true;

select nome, precovenda from produto;

select codigo, numero from mesa;

select nome, descricao from produto;

select nome, precovenda from produto where precovenda is not null;

select nome, telefone from pessoa where telefone is not null;

select  * from comanda where valor >= 50;

select  * from produto  where precocusto < 10;

select nome,codigo from mesa where atendenteId  =1;

select * from comanda where valor between 30 and 50;

SELECT mesa.codigo
FROM mesa
JOIN pessoa ON mesa.atendenteid = pessoa.id
WHERE pessoa.nome = 'Fernanda Oliveira';
 
