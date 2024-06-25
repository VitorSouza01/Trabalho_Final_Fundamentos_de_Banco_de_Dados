-- Eliminação de registro:
-- Deletar os registros específicos de itens e pedidos, demonstrando como remover um pedido e seus-- itens associados do banco de dados.--Deleção do pedido de número 1
DELETE FROM TB_Itens WHERE Id_Pedido = 1
DELETE FROM TB_Pedidos WHERE Id_Pedido = 1
