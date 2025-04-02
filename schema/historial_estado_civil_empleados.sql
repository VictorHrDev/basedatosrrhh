CREATE TABLE historial_estado_civil_empleados (
    id_historial_estado_civil INT PRIMARY KEY AUTO_INCREMENT,
    id_empleado INT NOT NULL,
    id_estado_civil INT NOT NULL,
    fecha_cambio_estado_civil DATE NOT NULL,
    nombre_conyuge VARCHAR(200),
    cedula_conyuge VARCHAR(15),
    celular_conyuge VARCHAR(20),
    correo_electronico_conyuge VARCHAR(100),
    fecha_inicio_union DATE,
    fecha_fin_union DATE,
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    fecha_actualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (id_empleado) REFERENCES empleados(id_empleado),
    FOREIGN KEY (id_estado_civil) REFERENCES estados_civiles(id_estado_civil)
);