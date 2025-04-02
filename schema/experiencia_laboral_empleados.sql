CREATE TABLE experiencia_laboral_empleados (
    id_experiencia_laboral INT PRIMARY KEY AUTO_INCREMENT,
    id_empleado INT NOT NULL,
    nombre_empresa VARCHAR(255) NOT NULL,
    cargo_ocupado VARCHAR(255) NOT NULL,
    fecha_inicio DATE NOT NULL,
    fecha_fin DATE,
    descripcion_funciones TEXT,
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    fecha_actualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (id_empleado) REFERENCES empleados(id_empleado)
);