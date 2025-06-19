INSERT INTO Autor (id, nombre, apellido, fechaNacimiento, nacionalidad, biografia) VALUES
(1, 'Gabriel', 'García Márquez', '1927-03-06', 'Colombiana', 'Autor de realismo mágico'),
(2, 'Isabel', 'Allende', '1942-08-02', 'Chilena', 'Autora de novelas históricas'),
(3, 'Jorge Luis', 'Borges', '1899-08-24', 'Argentina', 'Autor de literatura fantástica');

INSERT INTO Libro (idLibro, titulo, genero, editorial, idioma, numPaginas, añoPublicacion, precio, descripcion, createdAt, updateAt, Autor_id) VALUES
(101, 'Cien Años de Soledad', 'Realismo Mágico', 'Sudamericana', 'Español', 417, '1967-05-30', 59000, 'Obra maestra de Gabo', NOW(), NOW(), 1),
(102, 'El Amor en los Tiempos del Cólera', 'Romance', 'Oveja Negra', 'Español', 348, '1985-09-15', 48000, 'Una historia de amor', NOW(), NOW(), 1),
(103, 'La Casa de los Espíritus', 'Ficción', 'Plaza & Janés', 'Español', 433, '1982-01-01', 52000, 'Saga familiar mágica', NOW(), NOW(), 2),
(104, 'Ficciones', 'Filosófico', 'Emecé', 'Español', 200, '1944-01-01', 45000, 'Cuentos filosóficos', NOW(), NOW(), 3),
(105, 'El Aleph', 'Filosofía', 'Losada', 'Español', 157, '1949-01-01', 39000, 'Realidades infinitas', NOW(), NOW(), 3);


INSERT INTO cliente (idcliente, nombre, apellido, numeroDocumento, correo, telefono, direccion, createdAt, updateAt) VALUES
(201, 'Esperanza ', 'Gómez', 11223344, 'esperanza@gmail.com', '3001112233', 'Calle 1 #23-45', NOW(), NOW()),
(202, 'Carlos', 'Mejía', 22334455, 'carlos@gmail.com', '3002223344', 'Carrera 7 #10-11', NOW(), NOW()),
(203, 'Ana', 'Rojas', 33445566, 'ana@gmail.com', '3003334455', 'Diagonal 3 #14-22', NOW(), NOW()),
(204, 'Luis', 'Martínez', 44556677, 'luis@gmail.com', '3004445566', 'Transversal 5 #7-99', NOW(), NOW());



INSERT INTO Pedido (idPedido, fechaPedido, estadoPedido, createdAt, updateAt, cliente_idcliente) VALUES
(301, '2025-06-01', 'Entregado', NOW(), '2025-06-05', 201),
(302, '2025-06-03', 'Pendiente', NOW(), '2025-06-04', 202),
(303, '2025-06autor-10', 'En camino', NOW(), '2025-06-12', 203);



INSERT INTO Detalle_Pedido (
  idDetalle_Pedido, cantidad, precioUnitario, precioTotal, fechaEntregaEstimada,
  createdAt, updatedAt, Pedido_idPedido, Pedido_cliente_idcliente, Libro_idLibro, Libro_Autor_id
) VALUES
(1, 1, 59000, 59000, '2025-06-05', NOW(), NOW(), 301, 201, 101, 1),
(2, 2, 48000, 96000, '2025-06-06', NOW(), NOW(), 302, 202, 102, 1),
(3, 1, 52000, 52000, '2025-06-12', NOW(), NOW(), 303, 203, 103, 2);