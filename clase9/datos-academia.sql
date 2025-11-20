/*** Datos de tabla "areas" ***/

INSERT INTO areas (area)
    VALUES
     ('Ciencias de Datos'), -- Requerida
     ('Programación'),      -- Requerida
     ('Diseño Gráfico'),    -- Requerida
     ('Marketing Digital'), -- Requerida
     ('Bases de Datos'),
     ('Desarrollo Web'),
     ('Redes y Seguridad'),
     ('Cloud Computing'),
     ('Inteligencia Artificial'),
     ('UX/UI'),
     ('DevOps'),
     ('Gestión de Proyectos');

/*** Datos de tabla "niveles" ***/

INSERT INTO niveles
    (idNivel, nivel)
VALUES
    (DEFAULT, 'Inicial'),
    (DEFAULT, 'Intermedio'),
    (DEFAULT, 'Avanzado'),
    (DEFAULT, 'Experto');

/*** Datos de tabla "cursos" ***/

INSERT INTO cursos
    (curso, matricula, idArea, idNivel)
VALUES
-- Cursos Requeridos
('SQL para Análisis de Datos', 8500.00, 1, 3),    -- Data Science / Avanzado
('Machine Learning Fundamentos', 12000.00, 9, 2), -- IA (Asumido) / Intermedio
('Introducción a SQL', 4500.00, 5, 1),           -- Bases de Datos / Inicial
('Introducción a Python', 5000.00, 2, 1),        -- Programación / Inicial
('Programación en PHP y MySQL', 7800.00, 6, 2),  -- Desarrollo Web / Intermedio
('Marketing en Redes Sociales', 6200.00, 4, 2),  -- Marketing Digital / Intermedio

-- Cursos Adicionales
('Análisis de Datos con R', 9000.00, 1, 3),        -- Data Science / Avanzado
('Programación Orientada a Objetos (POO)', 6500.00, 2, 2), -- Programación / Intermedio
('Fundamentos de Diseño UX', 5500.00, 10, 1),       -- UX/UI / Inicial
('Google Ads y SEO Estratégico', 7500.00, 4, 3),   -- Marketing Digital / Avanzado
('Modelado de Datos Avanzado', 10500.00, 5, 4),    -- Bases de Datos / Experto
('Desarrollo Front-end con React', 11500.00, 6, 3), -- Desarrollo Web / Avanzado
('Ciberseguridad Práctica', 15000.00, 7, 4),       -- Redes y Seguridad / Experto
('Administración de AWS', 13000.00, 8, 3),         -- Cloud Computing / Avanzado
('Visión por Computadora', 16000.00, 9, 4),        -- IA / Experto
('Creación de Portafolios Digitales', 4000.00, 3, 1), -- Diseño Gráfico / Inicial
('Estrategias de Contenido', 5800.00, 4, 2),       -- Marketing Digital / Intermedio
('Gestión de Bases de Datos NoSQL', 9800.00, 5, 3), -- Bases de Datos / Avanzado
('Introducción a TypeScript', 7200.00, 2, 2),      -- Programación / Intermedio
('Metodologías Ágiles (Scrum)', 8000.00, 12, 3);   -- Gestión de Proyectos / Avanzado

/*** Datos de tabla "alumnos" ***/
INSERT INTO alumnos
    (nombre, apellido, email)
VALUES
  ('Juan', 'Pérez', 'juan.perez@example.com'),
  ('María', 'Gómez', 'maria.gomez@example.com'),
  ('Carlos', 'López', 'carlos.lopez@example.com'),
  ('Ana', 'Rodríguez', 'ana.rodriguez@example.com'),
  ('Pedro', 'Martínez', 'pedro.martinez@example.com'),
  ('Laura', 'Fernández', 'laura.fernandez@example.com'),
  ('Javier', 'Díaz', 'javier.diaz@example.com'),
  ('Sofía', 'Ruiz', 'sofia.ruiz@example.com'),
  ('Diego', 'Sánchez', 'diego.sanchez@example.com'),
  ('Elena', 'Moreno', 'elena.moreno@example.com'),
  ('Miguel', 'Jiménez', 'miguel.jimenez@example.com'),
  ('Paula', 'Hernández', 'paula.hernandez@example.com'),
  ('Andrés', 'Navarro', 'andres.navarro@example.com'),
  ('Lucía', 'García', 'lucia.garcia@example.com'),
  ('Roberto', 'Vázquez', 'roberto.vazquez@example.com'),
  ('Isabel', 'Ramos', 'isabel.ramos@example.com'),
  ('Fernando', 'Cano', 'fernando.cano@example.com'),
  ('Natalia', 'Blanco', 'natalia.blanco@example.com'),
  ('Ricardo', 'Soto', 'ricardo.soto@example.com'),
  ('Verónica', 'Molina', 'veronica.molina@example.com');

