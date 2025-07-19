-- Suggested code may be subject to a license. Learn more: ~LicenseLog:3337905981.
CREATE TABLE empleados (
    id_empleado INT PRIMARY KEY AUTO_INCREMENT,
    codigo_empleado VARCHAR(20) UNIQUE NOT NULL,
    id_tipo_documento INT NOT NULL,
    numero_documento VARCHAR(20) UNIQUE NOT NULL,
    nombre VARCHAR(200) NOT NULL,
    apellido VARCHAR(200) NOT NULL,
    fecha_nacimiento DATE,
    id_sexo INT,
    pais_nacimiento INT,
    provincia_nacimiento INT,
    canton_nacimiento INT,
    parroquia_nacimiento VARCHAR(100),
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    fecha_actualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (id_tipo_documento) REFERENCES tipos_documento(id_tipo_documento),
    FOREIGN KEY (id_sexo) REFERENCES sexos(id_sexo),
    FOREIGN KEY (pais_nacimiento) REFERENCES Pais(id_pais),
    FOREIGN KEY (provincia_nacimiento) REFERENCES Provincia(id_provincia),
    FOREIGN KEY (canton_nacimiento) REFERENCES Canton(id_canton),
    FOREIGN KEY (parroquia_nacimiento) REFERENCES Parroquia(id_parroquia)
);
