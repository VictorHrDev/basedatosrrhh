CREATE TABLE salarios_minimos_sectoriales (
    id_salario_sectorial INT PRIMARY KEY AUTO_INCREMENT,
    cargo_actividad VARCHAR(255) NOT NULL,
    estructura_ocupacional VARCHAR(255),
    comentarios_detalles TEXT,
    codigo_iess VARCHAR(20),
    salario_minimo DECIMAL(10, 2) NOT NULL,
    anio INT NOT NULL,
    fecha_vigencia_inicio DATE,
    fecha_vigencia_fin DATE,
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    fecha_actualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    UNIQUE KEY (cargo_actividad, anio)
);