CREATE TABLE certificados_competencias_laborales (
    id_certificado INT PRIMARY KEY AUTO_INCREMENT,
    id_empleado INT NOT NULL,
    nombre_certificado VARCHAR(255) NOT NULL,
    institucion_otorgante VARCHAR(255),
    fecha_obtencion DATE,
    codigo_certificado VARCHAR(100),
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    fecha_actualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (id_empleado) REFERENCES empleados(id_empleado)
);
