CREATE TABLE provincias (
    id_provincia INT PRIMARY KEY AUTO_INCREMENT,
    nombre_provincia VARCHAR(100) NOT NULL,
    id_pais INT NOT NULL,
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    fecha_actualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (id_pais) REFERENCES paises(id_pais)
);