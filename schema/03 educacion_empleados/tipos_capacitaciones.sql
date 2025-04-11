CREATE TABLE tipos_capacitaciones (
    id_tipo_capacitacion INT PRIMARY KEY AUTO_INCREMENT,
    nombre_tipo_capacitacion VARCHAR(255) NOT NULL UNIQUE,
    descripcion TEXT,
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    fecha_actualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);