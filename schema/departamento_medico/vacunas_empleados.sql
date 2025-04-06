CREATE TABLE vacunas_empleados (
    id_vacuna_empleado INT PRIMARY KEY AUTO_INCREMENT,
    id_empleado INT NOT NULL,
    nombre_vacuna VARCHAR(100) NOT NULL,
    fecha_vacunacion DATE NOT NULL,
    dosis VARCHAR(50),
    lote_vacuna VARCHAR(100),
    entidad_administradora VARCHAR(200),
    observaciones TEXT,
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    fecha_actualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (id_empleado) REFERENCES empleados(id_empleado)
);
