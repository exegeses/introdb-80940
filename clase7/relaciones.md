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

## JOIN
> para lograr en esta técnica debemos mencionar después del **FROM** únicamente una sola tabla
> Sólo mencionamos la tabla principal  
> Luego mediante la palabra reservada **JOIN** mencionamos la tabla secundaria
> Finalmente después de la palabra **ON** igualamos la clave foránea de la tabla principal con la clave primaria de la tabla secundaria
> (podríamos decir que cada **JOIN** tiene un **ON**)


    SELECT colTabla1, colTabla1, colTabla2  
      FROM tabla1  
      JOIN tabla2  
        ON tabla1.fk = tabla2.pk;  

    SELECT colTabla1, colTabla1, colTabla2, colTabla3  
      FROM tabla1  
      JOIN tabla2  
        ON tabla1.fk = tabla2.pk  
      JOIN tabla3  
        ON tabla1.fk = tabla3.pk;  


> Ejemplo práctico:

    SELECT producto, precio, marca  
      FROM productos  
      JOIN marcas  
        ON productos.idMarca = marcas.idMarca;  


    SELECT producto, precio, marca, categoria  
    FROM productos  
      JOIN marcas  
        ON productos.idMarca = marcas.idMarca  
      JOIN categorias  
        ON productos.idCategoria = categorias.idCategoria;  









