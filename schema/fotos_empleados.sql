CREATE TABLE fotos_empleados (
    id_foto INT PRIMARY KEY AUTO_INCREMENT,
    id_empleado INT NOT NULL,
    fecha_subida TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    ruta_archivo VARCHAR(255) NOT NULL,
    es_foto_actual BOOLEAN DEFAULT TRUE,
    descripcion VARCHAR(255),
    FOREIGN KEY (id_empleado) REFERENCES empleados(id_empleado)
);