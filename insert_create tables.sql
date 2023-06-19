insert into statusMesa (nome) values ('Livre');
insert into statusMesa (nome) values ('Reservada');
insert into statusMesa (nome) values ('Ocupada');
insert into statusMesa (nome) values ('Indisponível');
/*===============*/


/* INSERTS STATUSCOMANDA */
insert into statusComanda (nome) values ('Em aberto');
insert into statusComanda (nome) values ('Fechada');
insert into statusComanda (nome) values ('Paga');
/*===============*/


/* INSERTS STATUSCOMANDAPRODUTO*/
insert into statusComandaProduto (nome) values ('Em aberto');
insert into statusComandaProduto (nome) values ('Pago');
/*===============*/


/* INSERTS PESSOA */
INSERT INTO pessoa (nome, tipoPessoa, cpf, telefone, ativo, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES ('João Silva', 'F', '12345678901', 12345678, true, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO pessoa (nome, tipoPessoa, ativo, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES ('Maria Santos', 'F', true, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO pessoa (nome, tipoPessoa, cpf, ativo, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES ('José Oliveira', 'C', '98765432109', true, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO pessoa (nome, tipoPessoa, cpf, telefone, ativo, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES ('Ana Souza', 'F', '11122233344', 87654321, true, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO pessoa (nome, tipoPessoa, ativo, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES ('Pedro Santos', 'C', true, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO pessoa (nome, tipoPessoa, cpf, telefone, ativo, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES ('Mariana Silva', 'C', '55566677788', 65432109, true, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO pessoa (nome, tipoPessoa, ativo, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES ('Ricardo Oliveira', 'C', true, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO pessoa (nome, tipoPessoa, cpf, telefone, ativo, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES ('Carla Mendes', 'C', '99988877766', 98765432, true, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO pessoa (nome, tipoPessoa, ativo, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES ('Paulo Santos', 'C', true, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO pessoa (nome, tipoPessoa, cpf, telefone, ativo, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES ('Fernanda Oliveira', 'F', '44433322211', 56789012, true, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO pessoa (nome, tipoPessoa, cpf, telefone, ativo, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES ('João Silva', 'C', '1112223344', 12345678, true, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO pessoa (nome, tipoPessoa, cpf, telefone, ativo, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES ('Maria Santos', 'C', '1232234541', 98765432, true, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO pessoa (nome, tipoPessoa, cpf, telefone, ativo, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES ('Pedro Almeida', 'C', '6734512334', 54321678, true, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO pessoa (nome, tipoPessoa, cpf, telefone, ativo, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES ('Ana Rodrigues', 'C', '34456233212', 87654321, true, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO pessoa (nome, tipoPessoa, cpf, telefone, ativo, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES ('Carlos Nunes', 'C', '456451231', 13579246, true, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO pessoa (nome, tipoPessoa, cpf, telefone, ativo, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES ('Juliana Costa', 'C', '324213643', 86420973, true, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO pessoa (nome, tipoPessoa, cpf, telefone, ativo, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES ('Lucas Oliveira', 'C', '83478323764', 89076543, true, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO pessoa (nome, tipoPessoa, cpf, telefone, ativo, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES ('Isabela Martins', 'C', '2456452778', 76543210, false, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO pessoa (nome, tipoPessoa, cpf, telefone, ativo, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES ('Rafael Silva', 'C', '2345445788', 12345678, false, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO pessoa (nome, tipoPessoa, cpf, telefone, ativo, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES ('Mariana Ferreira', 'C', '23434665742', 56789012, false, NOW(), 'Admin', NOW(), 'Admin');
/*===============*/


/* INSERTS MESA */
INSERT INTO mesa (atendenteId, statusMesaId, nome, codigo, numero, quantidadeMaximaPessoas, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES (1, 1, 'Mesa 1', 'COD001', 1, 4, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO mesa (atendenteId, statusMesaId, nome, codigo, numero, quantidadeMaximaPessoas, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES (2, 1, 'Mesa 2', 'COD002', 2, 2, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO mesa (atendenteId, statusMesaId, nome, codigo, numero, quantidadeMaximaPessoas, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES (3, 2, 'Mesa 3', 'COD003', 3, 6, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO mesa (atendenteId, statusMesaId, nome, codigo, numero, quantidadeMaximaPessoas, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES (4, 2, 'Mesa 4', 'COD004', 4, 8, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO mesa (atendenteId, statusMesaId, nome, codigo, numero, quantidadeMaximaPessoas, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES (1, 3, 'Mesa 5', 'COD005', 5, 4, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO mesa (atendenteId, statusMesaId, nome, codigo, numero, quantidadeMaximaPessoas, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES (2, 3, 'Mesa 6', 'COD006', 6, 2, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO mesa (atendenteId, statusMesaId, nome, codigo, numero, quantidadeMaximaPessoas, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES (3, 1, 'Mesa 7', 'COD007', 7, 6, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO mesa (atendenteId, statusMesaId, nome, codigo, numero, quantidadeMaximaPessoas, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES (4, 1, 'Mesa 8', 'COD008', 8, 8, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO mesa (atendenteId, statusMesaId, nome, codigo, numero, quantidadeMaximaPessoas, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES (1, 2, 'Mesa 9', 'COD009', 9, 4, NOW(), 'Admin', NOW(), 'Admin');
/*===============*/


/* INSERTS COMANDA */
INSERT INTO comanda (mesaId, clienteId, statusComandaId, codigo, valor, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES (1, 1, 1, 'COM001', 50.0, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO comanda (mesaId, clienteId, statusComandaId, codigo, valor, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES (2, 2, 1, 'COM002', 30.5, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO comanda (mesaId, clienteId, statusComandaId, codigo, valor, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES (3, 3, 2, 'COM003', 100.75, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO comanda (mesaId, clienteId, statusComandaId, codigo, valor, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES (4, 4, 2, 'COM004', 75.25, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO comanda (mesaId, clienteId, statusComandaId, codigo, valor, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES (5, 5, 3, 'COM005', 60.0, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO comanda (mesaId, clienteId, statusComandaId, codigo, valor, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES (6, 6, 3, 'COM006', 45.5, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO comanda (mesaId, clienteId, statusComandaId, codigo, valor, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES (7, 7, 1, 'COM007', 70.25, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO comanda (mesaId, clienteId, statusComandaId, codigo, valor, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES (8, 8, 1, 'COM008', 90.0, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO comanda (mesaId, clienteId, statusComandaId, codigo, valor, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES (9, 9, 2, 'COM009', 25.75, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO comanda (mesaId, clienteId, statusComandaId, codigo, valor, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES (9, 10, 2, 'COM010', 80.5, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO comanda (mesaId, clienteId, statusComandaId, codigo, valor, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES (1, 3, 1, 'COM011', 65.0, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO comanda (mesaId, clienteId, statusComandaId, codigo, valor, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES (2, 4, 1, 'COM012', 40.25, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO comanda (mesaId, clienteId, statusComandaId, codigo, valor, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES (3, 5, 2, 'COM013', 95.5, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO comanda (mesaId, clienteId, statusComandaId, codigo, valor, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES (4, 6, 2, 'COM014', 55.75, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO comanda (mesaId, clienteId, statusComandaId, codigo, valor, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES (5, 7, 3, 'COM015', 75.0, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO comanda (mesaId, clienteId, statusComandaId, codigo, valor, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES (6, 8, 3, 'COM016', 35.25, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO comanda (mesaId, clienteId, statusComandaId, codigo, valor, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES (7, 9, 1, 'COM017', 85.5, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO comanda (mesaId, clienteId, statusComandaId, codigo, valor, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES (8, 10, 1, 'COM018', 20.75, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO comanda (mesaId, clienteId, statusComandaId, codigo, valor, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES (9, 1, 2, 'COM019', 50.0, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO comanda (mesaId, clienteId, statusComandaId, codigo, valor, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES (9, 2, 2, 'COM020', 30.5, NOW(), 'Admin', NOW(), 'Admin');
/*===============*/


/* INSERTS PRODUTO */
INSERT INTO produto (nome, descricao, codigo, precoCusto, precoVenda, tempoDePreparo, observacoes, ativo, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES ('Produto 1', 'Descrição do produto 1', 'COD001', 10.5, 15.99, '00:30:00', 'Observações do produto 1', true, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO produto (nome, descricao, codigo, precoCusto, precoVenda, tempoDePreparo, observacoes, ativo, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES ('Produto 2', 'Descrição do produto 2', 'COD002', 8.99, 12.99, '00:20:00', 'Observações do produto 2', true, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO produto (nome, descricao, codigo, precoCusto, precoVenda, tempoDePreparo, observacoes, ativo, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES ('Produto 3', 'Descrição do produto 3', 'COD003', 12.75, 19.99, '00:45:00', 'Observações do produto 3', true, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO produto (nome, descricao, codigo, precoCusto, precoVenda, tempoDePreparo, observacoes, ativo, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES ('Produto 4', 'Descrição do produto 4', 'COD004', 6.99, 9.99, '00:15:00', 'Observações do produto 4', true, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO produto (nome, descricao, codigo, precoCusto, precoVenda, tempoDePreparo, observacoes, ativo, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES ('Produto 5', 'Descrição do produto 5', 'COD005', 14.99, 24.99, '01:00:00', 'Observações do produto 5', true, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO produto (nome, descricao, codigo, precoCusto, precoVenda, tempoDePreparo, observacoes, ativo, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES ('Produto 6', 'Descrição do produto 6', 'COD006', 9.5, 14.99, '00:25:00', 'Observações do produto 6', true, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO produto (nome, descricao, codigo, precoCusto, precoVenda, tempoDePreparo, observacoes, ativo, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES ('Produto 7', 'Descrição do produto 7', 'COD007', 11.99, 17.99, '00:35:00', 'Observações do produto 7', true, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO produto (nome, descricao, codigo, precoCusto, precoVenda, tempoDePreparo, observacoes, ativo, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES ('Produto 8', 'Descrição do produto 8', 'COD008', 7.75, 10.99, '00:18:00', 'Observações do produto 8', true, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO produto (nome, descricao, codigo, precoCusto, precoVenda, tempoDePreparo, observacoes, ativo, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES ('Produto 9', 'Descrição do produto 9', 'COD009', 13.99, 21.99, '00:50:00', 'Observações do produto 9', true, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO produto (nome, descricao, codigo, precoCusto, precoVenda, tempoDePreparo, observacoes, ativo, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES ('Produto 10', 'Descrição do produto 10', 'COD010', 5.99, 8.99, '00:12:00', 'Observações do produto 10', true, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO produto (nome, descricao, codigo, precoCusto, precoVenda, tempoDePreparo, observacoes, ativo, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES ('Produto 11', 'Descrição do produto 11', 'COD011', 9.75, 15.99, '00:28:00', 'Observações do produto 11', true, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO produto (nome, descricao, codigo, precoCusto, precoVenda, tempoDePreparo, observacoes, ativo, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES ('Produto 12', 'Descrição do produto 12', 'COD012', 12.99, 19.99, '00:40:00', 'Observações do produto 12', true, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO produto (nome, descricao, codigo, precoCusto, precoVenda, tempoDePreparo, observacoes, ativo, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES ('Produto 13', 'Descrição do produto 13', 'COD013', 7.99, 11.99, '00:22:00', 'Observações do produto 13', true, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO produto (nome, descricao, codigo, precoCusto, precoVenda, tempoDePreparo, observacoes, ativo, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES ('Produto 14', 'Descrição do produto 14', 'COD014', 14.75, 23.99, '00:55:00', 'Observações do produto 14', true, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO produto (nome, descricao, codigo, precoCusto, precoVenda, tempoDePreparo, observacoes, ativo, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES ('Produto 15', 'Descrição do produto 15', 'COD015', 10.5, 16.99, '00:32:00', 'Observações do produto 15', true, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO produto (nome, descricao, codigo, precoCusto, precoVenda, tempoDePreparo, observacoes, ativo, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES ('Produto 16', 'Descrição do produto 16', 'COD016', 6.5, 9.99, '00:16:00', 'Observações do produto 16', true, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO produto (nome, descricao, codigo, precoCusto, precoVenda, tempoDePreparo, observacoes, ativo, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES ('Produto 17', 'Descrição do produto 17', 'COD017', 11.99, 18.99, '00:38:00', 'Observações do produto 17', true, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO produto (nome, descricao, codigo, precoCusto, precoVenda, tempoDePreparo, observacoes, ativo, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES ('Produto 18', 'Descrição do produto 18', 'COD018', 8.75, 12.99, '00:24:00', 'Observações do produto 18', true, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO produto (nome, descricao, codigo, precoCusto, precoVenda, tempoDePreparo, observacoes, ativo, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES ('Produto 19', 'Descrição do produto 19', 'COD019', 13.99, 20.99, '00:48:00', 'Observações do produto 19', true, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO produto (nome, descricao, codigo, precoCusto, precoVenda, tempoDePreparo, observacoes, ativo, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES ('Produto 20', 'Descrição do produto 20', 'COD020', 5.99, 8.99, '00:14:00', 'Observações do produto 20', true, NOW(), 'Admin', NOW(), 'Admin');
/*===============*/


/* INSERTS COMANDAPRODUTO*/
INSERT INTO comandaProduto (comandaId, produtoId, statusComandaProdutoId, quantidade, valorTotal, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES (2, 1, 1, 2, 20.0, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO comandaProduto (comandaId, produtoId, statusComandaProdutoId, quantidade, valorTotal, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES (2, 2, 1, 1, 15.5, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO comandaProduto (comandaId, produtoId, statusComandaProdutoId, quantidade, valorTotal, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES (2, 3, 2, 3, 30.75, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO comandaProduto (comandaId, produtoId, statusComandaProdutoId, quantidade, valorTotal, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES (2, 4, 2, 2, 25.25, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO comandaProduto (comandaId, produtoId, statusComandaProdutoId, quantidade, valorTotal, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES (3, 5, 1, 1, 10.0, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO comandaProduto (comandaId, produtoId, statusComandaProdutoId, quantidade, valorTotal, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES (3, 6, 1, 4, 40.5, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO comandaProduto (comandaId, produtoId, statusComandaProdutoId, quantidade, valorTotal, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES (4, 7, 1, 2, 35.25, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO comandaProduto (comandaId, produtoId, statusComandaProdutoId, quantidade, valorTotal, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES (4, 8, 1, 3, 45.0, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO comandaProduto (comandaId, produtoId, statusComandaProdutoId, quantidade, valorTotal, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES (5, 9, 2, 1, 12.75, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO comandaProduto (comandaId, produtoId, statusComandaProdutoId, quantidade, valorTotal, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES (5, 10, 2, 2, 20.5, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO comandaProduto (comandaId, produtoId, statusComandaProdutoId, quantidade, valorTotal, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES (6, 11, 2, 3, 27.75, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO comandaProduto (comandaId, produtoId, statusComandaProdutoId, quantidade, valorTotal, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES (6, 12, 2, 1, 10.25, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO comandaProduto (comandaId, produtoId, statusComandaProdutoId, quantidade, valorTotal, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES (7, 13, 1, 2, 25.5, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO comandaProduto (comandaId, produtoId, statusComandaProdutoId, quantidade, valorTotal, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES (7, 14, 1, 4, 55.75, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO comandaProduto (comandaId, produtoId, statusComandaProdutoId, quantidade, valorTotal, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES (8, 15, 2, 1, 15.0, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO comandaProduto (comandaId, produtoId, statusComandaProdutoId, quantidade, valorTotal, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES (8, 16, 2, 3, 35.25, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO comandaProduto (comandaId, produtoId, statusComandaProdutoId, quantidade, valorTotal, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES (9, 17, 1, 2, 30.5, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO comandaProduto (comandaId, produtoId, statusComandaProdutoId, quantidade, valorTotal, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES (9, 18, 2, 1, 12.75, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO comandaProduto (comandaId, produtoId, statusComandaProdutoId, quantidade, valorTotal, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES (10, 19, 1, 3, 40.0, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO comandaProduto (comandaId, produtoId, statusComandaProdutoId, quantidade, valorTotal, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES (10, 20, 1, 2, 25.5, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO comandaProduto (comandaId, produtoId, statusComandaProdutoId, quantidade, valorTotal, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES (11, 1, 2, 1, 10.0, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO comandaProduto (comandaId, produtoId, statusComandaProdutoId, quantidade, valorTotal, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES (11, 2, 2, 3, 30.75, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO comandaProduto (comandaId, produtoId, statusComandaProdutoId, quantidade, valorTotal, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES (12, 3, 1, 2, 20.5, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO comandaProduto (comandaId, produtoId, statusComandaProdutoId, quantidade, valorTotal, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES (12, 4, 2, 1, 10.25, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO comandaProduto (comandaId, produtoId, statusComandaProdutoId, quantidade, valorTotal, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES (13, 5, 1, 2, 25.5, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO comandaProduto (comandaId, produtoId, statusComandaProdutoId, quantidade, valorTotal, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES (13, 6, 1, 4, 55.75, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO comandaProduto (comandaId, produtoId, statusComandaProdutoId, quantidade, valorTotal, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES (14, 7, 2, 1, 15.0, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO comandaProduto (comandaId, produtoId, statusComandaProdutoId, quantidade, valorTotal, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES (14, 8, 2, 3, 35.25, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO comandaProduto (comandaId, produtoId, statusComandaProdutoId, quantidade, valorTotal, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES (15, 9, 1, 2, 30.5, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO comandaProduto (comandaId, produtoId, statusComandaProdutoId, quantidade, valorTotal, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES (15, 10, 2, 1, 12.75, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO comandaProduto (comandaId, produtoId, statusComandaProdutoId, quantidade, valorTotal, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES (16, 11, 1, 3, 40.0, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO comandaProduto (comandaId, produtoId, statusComandaProdutoId, quantidade, valorTotal, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES (16, 12, 1, 2, 25.5, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO comandaProduto (comandaId, produtoId, statusComandaProdutoId, quantidade, valorTotal, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES (17, 13, 2, 1, 10.0, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO comandaProduto (comandaId, produtoId, statusComandaProdutoId, quantidade, valorTotal, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES (17, 14, 2, 3, 30.75, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO comandaProduto (comandaId, produtoId, statusComandaProdutoId, quantidade, valorTotal, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES (18, 15, 1, 2, 20.5, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO comandaProduto (comandaId, produtoId, statusComandaProdutoId, quantidade, valorTotal, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES (18, 16, 2, 1, 10.25, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO comandaProduto (comandaId, produtoId, statusComandaProdutoId, quantidade, valorTotal, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES (19, 17, 1, 2, 25.5, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO comandaProduto (comandaId, produtoId, statusComandaProdutoId, quantidade, valorTotal, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES (19, 18, 1, 4, 55.75, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO comandaProduto (comandaId, produtoId, statusComandaProdutoId, quantidade, valorTotal, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES (20, 19, 2, 1, 15.0, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO comandaProduto (comandaId, produtoId, statusComandaProdutoId, quantidade, valorTotal, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES (20, 20, 2, 3, 35.25, NOW(), 'Admin', NOW(), 'Admin');
/*===============*/


/* INSERTS USUARIO */
INSERT INTO usuario (pessoaId, login, senha, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES (1, 'usuario1', 'senha123', NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO usuario (pessoaId, login, senha, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES (2, 'usuario2', 'senha456', NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO usuario (pessoaId, login, senha, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES (3, 'usuario3', 'senha789', NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO usuario (pessoaId, login, senha, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES (4, 'usuario4', 'senhaabc', NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO usuario (pessoaId, login, senha, criadoEm, criadoPor, alteradoEm, alteradoPor)
VALUES (5, 'usuario5', 'senhadef', NOW(), 'Admin', NOW(), 'Admin');
/*===============*/