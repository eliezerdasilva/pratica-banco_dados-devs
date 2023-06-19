/*
Para essa atividade você deverá, criar os comandos para criação de uma base de dados, para criação do schema, selecionar o schema criado e fazer as correções nos scripts. Os erros existentes podem ser impeditivos (ou não) na execução dos comandos. Atente-se também aos tipos de campos e as constraints existentes em cada tabela.


Observação: Conforme falamos em aula, a mudança no script podia ser feita conforme a gente queria. 

*/
SET SEARCH_path TO teste;

-- Alterei meu script para que o cliente tenha uma comanda, nisso todos os dados serão  contidos naquela tabela, e as tabelas que não achei sentido deletei;

SET SEARCH_path TO teste;
set search_path   to teste;
-- Alterei meu script para que o cliente tenha uma comanda, nisso todos os dados serão  contidos naquela tabela, e as tabelas que não achei sentido deletei;



-- drop principais
alter table comanda drop column statusComandaId;
alter table comandaProduto drop column statusComandaProdutoId;

------ Status comanda 

drop table statusComanda;
drop table  statusComandaProduto ;



------  Cardapio ---------
alter table cardapio rename to funcionario ;--funcionario ;
-- alter 
alter table funcionario alter column id type smallint;
alter table funcionario alter COLUMN pessoaid SET NOT NULL;
ALTER TABLE funcionario ALTER COLUMN criadopor TYPE integer USING criadopor::integer;
ALTER TABLE funcionario ALTER COLUMN alteradopor TYPE integer USING alteradopor::integer;
-- add 
ALTER TABLE funcionario ADD FOREIGN KEY (criadopor) REFERENCES funcionario(id);
ALTER TABLE funcionario ADD FOREIGN KEY (alteradopor) REFERENCES funcionario(id);

-------  comanda ---------
--Drop | Tabelas sem setido 
alter table comanda drop column codigo;
--alter
alter table comanda alter column id type smallint;
alter table comanda alter column  mesaid   type   INTEGER USING mesaid::smallint;
ALTER TABLE comanda ALTER COLUMN criadopor TYPE integer USING criadopor::integer;
ALTER TABLE comanda ALTER COLUMN alteradopor TYPE integer USING alteradopor::integer;
alter table comanda alter COLUMN mesaid SET NOT NULL;
alter table comanda alter COLUMN clienteid SET NOT NULL;
--add
ALTER TABLE comanda ADD  FOREIGN KEY (criadopor) REFERENCES funcionario(id);
ALTER TABLE comanda ADD  FOREIGN KEY (alteradopor) REFERENCES funcionario (id);
alter table comanda add column produtoConsumido integer  not null references  comandaProduto(id);


------ Produto --------
-- rename

ALTER TABLE produto RENAME COLUMN descricao TO composicao;
ALTER TABLE produto RENAME COLUMN nome TO nomeProduto;
ALTER TABLE produto RENAME COLUMN precovenda TO precoProduto;
ALTER TABLE produto RENAME COLUMN ativo TO disponibilidade;
--drop 
alter table produto drop column codigo;
alter table produto drop column precocusto;
--alter 
ALTER TABLE produto ALTER COLUMN criadopor TYPE integer USING criadopor::integer;
ALTER TABLE produto ALTER COLUMN alteradopor TYPE integer USING alteradopor::integer;

--add
ALTER TABLE produto ADD  FOREIGN KEY (criadopor) REFERENCES funcionario(id);
ALTER TABLE produto ADD  FOREIGN KEY (alteradopor) REFERENCES funcionario(id);


-------- Pessoa ----
--drop 
alter table pessoa drop column tipopessoa;
alter table pessoa drop column ativo;
--alter 
ALTER TABLE pessoa alter column cpf set not null;
alter table pessoa alter column telefone set not null;
alter table pessoa alter column datanascimento set not null;
ALTER TABLE pessoa ALTER COLUMN criadopor TYPE integer USING criadopor::integer;
ALTER TABLE pessoa ALTER COLUMN alteradopor TYPE integer USING alteradopor::integer;
--add
ALTER TABLE pessoa ADD CONSTRAINT unique_cpf UNIQUE (cpf);
ALTER TABLE pessoa ADD  FOREIGN KEY (criadopor) REFERENCES funcionario(id);
ALTER TABLE pessoa ADD  FOREIGN KEY (alteradopor) REFERENCES funcionario(id);
alter table pessoa add  column sexo char(1) not null;

--------- Usuario -------
-- rename 
alter table usuario rename to cliente;
-- drop 
alter table cliente drop login;
alter table cliente drop senha;
--alter 
alter table cliente alter column pessoaid SET not null;
ALTER TABLE cliente ALTER COLUMN criadopor TYPE integer USING criadopor::integer;
ALTER TABLE cliente ALTER COLUMN alteradopor TYPE integer USING alteradopor::integer;

--add
ALTER TABLE cliente ADD  FOREIGN KEY (criadopor) REFERENCES funcionario(id);
ALTER TABLE cliente ADD  FOREIGN KEY (alteradopor) REFERENCES funcionario(id);


----- mesa  ------------
--rename 
ALTER TABLE mesa RENAME COLUMN id TO mesaid;

--drop 
alter table mesa drop column statusmesaid;
alter table mesa drop column nome;
alter table mesa drop column codigo;
-- alter 
ALTER TABLE mesa ALTER COLUMN atendenteid SET NOT NULL;
ALTER TABLE mesa ALTER COLUMN quantidademaximapessoas SET NOT NULL;
ALTER TABLE mesa ALTER COLUMN criadopor TYPE integer USING criadopor::integer;
ALTER TABLE mesa ALTER COLUMN alteradopor TYPE integer USING alteradopor::integer;
-- add
-- status de reserva
alter table mesa add column situacaoreserva varchar not null; 
ALTER TABLE mesa ADD  FOREIGN KEY (criadopor) REFERENCES funcionario(id);
ALTER TABLE mesa ADD  FOREIGN KEY (alteradopor) REFERENCES funcionario(id);

-------- comanda produto ---------

--alter 
ALTER TABLE comandaProduto ALTER COLUMN criadopor TYPE integer USING criadopor::integer;
ALTER TABLE comandaProduto ALTER COLUMN alteradopor TYPE integer USING alteradopor::integer;

--add
alter table comandaProduto add column idcliente integer not null REFERENCES cliente (id); 
ALTER TABLE comandaProduto ADD  FOREIGN KEY (criadopor) REFERENCES funcionario(id);
ALTER TABLE comandaProduto ADD  FOREIGN KEY (alteradopor) REFERENCES funcionario(id);