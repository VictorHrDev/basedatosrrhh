CREATE TABLE historial_estado_civil_empleados (
    id_historial_estado_civil INT PRIMARY KEY AUTO_INCREMENT,
    id_empleado INT NOT NULL,
    id_estado_civil INT NOT NULL,
    fecha_cambio_estado_civil DATE NOT NULL,
    observaciones TEXT,
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    fecha_actualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (id_empleado) REFERENCES empleados(id_empleado),
    FOREIGN KEY (id_estado_civil) REFERENCES estados_civiles(id_estado_civil)
);
