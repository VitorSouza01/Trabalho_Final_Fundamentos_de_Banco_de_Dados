-- Script de criação das tabelas:
-- Criação das tabelas de clientes, ingredientes, lanches, montagem dos lanches, pedidos e itens dos-- pedidos, com definições de chaves primárias e estrangeiras para garantir a integridade referencial.

--Criação da tabela de clientes
CREATE TABLE TB_Clientes (
Id_Cliente INT NOT NULL IDENTITY(1,1),Nm_Cliente VARCHAR(200) NOT NULL,
Nr_Telefone NUMERIC(11) NOT NULL,Nr_CPF NUMERIC(11) NOT NULL,PRIMARY KEY(Id_Cliente)
);

--Criação da tabela de ingredientes
CREATE TABLE TB_Ingredientes (Id_Ingrediente INT NOT NULL IDENTITY(1,1),Nm_Ingrediente VARCHAR(200) NOT NULL,Vl_Ingrediente NUMERIC(19,2) NOT NULL,PRIMARY KEY(Id_Ingrediente)
);

--Criação da tabela de lanches
CREATE TABLE TB_Lanches (
Id_Lanche INT NOT NULL IDENTITY(1,1),Nm_Lanche VARCHAR(200) NOT NULL,Vl_Lanche NUMERIC(19,2) NOT NULL,PRIMARY KEY(Id_Lanche)
);

--Criação da tabela de montagem dos lanches
CREATE TABLE TB_Montagem (
Id_Montagem INT NOT NULL IDENTITY(1,1),
Id_Lanche INT NOT NULL,Id_Ingrediente INT NOT NULL,Qt_Ingrediente INT NOT NULL,PRIMARY KEY(Id_Montagem),
FOREIGN KEY(Id_Lanche) REFERENCES TB_Lanches(Id_Lanche),
FOREIGN KEY(Id_Ingrediente) REFERENCES TB_Ingredientes(Id_Ingrediente)
);

--Criação da tabela de pedidos
CREATE TABLE TB_Pedidos (
Id_Pedido INT NOT NULL IDENTITY(1,1),
Id_Cliente INT NOT NULL,
PRIMARY KEY(Id_Pedido),
FOREIGN KEY(Id_Cliente) REFERENCES TB_Clientes(Id_Cliente));

--Criação da tabela de itens dos pedidos
CREATE TABLE TB_Itens (
Id_Itens INT NOT NULL IDENTITY(1,1),Id_Lanche INT NOT NULL,
Id_Pedido INT NOT NULL,
Qt_Lanches INT NOT NULL,
Vl_Lanches NUMERIC(19,2) NOT NULL,
PRIMARY KEY(Id_Itens),
FOREIGN KEY(Id_Lanche) REFERENCES TB_Lanches(Id_Lanche),FOREIGN KEY(Id_Pedido) REFERENCES TB_Pedidos(Id_Pedido));