-- Elimina��o de registro:
-- Deletar os registros espec�ficos de itens e pedidos, demonstrando como remover um pedido e seus-- itens associados do banco de dados.--Dele��o do pedido de n�mero 1
DELETE FROM TB_Itens WHERE Id_Pedido = 1
DELETE FROM TB_Pedidos WHERE Id_Pedido = 1
