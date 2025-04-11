CREATE TABLE educacion_empleados (
    id_educacion INT PRIMARY KEY AUTO_INCREMENT,
    id_empleado INT NOT NULL,
    id_nivel_educacion INT NOT NULL,
    institucion VARCHAR(255),
    titulo_obtenido VARCHAR(255),
    fecha_inicio DATE,
    fecha_fin DATE,
    en_curso BOOLEAN DEFAULT FALSE,
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    fecha_actualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (id_empleado) REFERENCES empleados(id_empleado),
    FOREIGN KEY (id_nivel_educacion) REFERENCES niveles_educacion(id_nivel_educacion)
);