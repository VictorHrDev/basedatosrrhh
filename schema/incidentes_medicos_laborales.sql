CREATE TABLE incidentes_medicos_laborales (
    id_incidente_medico INT PRIMARY KEY AUTO_INCREMENT,
    id_empleado INT NOT NULL,
    fecha_incidente DATE NOT NULL,
    hora_incidente TIME,
    descripcion_incidente TEXT NOT NULL,
    lugar_incidente VARCHAR(200),
    partes_cuerpo_afectadas VARCHAR(200),
    diagnostico_inicial VARCHAR(200),
    tratamiento_inmediato TEXT,
    seguimiento_medico TEXT,
    dias_baja_laboral INT,
    reporte_accidente VARCHAR(255),
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    fecha_actualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (id_empleado) REFERENCES empleados(id_empleado)
);
