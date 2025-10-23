# Iniciar Server de MySQL

> Esta pequeña nota va explicar cómo chequear si nuestro servidor de base de datos está iniciado.
> Una vez que sepamos esto podemos tomar la decisión de detenerlo, iniciarlo o incluso reiniciarlo cuando lo necesitemos

## Windows

> Como el servidor de base de datos no tiene una interfaz amigable, no tiene ventanitas con botoncitos, para poder chequear lo vamos a utilizar el administrador de servicios

1. Pulsar la combinación de teclas WIN + R
2. Esto abrirá la ventana "ejecutar"
3. Ahí vamos a escribir "services.msc" impulsar "OK"
4. Si va a abrir el administrador de servicios
5. Buscar el servicio llamado MySQL80
6. En la columna 'Estado' veremos si esta "En ejecución"


## Debian

> para iniciar el servidor de base de datos en MySQL en debian 
> puedo utilizar una terminal de comandos 

    systemctl start mysql

> para detenerlo: 

    systemctl stop mysql

> para reiniciarlo:

    systemctl restart mysql

> para chequear estado:

    systemctl status mysql



## macOS

> En macOS vamos a ir a la Configuración del Sistema

1. ir a Configuración del Sistema
2. En el panel lateral izquierdo ir hacia abajo de todo
3. Ahí encontraremos el servicio MySQL
4. En la parte central tenemos las opciones para iniciar y detener
