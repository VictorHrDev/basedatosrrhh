CREATE TABLE parroquias (
    id_parroquia INT PRIMARY KEY AUTO_INCREMENT,
    nombre_parroquia VARCHAR(100) NOT NULL,
    id_canton INT NOT NULL,
    es_ecuatoriana BOOLEAN DEFAULT TRUE,
    otro_pais VARCHAR(100),
    otra_informacion TEXT,
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    fecha_actualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (id_canton) REFERENCES cantones(id_canton)
);
