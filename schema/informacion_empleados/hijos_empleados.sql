CREATE TABLE hijos_empleados (
    id_hijo INT PRIMARY KEY AUTO_INCREMENT,
    id_empleado INT NOT NULL,
    nombre_completo VARCHAR(200) NOT NULL,
    fecha_nacimiento DATE,
    parentesco VARCHAR(50) NOT NULL,
    es_discapacitado BOOLEAN DEFAULT FALSE,
    porcentaje_discapacidad DECIMAL(5, 2),
    id_tipo_discapacidad INT,
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    fecha_actualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (id_empleado) REFERENCES empleados(id_empleado),
    FOREIGN KEY (id_tipo_discapacidad) REFERENCES tipos_discapacidad(id_tipo_discapacidad)
);