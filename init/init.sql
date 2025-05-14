-- Crear tabla de animales
CREATE TABLE animals (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- Crear tabla de lugares
CREATE TABLE locations (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- Crear tabla de relación
CREATE TABLE animal_locations (
    animal_id INT REFERENCES animals(id),
    location_id INT REFERENCES locations(id),
    PRIMARY KEY (animal_id, location_id)
);

-- Insertar datos en animals
INSERT INTO animals (name) VALUES
('León'),
('Tigre'),
('Águila'),
('Panda');

-- Insertar datos en locations
INSERT INTO locations (name) VALUES
('Sabana'),
('Selva'),
('Montañas'),
('Bosque de bambú');

-- Insertar relaciones
INSERT INTO animal_locations (animal_id, location_id) VALUES
(1, 1),  -- León - Sabana
(2, 2),  -- Tigre - Selva
(3, 3),  -- Águila - Montañas
(4, 4);  -- Panda - Bosque de bambú

