# Consultas v2

## Orden de resultados
> Para ordenar los resultados de una consulta 
> utilizamos el modificador **ORDER BY** seguido de la columna

    SELECT *  
      FROM marcas  
      ORDER BY idMarca;

## Columnas
> En algún momento vamos a necesitar obtener datos de solamente algunas columnas de nuestra tabla
> Para lograrlo debemos reemplazar el símbolo de * (asterisko) por los nombres de cada una de las columnas separadas por comas;


    SELECT idProducto, producto, precio  
      FROM productos;  