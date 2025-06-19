-- Paso 1: insertar nuevo pedido
INSERT INTO Pedido (
  idPedido,
  fechaPedido,
  estadoPedido,
  createdAt,
  updateAt,
  cliente_idcliente
) VALUES (
  200,
  '2025-06-19',
  'Pendiente',
  NOW(),
  NULL,
  1
);

-- Paso 2: insertar primer detalle del pedido
INSERT INTO Detalle_Pedido (
  idDetalle_Pedido,
  cantidad,
  precioUnitario,
  precioTotal,
  fechaEntregaEstimada,
  createdAt,
  updatedAt,
  Pedido_idPedido,
  Pedido_cliente_idcliente,
  Libro_idLibro,
  Libro_Autor_id
) VALUES (
  1,
  2,
  40000,
  80000,
  '2025-06-25',
  NOW(),
  NULL,
  200,
  1,
  1,
  1
);

-- Paso 3: insertar segundo detalle del pedido
INSERT INTO Detalle_Pedido (
  idDetalle_Pedido,
  cantidad,
  precioUnitario,
  precioTotal,
  fechaEntregaEstimada,
  createdAt,
  updatedAt,
  Pedido_idPedido,
  Pedido_cliente_idcliente,
  Libro_idLibro,
  Libro_Autor_id
) VALUES (
  2,
  1,
  55000,
  55000,
  '2025-06-25',
  NOW(),
  NULL,
  200,
  1,
  2,
  1
);

-- Verifica si todo fue bien y se hace el comit commit
COMMIT;