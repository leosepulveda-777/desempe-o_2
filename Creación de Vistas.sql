

DROP VIEW IF EXISTS `vista_pedidos`;
CREATE VIEW vista_pedidos AS
SELECT 
  Pedido.idPedido,
  CONCAT(cliente.nombre, ' ', cliente.apellido) AS nombre_cliente,
  Pedido.fechaPedido,
  SUM(Detalle_Pedido.precioTotal) AS total_pedido
FROM 
  Pedido
JOIN 
  cliente ON Pedido.cliente_idcliente = cliente.idcliente
JOIN 
  Detalle_Pedido ON Pedido.idPedido = Detalle_Pedido.Pedido_idPedido
  AND Pedido.cliente_idcliente = Detalle_Pedido.Pedido_cliente_idcliente
GROUP BY 
  Pedido.idPedido, cliente.nombre, cliente.apellido, Pedido.fechaPedido;