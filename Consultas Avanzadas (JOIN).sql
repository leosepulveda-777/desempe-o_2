
-- Liste los pedidos con el nombre del cliente y la fecha de cada pedido.
SELECT 
  Pedido.idPedido,
  cliente.nombre AS nombre_cliente,
  cliente.apellido AS apellido_cliente,
  Pedido.fechaPedido
FROM 
  Pedido
JOIN 
  cliente ON Pedido.cliente_idcliente = cliente.idcliente
ORDER BY 
  Pedido.fechaPedido ASC;
  
  
  -- obtenga el detalle completo de un pedido indicando título del libro, cantidad y subtotal (cantidad × precio_unitario).
  SELECT 
  Libro.titulo,
  Detalle_Pedido.cantidad,
  (Detalle_Pedido.cantidad * Detalle_Pedido.precioUnitario) AS subtotal
FROM 
  Detalle_Pedido
JOIN 
  Libro ON Detalle_Pedido.Libro_idLibro = Libro.idLibro
  AND Detalle_Pedido.Libro_Autor_id = Libro.Autor_id;