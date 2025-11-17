create table proveedores
(
    idProveedor int primary key auto_increment,
    razonSocial varchar(40) not null,
    cuit varchar(13) unique not null,
    telefono varchar(20) not null,
    email varchar(50) not null,
    direccion varchar(100) not null
);

/* propuesta ChatGPT */

CREATE TABLE proveedores (
     idProveedor TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
     razonSocial VARCHAR(50) NOT NULL,
     cuit BIGINT UNSIGNED UNIQUE NOT NULL,
     telefono VARCHAR(23) NOT NULL,
     email VARCHAR(75) NOT NULL,
     direccion VARCHAR(200) NOT NULL
);
/* corrección */
ALTER TABLE proveedores
    MODIFY idProveedor tinyint unsigned auto_increment;