CREATE TABLE cargos (
    id_cargo INT PRIMARY KEY AUTO_INCREMENT,
    nombre_cargo VARCHAR(200) UNIQUE NOT NULL,
    descripcion_cargo TEXT,
    codigo_cargo VARCHAR(20) UNIQUE,
    departamento VARCHAR(100),
    cargo_homologado VARCHAR(255),
    id_salario_sectorial INT,
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    fecha_actualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (id_salario_sectorial) REFERENCES salarios_minimos_sectoriales(id_salario_sectorial)
);