CREATE TABLE tipos_discapacidad (
    id_tipo_discapacidad INT PRIMARY KEY AUTO_INCREMENT,
    nombre_tipo_discapacidad VARCHAR(100) UNIQUE NOT NULL,
    descripcion VARCHAR(255),
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    fecha_actualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
