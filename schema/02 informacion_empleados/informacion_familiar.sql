CREATE TABLE informacion_familiar (
    id_informacion_familiar INT PRIMARY KEY AUTO_INCREMENT,
    id_empleado INT NOT NULL,
    parentesco ENUM('Padre', 'Madre', 'Hermano', 'Hermana') NOT NULL,
    nombre_completo VARCHAR(200) NOT NULL,
    cedula VARCHAR(15) UNIQUE,
    numero_celular VARCHAR(20),
    empresa_trabaja VARCHAR(200),
    cargo VARCHAR(100),
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    fecha_actualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (id_empleado) REFERENCES empleados(id_empleado)
);