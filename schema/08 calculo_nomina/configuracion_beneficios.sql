CREATE TABLE configuracion_beneficios (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_empleado INT NOT NULL,
    acumula_decimotercero BOOLEAN DEFAULT FALSE,
    acumula_decimocuarto BOOLEAN DEFAULT FALSE,
    acumula_fondo_reserva BOOLEAN DEFAULT FALSE,
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    fecha_actualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (id_empleado) REFERENCES empleados(id)
);