# Insertar datos en SQL

> En SQL tenemos tres maneras principales de insertar datos en una tabla
> Estas 3 maneras comienzan con: 

    INSERT INTO nombreTabla...  

## Sintaxis usando SET

    INSERT INTO nombreTabla  
       SET 
            nombreCampo = valor,   
            nombreCampo2 = valor2,   
            nombreCampo3 = valor3,  
            nombreCampoX = valorX;  

> Ejemplo práctico: 

    INSERT INTO clientes  
       SET  
            idCliente = 1,  
            nombre = 'Lucía',  
            apellido = 'González',  
            telefono = '1123456789',  
            email = 'lucia.gonzalez@mail.com',  
            fechaAlta = '2024-05-12';  


    INSERT INTO clientes  
       SET   
            nombre = 'Martín',  
            apellido = 'Pérez',  
            telefono = '1139876543',  
            email = 'martin.perez@mail.com',  
            fechaAlta = '2024-06-01';  

## Sintaxis completa (se mencionan los campos) 

    INSERT INTO nombreTabla  
        ( nCampo, nCampo2, nCampo3, nCampoX )   
      VALUES  
        ( valor, valor2, valor3, valorX );  


> Ejemplo práctico: 

    INSERT INTO clientes  
        ( nombre, apellido, telefono, email, fechaAlta )  
      VALUES  
        ( 'Sofía', 'Ramírez', '1144455566', 'sofia.ramirez@mail.com', '2024-06-15' )

