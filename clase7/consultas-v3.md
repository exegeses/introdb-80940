# Consultas v3
## Fórmula

    SELECT [*, campo, campo]  
      FROM tabla  
      WHERE condición  
      [ORDER BY campo, campo];   

> Orden de registros usando dos columnas  

    SELECT producto, precio  
      FROM productos;  

    SELECT producto, precio, idMarca  
      FROM productos  
      ORDER BY idMarca, precio DESC;  

## Filtros
> Cuando queremos obtener registros que cumplan cierta condición vamos a utilizar filtros
> Implementamos un filtro con la palabra reservada **WHERE**

> obtener producto, precio de todos los productos con un precio hasta 700

    SELECT producto, precio  
      FROM productos  
      WHERE precio <= 700;  

> obtener producto, precio de todos los productos con un precio entre 100 y 700

    SELECT producto, precio
      FROM productos
      WHERE precio >= 100
        AND precio <= 700;

> uso de BETWEEN  

    SELECT producto, precio  
      FROM productos  
      WHERE precio BETWEEN 100 AND 700;  

> clientes con fecha de alta entre octubre de 2024 y junio de 2025

    select * from clientes   
      where fechaAlta BETWEEN "2024-10-01" AND "2025-06-30"  
      order by fechaAlta;  

> obtener productos de las marcas 1 (Samsung) y 16 (Xiaomi)

    SELECT producto, precio  
      FROM productos  
      WHERE idMarca = 16  
        OR  idMarca = 1;  

> función IN()

    SELECT producto, precio  
      FROM productos  
      WHERE idMarca IN(16, 1);  
    