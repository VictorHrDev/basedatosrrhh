CREATE TABLE referencias_personales (
    id_referencia INT PRIMARY KEY AUTO_INCREMENT,
    id_empleado INT NOT NULL,
    nombre_completo VARCHAR(200) NOT NULL,
    telefono VARCHAR(20),
    celular VARCHAR(20),
    empresa VARCHAR(200),
    cargo VARCHAR(100),
    tiempo_conocido VARCHAR(100),
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    fecha_actualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (id_empleado) REFERENCES empleados(id_empleado)
);