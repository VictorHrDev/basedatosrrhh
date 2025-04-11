CREATE TABLE capacitaciones_empleados (
    id_capacitacion INT PRIMARY KEY AUTO_INCREMENT,
    id_empleado INT NOT NULL,
    tipo_capacitacion VARCHAR(50) NOT NULL,
    nombre_capacitacion VARCHAR(255) NOT NULL,
    institucion_capacitadora VARCHAR(255),
    fecha_inicio DATE,
    fecha_fin DATE,
    duracion_horas DECIMAL(5, 2),
    certificado_obtenido BOOLEAN DEFAULT FALSE,
    codigo_certificado VARCHAR(100),
    observaciones TEXT,
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    fecha_actualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (id_empleado) REFERENCES empleados(id_empleado)
);