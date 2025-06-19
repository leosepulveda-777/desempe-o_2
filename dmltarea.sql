CREATE DATABASE IF NOT EXISTS Tienda_Libros;
USE Tienda_Libros;

CREATE TABLE IF NOT EXISTS Autor (
  id INT PRIMARY KEY,
  nombre VARCHAR(45) NOT NULL,
  apellido VARCHAR(45) NOT NULL,
  fechaNacimiento DATE NOT NULL,
  nacionalidad VARCHAR(45) NOT NULL,
  biografia TEXT
);

CREATE TABLE IF NOT EXISTS Libro (
  idLibro INT NOT NULL,
  titulo VARCHAR(45) NOT NULL,
  genero VARCHAR(45) NOT NULL,
  editorial VARCHAR(45) NOT NULL,
  idioma VARCHAR(45) NOT NULL,
  numPaginas INT NOT NULL,
  añoPublicacion DATE NOT NULL,
  precio DOUBLE NOT NULL,
  descripcion TEXT,
  createdAt DATETIME,
  updateAt DATETIME,
  Autor_id INT NOT NULL,
  PRIMARY KEY (idLibro, Autor_id),
  FOREIGN KEY (Autor_id) REFERENCES Autor(id)
);

CREATE TABLE IF NOT EXISTS Cliente (
  idcliente INT PRIMARY KEY,
  nombre VARCHAR(45) NOT NULL,
  apellido VARCHAR(45) NOT NULL,
  numeroDocumento INT NOT NULL,
  correo VARCHAR(45) NOT NULL,
  telefono VARCHAR(45) NOT NULL,
  direccion VARCHAR(45) NOT NULL,
  createdAt DATETIME,
  updateAt DATETIME
);

CREATE TABLE IF NOT EXISTS Pedido (
  idPedido INT NOT NULL,
  fechaPedido VARCHAR(45) NOT NULL,
  estadoPedido VARCHAR(45) NOT NULL,
  createdAt DATETIME,
  updateAt VARCHAR(45),
  cliente_idcliente INT NOT NULL,
  PRIMARY KEY (idPedido, cliente_idcliente),
  FOREIGN KEY (cliente_idcliente) REFERENCES Cliente(idcliente)
);

CREATE TABLE IF NOT EXISTS Detalle_Pedido (
  idDetalle_Pedido INT NOT NULL,
  cantidad INT NOT NULL,
  precioUnitario DOUBLE NOT NULL,
  precioTotal DOUBLE NOT NULL,
  fechaEntregaEstimada VARCHAR(45) NOT NULL,
  createdAt DATETIME,
  updatedAt DATETIME,
  Pedido_idPedido INT NOT NULL,
  Pedido_cliente_idcliente INT NOT NULL,
  Libro_idLibro INT NOT NULL,
  Libro_Autor_id INT NOT NULL,
  PRIMARY KEY (idDetalle_Pedido, Pedido_idPedido, Pedido_cliente_idcliente, Libro_idLibro, Libro_Autor_id),
  FOREIGN KEY (Pedido_idPedido, Pedido_cliente_idcliente) REFERENCES Pedido(idPedido, cliente_idcliente),
  FOREIGN KEY (Libro_idLibro, Libro_Autor_id) REFERENCES Libro(idLibro, Autor_id)
);

CREATE TABLE IF NOT EXISTS Pedido_has_Libro (
  Pedido_idPedido INT NOT NULL,
  Pedido_cliente_idcliente INT NOT NULL,
  Libro_idLibro INT NOT NULL,
  Libro_Autor_id INT NOT NULL,
  FOREIGN KEY (Pedido_idPedido, Pedido_cliente_idcliente) REFERENCES Pedido(idPedido, cliente_idcliente),
  FOREIGN KEY (Libro_idLibro, Libro_Autor_id) REFERENCES Libro(idLibro, Autor_id)
);