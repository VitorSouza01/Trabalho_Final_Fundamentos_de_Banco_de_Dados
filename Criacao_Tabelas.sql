-- Script de cria��o das tabelas:
-- Cria��o das tabelas de clientes, ingredientes, lanches, montagem dos lanches, pedidos e itens dos-- pedidos, com defini��es de chaves prim�rias e estrangeiras para garantir a integridade referencial.

--Cria��o da tabela de clientes
CREATE TABLE TB_Clientes (
Id_Cliente INT NOT NULL IDENTITY(1,1),Nm_Cliente VARCHAR(200) NOT NULL,
Nr_Telefone NUMERIC(11) NOT NULL,Nr_CPF NUMERIC(11) NOT NULL,PRIMARY KEY(Id_Cliente)
);

--Cria��o da tabela de ingredientes
CREATE TABLE TB_Ingredientes (Id_Ingrediente INT NOT NULL IDENTITY(1,1),Nm_Ingrediente VARCHAR(200) NOT NULL,Vl_Ingrediente NUMERIC(19,2) NOT NULL,PRIMARY KEY(Id_Ingrediente)
);

--Cria��o da tabela de lanches
CREATE TABLE TB_Lanches (
Id_Lanche INT NOT NULL IDENTITY(1,1),Nm_Lanche VARCHAR(200) NOT NULL,Vl_Lanche NUMERIC(19,2) NOT NULL,PRIMARY KEY(Id_Lanche)
);

--Cria��o da tabela de montagem dos lanches
CREATE TABLE TB_Montagem (
Id_Montagem INT NOT NULL IDENTITY(1,1),
Id_Lanche INT NOT NULL,Id_Ingrediente INT NOT NULL,Qt_Ingrediente INT NOT NULL,PRIMARY KEY(Id_Montagem),
FOREIGN KEY(Id_Lanche) REFERENCES TB_Lanches(Id_Lanche),
FOREIGN KEY(Id_Ingrediente) REFERENCES TB_Ingredientes(Id_Ingrediente)
);

--Cria��o da tabela de pedidos
CREATE TABLE TB_Pedidos (
Id_Pedido INT NOT NULL IDENTITY(1,1),
Id_Cliente INT NOT NULL,
PRIMARY KEY(Id_Pedido),
FOREIGN KEY(Id_Cliente) REFERENCES TB_Clientes(Id_Cliente));

--Cria��o da tabela de itens dos pedidos
CREATE TABLE TB_Itens (
Id_Itens INT NOT NULL IDENTITY(1,1),Id_Lanche INT NOT NULL,
Id_Pedido INT NOT NULL,
Qt_Lanches INT NOT NULL,
Vl_Lanches NUMERIC(19,2) NOT NULL,
PRIMARY KEY(Id_Itens),
FOREIGN KEY(Id_Lanche) REFERENCES TB_Lanches(Id_Lanche),FOREIGN KEY(Id_Pedido) REFERENCES TB_Pedidos(Id_Pedido));