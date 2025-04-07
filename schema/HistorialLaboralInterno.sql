CREATE TABLE historial_laboral_interno (
    id_historial_laboral INT PRIMARY KEY AUTO_INCREMENT,
    id_empleado INT NOT NULL,
    fecha_inicio DATE NOT NULL,
    fecha_fin DATE,
    tipo_contrato VARCHAR(100),
    cargo VARCHAR(200) NOT NULL,
    departamento VARCHAR(100),
    salario DECIMAL(10, 2),
    observaciones TEXT,
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    fecha_actualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (id_empleado) REFERENCES empleados(id_empleado),
    FOREIGN KEY (jefe_directo) REFERENCES empleados(id_empleado)
);
