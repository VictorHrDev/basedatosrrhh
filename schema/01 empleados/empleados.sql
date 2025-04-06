CREATE TABLE empleados (
    id_empleado INT PRIMARY KEY AUTO_INCREMENT,
    codigo_empleado VARCHAR(20) UNIQUE NOT NULL,
    id_tipo_documento INT NOT NULL,
    numero_documento VARCHAR(20) UNIQUE NOT NULL,
    nombre VARCHAR(200) NOT NULL,
    apellido VARCHAR(200) NOT NULL,
    fecha_nacimiento DATE,
    id_sexo INT,
    pais_nacimiento VARCHAR(100),
    provincia_nacimiento VARCHAR(100),
    canton_nacimiento VARCHAR(100),
    parroquia_nacimiento VARCHAR(100),
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    fecha_actualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (id_tipo_documento) REFERENCES tipos_documento(id_tipo_documento),
    FOREIGN KEY (id_sexo) REFERENCES sexos(id_sexo)
);