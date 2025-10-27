# Creación de tablas en SQL

> Para crear una tabla 
> utilizamos el comando **CREATE TABLE**

> Sintaxis: 

    CREATE TABLE nombreTabla  
    (
        nombreCampo tipoDato [modificadores],
        nombreCampo2 tipoDato [modificadores],
        nombreCampo3 tipoDato [modificadores],
        nombreCampoX tipoDato [modificadores]
    );


> Ejemplo práctico: 

    CREATE TABLE clientes  
    (
        idCliente int primary key auto_increment,  
        nombre varchar(45) not null,  
        apellido varchar(45) not null,  
        telefono varchar(30) not null,  
        email varchar(50),  
        fechaAlta date not null
    );


## Eliminar tabla

    DROP TABLE nombreTabla;  