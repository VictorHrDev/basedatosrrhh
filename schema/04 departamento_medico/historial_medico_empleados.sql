CREATE TABLE historial_medico_empleados (
    id_historial_medico INT PRIMARY KEY AUTO_INCREMENT,
    id_empleado INT NOT NULL,
    id_informacion_personal INT NOT NULL,
    fecha_examen_medico DATE NOT NULL,
    tipo_examen_medico VARCHAR(100),
    entidad_medica VARCHAR(200),
    alergias TEXT,
    enfermedades_preexistentes TEXT,
    medicamentos_regulares TEXT,
    limitaciones_medicas TEXT,
    aptitud_laboral VARCHAR(100),
    observaciones TEXT,
    documento_adjunto VARCHAR(255),
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    fecha_actualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,    
    FOREIGN KEY (id_empleado) REFERENCES empleados(id_empleado),
    FOREIGN KEY (id_informacion_personal) REFERENCES informacion_personal_empleados(id_empleado)
);