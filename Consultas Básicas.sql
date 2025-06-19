-- 1 primera consulta . donde solicitamos  mostrar todos los libros publicados después de 1980
SELECT 
  titulo,
  añoPublicacion,
  genero,
  precio,
  Autor_id
FROM 
  Libro
WHERE 
  YEAR(añoPublicacion) > 1980
ORDER BY 
  añoPublicacion ASC;
  
  
  
  
  -- 2 muestre cada autor y la cantidad total de libros que escribió (use GROUP BY).
  SELECT 
  Autor.nombre,
  Autor.apellido,
  COUNT(Libro.idLibro) AS cantidad_libros
FROM 
  Autor
JOIN 
  Libro ON Libro.Autor_id = Autor.id
GROUP BY 
  Autor.id, Autor.nombre, Autor.apellido
  
  