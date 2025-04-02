CREATE TABLE contactos_emergencia (
    id_contacto_emergencia INT PRIMARY KEY AUTO_INCREMENT,
    id_empleado INT NOT NULL,
    nombre_completo VARCHAR(200) NOT NULL,
    relacion VARCHAR(100) NOT NULL,
    telefono_principal VARCHAR(20) NOT NULL,
    telefono_secundario VARCHAR(20),
    es_contacto_principal BOOLEAN DEFAULT FALSE,
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    fecha_actualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (id_empleado) REFERENCES empleados(id_empleado)
);