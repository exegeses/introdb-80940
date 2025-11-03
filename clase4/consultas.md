# Consultas en SQL
> podemos realizar consultas a:

1. Server
2. Base de datos
3. Tablas 
4. Vistas

## Consultas a Server

    -- listar todas las bases de datos en un server  
    SHOW DATABASES; 

    -- cuál es la base de datos activa  
    SELECT DATABASE();  

## Consultas a base de datos

    -- listar todas las tablas dentro de una base de datos  
    SHOW TABLES;  

## Consultas a tablas

    -- ver la estructura de una tabla  
    DESCRIBE nombreTabla;  

> cuándo vamos a hacer una consulta para obtener datos de una tabla utilizamos la palabra reservada **SELECT** acompañada de la palabra **FROM**

    SELECT * FROM nombreTabla;  
    SELECT * FROM clientes;  
    SELECT * FROM proveedores;  

> esta consulta nos devolverá una grilla de resultados con todos los registros de todas las columnas de una tabla especificada