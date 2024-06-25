-- Alteração do conteúdo de 2 campos de um registro:
-- Atualização de dados específicos de um cliente, exemplificando a modificação do nome e CPF-- de um registro existente na tabela de clientes.--Atualização do Nome e CPF do cliente com o Id 2
UPDATE TB_Clientes SET Nm_Cliente = 'Vitor Silva', Nr_CPF = '17684954123' where Id_Cliente = 2
