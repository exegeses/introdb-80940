# tipos de datos de MySQL

## Numéricos

> Enteros

    tinyint   -128 a 127 | 255 (unsigned)  
    smallint  -32768 a 32767 | 65535 (unsigned)  
    mediumint -8388608 a 8388607 | 16777215 (unsigned)   
    int  -2147483648 to 2147483647 | 4294967295 (unsigned)   
    bigint 18446744073709551615 (unsigned)   

> Decimales

    float
    double
    decimal

> Otros

    boolean     1 | 0
    bit         10

## Alfauméricos

    char        255  
    varchar     65535  
    tinyText    255
    smallText   65535
    mediumText  16777215
    Text        4294967295

## Fechas

    date        '2025-05-04'  yyyy-mm-dd    
    datetime    '2025-02-03 11:13:42'  yyyy-mm-dd hh:mm:ss
    time        '11:13:42'
    year        '2025'
    timestamp   '1780532244' 

> UNIX timestamp: El tiempo transcurrido (expresado en milisegundos) desde el 01-01-1970
