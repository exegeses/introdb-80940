create table proveedores
(
    idProveedor int primary key auto_increment,
    razonSocial varchar(40) not null,
    cuit varchar(13) unique not null,
    telefono varchar(20) not null,
    email varchar(50) not null,
    direccion varchar(100) not null
);
