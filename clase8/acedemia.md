# Proyecto academia

> Se trata de una academia que dicta cursos de tecnologías de la informaci´ón (informática)
> Dicta cursos tales como:
1. SQL para Análisis de Datos
2. Machine Learning Fundamentos
3. Introducción a SQL
4. Introducción a Python
5. Programación en PHP y MySQL
6. Marketing en Redes Sociales

> Algunas de las áreas temáticas de los cursos son:
1. Ciencias de Datos
2. Programación
3. Diseño Gráfico
4. Marketing Digital

> Los cursos tienen niveles de complejidad como:
1. Inicial
2. Intermedio
3. Avanzado
4. Experto

> También debemos almacenar datos de los alumnos 
> Un alumno se puede anotar en más de un curso
> Un curso tiene más de un alumno

> Tablas propuestas:
[] cursos
[] areas
[] niveles
[] alumnos
[] alumnos_cursos

> Debemos saber:
> qué alumnos se han anotado a cada curso
(nombre, apellido) (curso)

    SELECT nombre, apellido, curso  
      FROM alumnos  
      JOIN cursos_alumnos  
        ON alumnos.idAlumno = cursos_alumnos.idAlumno
      JOIN cursos 
        ON cursos.idCurso = cursos_alumnos.idCurso; 
 
> si están o no activos en dicho curso

    SELECT nombre, apellido, curso, activo  
      FROM alumnos  
      JOIN cursos_alumnos  
        ON alumnos.idAlumno = cursos_alumnos.idAlumno
      JOIN cursos 
        ON cursos.idCurso = cursos_alumnos.idCurso; 

> total de matrículas agrupadas por curso

    SELECT curso, sum(matricula) as total_por_curso
        from cursos
        join cursos_alumnos
        on cursos.idCurso = cursos_alumnos.idCurso
        group by cursos.idCurso;

> total de matrículas agrupadas por alumno

    SELECT concat(nombre, ' ', apellido) as alumno, sum(matricula) as total_por_alumno
    from cursos
    join cursos_alumnos
    on cursos.idCurso = cursos_alumnos.idCurso
    join alumnos
    on cursos_alumnos.idAlumno = alumnos.idAlumno
    WHERE activo = 1
    group by alumnos.idAlumno;

> matrículas por trimestre y por mes ()

    SELECT sum(matricula) as 'total matriculas q1'
      from cursos
      join cursos_alumnos
        on cursos.idCurso = cursos_alumnos.idCurso
      WHERE 
            YEAR(fechaAlta) = 2024
            AND	MONTH(fechaAlta) <= 3;

    SELECT sum(matricula) as 'total matriculas q1'
      from cursos
      join cursos_alumnos
        on cursos.idCurso = cursos_alumnos.idCurso
      WHERE 
            YEAR(fechaAlta) = 2024
            AND	MONTH(fechaAlta) between 1 and 3;

    SELECT sum(matricula) as 'total matriculas q2'
      from cursos
      join cursos_alumnos
        on cursos.idCurso = cursos_alumnos.idCurso
      WHERE 
            YEAR(fechaAlta) = 2024
            AND	MONTH(fechaAlta) between 4 and 6;

> grilla UNION

    SELECT sum(matricula) as 'total matriculas q1'
      from cursos
      join cursos_alumnos
        on cursos.idCurso = cursos_alumnos.idCurso
      WHERE 
            YEAR(fechaAlta) = 2024
            AND	MONTH(fechaAlta) between 1 and 3

    UNION

    SELECT sum(matricula) as 'total matriculas q2'
      from cursos
      join cursos_alumnos
        on cursos.idCurso = cursos_alumnos.idCurso
      WHERE 
            YEAR(fechaAlta) = 2024
            AND	MONTH(fechaAlta) between 4 and 6

    UNION

    SELECT sum(matricula) as 'total matriculas q3'
      from cursos
      join cursos_alumnos
        on cursos.idCurso = cursos_alumnos.idCurso
      WHERE 
            YEAR(fechaAlta) = 2024
            AND	MONTH(fechaAlta) between 7 and 9

    UNION

    SELECT sum(matricula) as 'total matriculas q4'
      from cursos
      join cursos_alumnos
        on cursos.idCurso = cursos_alumnos.idCurso
      WHERE 
            YEAR(fechaAlta) = 2024
            AND	MONTH(fechaAlta) between 10 and 12;

