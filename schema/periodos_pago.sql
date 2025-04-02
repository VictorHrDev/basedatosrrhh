CREATE TABLE periodos_pago (
    id_periodo_pago INT PRIMARY KEY AUTO_INCREMENT,
    nombre_periodo VARCHAR(50) UNIQUE NOT NULL,
    descripcion VARCHAR(255),
    fecha_inicio DATE NOT NULL,
    fecha_fin DATE NOT NULL,
    fecha_pago DATE NOT NULL,
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    fecha_actualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
