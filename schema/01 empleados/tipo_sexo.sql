CREATE TABLE tipo_sexo (
    id_sexo INT PRIMARY KEY AUTO_INCREMENT,
    tipo_sexo VARCHAR(50) UNIQUE NOT NULL,
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    fecha_actualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);