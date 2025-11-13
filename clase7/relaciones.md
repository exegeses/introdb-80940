# Consultas con relaciones entre tablas
> En algunos casos vamos a necesitar obtener datos que provengan de dos o más tablas
> Para lograrlo tenemos dos técnicas

## Table relation

> Para lograr esta técnica debemos mencionar en el listado de tablas (después del **FROM**) cada una de las tablas necesarias separadas por comas
> Y luego mediante un filtro (**WHERE**) igualamos el foreign key de la tabla principal con el primary key de la tabla secundaria

> Sintaxis:

    SELECT colTabla1, colTabla1, colTabla2  
      FROM tabla1, tabla2  
      WHERE tabla1.fk = tabla2.pk;  

    SELECT colTabla1, colTabla1, colTabla2, colTabla3  
      FROM tabla1, tabla2, tabla3  
      WHERE tabla1.fk = tabla2.pk  
        AND tabla1.fk = tabla3.pk;  


> Ejemplo práctico

    SELECT producto, precio, marca
      FROM productos, marcas  
      WHERE productos.idMarca = marcas.idMarca;

    SELECT producto, precio, marca, categoria  
      FROM productos, marcas, categorias  
      WHERE productos.idMarca = marcas.idMarca  
        AND productos.idCategoria = categorias.idCategoria;  

