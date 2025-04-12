CREATE TABLE informacion_personal_empleados (
    id_empleado INT PRIMARY KEY,
    direccion VARCHAR(255),
    id_tipo_sangre INT,
    telefono VARCHAR(20),
    email VARCHAR(100),
    id_estado_civil INT,
    tiene_discapacidad BOOLEAN DEFAULT FALSE,
    porcentaje_discapacidad DECIMAL(5, 2),
    id_tipo_discapacidad INT,
    tiene_vivienda_propia BOOLEAN,
    tipo_vivienda_no_propia ENUM('Alquila', 'Casa de los Padres', 'Casa de un Familiar', 'Otros'),
    observacion_vivienda_no_propia TEXT,
    ciudad VARCHAR(100),
    sector VARCHAR(100),
    parroquia VARCHAR(100),
    lugar_referencia VARCHAR(255),
    ubicacion_coordenadas VARCHAR(255),
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    fecha_actualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (id_empleado) REFERENCES empleados(id_empleado),
    FOREIGN KEY (id_estado_civil) REFERENCES estados_civiles(id_estado_civil),
    FOREIGN KEY (id_tipo_discapacidad) REFERENCES tipos_discapacidad(id_tipo_discapacidad),
    FOREIGN KEY (id_tipo_sangre) REFERENCES tipos_sangre(id_tipo_sangre)
);