/** Datos para cursos_alumnos (50 inscripciones)
    Nota: Se utiliza una combinación de
    idCurso (1 a 20)
    idAlumno (1 a 20)
    con fechas de alta
    y un estado activo (1=True, 0=False).
 */
INSERT INTO cursos_alumnos
    (idCurso, idAlumno, fechaAlta, activo)
VALUES
      (3, 1, '2024-01-15', 1),  -- Juan en Intro a SQL
      (4, 1, '2024-01-15', 1),  -- Juan en Intro a Python
      (1, 2, '2024-02-01', 1),  -- María en SQL para Análisis
      (2, 2, '2024-02-01', 0),  -- María en ML (Inactivo/Terminado)
      (5, 3, '2024-03-10', 1),  -- Carlos en PHP y MySQL
      (6, 4, '2024-03-15', 1),  -- Ana en Marketing
      (7, 5, '2024-04-01', 1),  -- Pedro en Análisis con R
      (8, 6, '2024-04-10', 1),  -- Laura en POO
      (9, 7, '2024-05-05', 0),  -- Javier en UX (Inactivo)
      (10, 8, '2024-05-12', 1), -- Sofía en Google Ads
      (11, 9, '2024-06-01', 1), -- Diego en Modelado
      (12, 10, '2024-06-05', 1), -- Elena en React
      (13, 11, '2024-07-01', 1), -- Miguel en Ciberseguridad
      (14, 12, '2024-07-10', 1), -- Paula en AWS
      (15, 13, '2024-08-01', 1), -- Andrés en Visión por Computadora
      (16, 14, '2024-08-05', 1), -- Lucía en Portafolios
      (17, 15, '2024-09-01', 1), -- Roberto en Estrategias de Contenido
      (18, 16, '2024-09-15', 1), -- Isabel en NoSQL
      (19, 17, '2024-10-01', 1), -- Fernando en TypeScript
      (20, 18, '2024-10-10', 1), -- Natalia en Scrum

-- Inscripciones adicionales para varios alumnos en varios cursos
      (1, 3, '2024-02-20', 1),  -- Carlos en SQL para Análisis
      (3, 5, '2024-01-15', 1),  -- Pedro en Intro a SQL
      (4, 7, '2024-01-20', 1),  -- Javier en Intro a Python
      (6, 9, '2024-03-20', 1),  -- Diego en Marketing
      (10, 11, '2024-05-20', 1), -- Miguel en Google Ads
      (12, 13, '2024-06-15', 1), -- Andrés en React
      (14, 15, '2024-07-20', 1), -- Roberto en AWS
      (16, 17, '2024-08-10', 0), -- Fernando en Portafolios (Inactivo)
      (18, 19, '2024-09-20', 1), -- Ricardo en NoSQL
      (20, 20, '2024-10-15', 1), -- Verónica en Scrum

-- Más combinaciones
      (1, 4, '2024-03-01', 1),
      (2, 6, '2024-04-05', 1),
      (3, 8, '2024-01-10', 1),
      (4, 10, '2024-01-25', 1),
      (5, 12, '2024-03-01', 1),
      (6, 14, '2024-03-25', 1),
      (7, 16, '2024-04-15', 1),
      (8, 18, '2024-04-20', 1),
      (9, 20, '2024-05-10', 1),
      (10, 1, '2024-05-15', 1),
      (11, 2, '2024-06-10', 1),
      (12, 4, '2024-06-20', 1),
      (13, 6, '2024-07-05', 1),
      (14, 8, '2024-07-15', 1),
      (15, 10, '2024-08-05', 1),
      (16, 12, '2024-08-15', 1),
      (17, 14, '2024-09-05', 1),
      (18, 16, '2024-09-25', 1),
      (19, 18, '2024-10-05', 1),
      (20, 1, '2024-10-20', 1),
      (1, 5, '2024-01-01', 1),
      (2, 7, '2024-01-05', 1),
      (3, 9, '2024-01-08', 1),
      (4, 11, '2024-01-12', 1),
      (5, 13, '2024-02-01', 1),
      (6, 15, '2024-02-15', 1),
      (7, 17, '2024-03-01', 1),
      (8, 19, '2024-03-05', 1),
      (9, 1, '2024-04-01', 1);