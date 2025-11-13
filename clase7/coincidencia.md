# Filtros de coincidencia
> Cuándo queremos encontrar todos los registros que contengan cierta palabra o parte de una palabra

> Obtener todos los productos que en la columna descripción contengan la palabra "inalámbrico"

    SELECT producto, precio, descripcion  
      FROM productos  
      WHERE descripcion LIKE '%inalambrico%';  

> Utilizamos la palabra reservada **LIKE** en vez del símbolo de **=** (igual)
> Además combinamos dentro de las comillas con el carácter **%** (porcentaje) como una especie de comodín que podría ocupar 1 (uno), varios o incluso ningún carácter.
