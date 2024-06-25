-- Exibição dos conteúdos (por tabela e relacionamentos:
-- Consulta para exibir informações detalhadas sobre os pedidos, incluindo dados dos clientes,-- lanches e seus ingredientes, apresentando uma visão completa das transações.--Query para retornar dados ligados a um pedido, como dados do cliente e dados dos lanches
select distinct pedido.Id_Pedido as 'nº pedido', cliente.Nm_Cliente as 'Nome do cliente', 
  '(' + SUBSTRING(
    convert(
      varchar(11), 
      cliente.Nr_Telefone
    ), 
    1, 
    2
  )+ ')' + '' + SUBSTRING(
    convert(
      varchar(11), 
       cliente.Nr_Telefone
    ), 
    3, 
    5
  ) + '-' + SUBSTRING(
    convert(
      varchar(11), 
       cliente.Nr_Telefone
    ), 
    8, 
    4
  ) as 'Telefone', 
  SUBSTRING(
    CONVERT(
      varchar(11), 
      cliente.Nr_CPF
    ), 
    1, 
    3
  ) + '.' + SUBSTRING(
    CONVERT(
      varchar(11), 
      cliente.Nr_CPF
    ), 
    4, 
    3
  ) + '.' + SUBSTRING(
    CONVERT(
      varchar(11), 
      cliente.Nr_CPF
    ), 
    7, 
    3
  ) + + '-' + SUBSTRING(
    CONVERT(varchar(11), cliente.Nr_CPF), 
    10, 
    2
  ) as 'CPF', lanche.Nm_Lanche 'Nome do lanche'
  , ingredientes.Nm_Ingrediente 'Nome do ingrediente'
  , montagem.Qt_Ingrediente 'Quantidade do ingrediente'
  , item.Qt_Lanches 'Quantidade de lanches'
  , item.Vl_Lanches 'Valor total do pedido'
  from TB_Itens item 
INNER JOIN TB_Pedidos pedido on pedido.Id_Pedido = item.Id_Pedido 
LEFT JOIN TB_Clientes cliente on cliente.Id_Cliente = pedido.Id_Cliente
LEFT JOIN TB_Lanches lanche on item.Id_Lanche = lanche.Id_Lanche
LEFT JOIN TB_Montagem montagem on lanche.Id_Lanche = montagem.Id_Lanche
LEFT JOIN TB_Ingredientes ingredientes on montagem.Id_Ingrediente = ingredientes.Id_Ingrediente
