/*
    obtener:
            producto, precio (productos)
            razonsocial, telefono (proveedores)
*/
SELECT producto, precio, razonsocial, telefono
FROM productos
JOIN productos_proveedores
  ON productos.idProducto = productos_proveedores.idProducto
JOIN proveedores
  ON proveedores.idProveedor = productos_proveedores.idProveedor;

/*
    obtener:
            titulo, anio,
            nombre, nacionalidad
*/
SELECT titulo, anio, nombre, nacionalidad
FROM autores
JOIN libros_autores
  ON autores.idAutor = libros_autores.idAutor
JOIN libros
  ON libros.idLibro = libros_autores.idLibro;