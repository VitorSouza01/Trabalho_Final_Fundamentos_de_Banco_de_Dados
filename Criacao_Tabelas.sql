-- Script de cria��o das tabelas:
-- Cria��o das tabelas de clientes, ingredientes, lanches, montagem dos lanches, pedidos e itens dos

--Cria��o da tabela de clientes
CREATE TABLE TB_Clientes (
Id_Cliente INT NOT NULL IDENTITY(1,1),
Nr_Telefone NUMERIC(11) NOT NULL,
);

--Cria��o da tabela de ingredientes
CREATE TABLE TB_Ingredientes (
);

--Cria��o da tabela de lanches
CREATE TABLE TB_Lanches (
Id_Lanche INT NOT NULL IDENTITY(1,1),
);

--Cria��o da tabela de montagem dos lanches
CREATE TABLE TB_Montagem (
Id_Montagem INT NOT NULL IDENTITY(1,1),
Id_Lanche INT NOT NULL,
FOREIGN KEY(Id_Lanche) REFERENCES TB_Lanches(Id_Lanche),
FOREIGN KEY(Id_Ingrediente) REFERENCES TB_Ingredientes(Id_Ingrediente)
);

--Cria��o da tabela de pedidos
CREATE TABLE TB_Pedidos (
Id_Pedido INT NOT NULL IDENTITY(1,1),
Id_Cliente INT NOT NULL,
PRIMARY KEY(Id_Pedido),
FOREIGN KEY(Id_Cliente) REFERENCES TB_Clientes(Id_Cliente)

--Cria��o da tabela de itens dos pedidos
CREATE TABLE TB_Itens (
Id_Itens INT NOT NULL IDENTITY(1,1),
Id_Pedido INT NOT NULL,
Qt_Lanches INT NOT NULL,
Vl_Lanches NUMERIC(19,2) NOT NULL,
PRIMARY KEY(Id_Itens),
FOREIGN KEY(Id_Lanche) REFERENCES TB_Lanches(Id_Lanche),