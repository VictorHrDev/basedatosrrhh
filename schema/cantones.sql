CREATE TABLE cantones (
    id_canton INT PRIMARY KEY AUTO_INCREMENT,
    nombre_canton VARCHAR(100) NOT NULL,
    id_provincia INT NOT NULL,
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    fecha_actualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (id_provincia) REFERENCES provincias(id_provincia)
);