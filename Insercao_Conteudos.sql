-- Inser��o dos conte�dos:
-- Inser��o de dados iniciais nas tabelas de clientes, ingredientes, lanches, montagem dos lanches e-- pedidos, incluindo a defini��o das composi��es de cada lanche
--inser��o de clientes
insert into TB_Clientes(Nm_Cliente, Nr_Telefone, Nr_CPF) VALUES('Jo�o Victor Sales Herculano', '11945678912', '21987654321')
insert into TB_Clientes(Nm_Cliente, Nr_Telefone, Nr_CPF) VALUES('Vitor Souza','11923879546', '98746154897')
insert into TB_Clientes(Nm_Cliente, Nr_Telefone, Nr_CPF) VALUES('Ricardo Assun��o', '11912547892', '45126547885')

--inser��o de ingredientes
insert into TB_Ingredientes(Nm_Ingrediente, Vl_Ingrediente) VALUES('P�o de Hamburguer', 5.25)
insert into TB_Ingredientes(Nm_Ingrediente, Vl_Ingrediente) VALUES('Alface Americana', 7.50)
insert into TB_Ingredientes(Nm_Ingrediente, Vl_Ingrediente) VALUES('Queijo Mu�arela', 12.63)
insert into TB_Ingredientes(Nm_Ingrediente, Vl_Ingrediente) VALUES('Hamburguer 200g', 9.40)
insert into TB_Ingredientes(Nm_Ingrediente, Vl_Ingrediente) VALUES('Tomate', 3.50)

--inser��o de lanches
insert into TB_Lanches(Nm_Lanche, Vl_Lanche) VALUES('X-Burguer', 20.50)
insert into TB_Lanches(Nm_Lanche, Vl_Lanche) VALUES('X-Salada', 25.75)
insert into TB_Lanches(Nm_Lanche, Vl_Lanche) VALUES('X-Tudo', 27)

--Inser��o de montagem--Montagem X-Burguer
insert into TB_Montagem(Id_Lanche, Id_Ingrediente, Qt_Ingrediente) VALUES(1, 1, 2)
insert into TB_Montagem(Id_Lanche, Id_Ingrediente, Qt_Ingrediente) VALUES(1, 3, 1)
insert into TB_Montagem(Id_Lanche, Id_Ingrediente, Qt_Ingrediente) VALUES(1, 4, 1)

--Montagem X-Salada
insert into TB_Montagem(Id_Lanche, Id_Ingrediente, Qt_Ingrediente) VALUES(2, 1, 2)
insert into TB_Montagem(Id_Lanche, Id_Ingrediente, Qt_Ingrediente) VALUES(2, 2, 1)
insert into TB_Montagem(Id_Lanche, Id_Ingrediente, Qt_Ingrediente) VALUES(2, 4, 1)
insert into TB_Montagem(Id_Lanche, Id_Ingrediente, Qt_Ingrediente) VALUES(2, 5, 1)

--Montagem X-Tudo
insert into TB_Montagem(Id_Lanche, Id_Ingrediente, Qt_Ingrediente) VALUES(3, 1, 2)
insert into TB_Montagem(Id_Lanche, Id_Ingrediente, Qt_Ingrediente) VALUES(3, 2, 1)
insert into TB_Montagem(Id_Lanche, Id_Ingrediente, Qt_Ingrediente) VALUES(3, 3, 2)
insert into TB_Montagem(Id_Lanche, Id_Ingrediente, Qt_Ingrediente) VALUES(3, 4, 2)
insert into TB_Montagem(Id_Lanche, Id_Ingrediente, Qt_Ingrediente) VALUES(3, 5, 1)

--inser��o de pedidos
insert into TB_Pedidos(Id_Cliente) Values(1)
insert into TB_Pedidos(Id_Cliente) Values(2)
insert into TB_Pedidos(Id_Cliente) Values(3)

--Inser��o de itens nos pedidos
insert into TB_Itens(Id_Lanche, Id_Pedido, Qt_Lanches, Vl_Lanches) values(1, 1, 1, 20.50)
insert into TB_Itens(Id_Lanche, Id_Pedido, Qt_Lanches, Vl_Lanches) values(2, 2, 1, 25.75)
insert into TB_Itens(Id_Lanche, Id_Pedido, Qt_Lanches, Vl_Lanches) values(3, 3, 1, 27)