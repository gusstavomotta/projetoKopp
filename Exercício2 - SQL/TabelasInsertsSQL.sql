
CREATE TABLE IF NOT EXISTS remessaInfracoes (
    id SERIAL PRIMARY KEY,
    total_infracoes INTEGER NOT NULL,
    situacao TEXT NOT NULL CHECK (situacao IN ('Criada', 'Expedida', 'Aceita', 'Nao Aceita'))
);

CREATE TABLE IF NOT EXISTS infracoes (
    id SERIAL PRIMARY KEY,
    data_hora TIMESTAMP NOT NULL,
    equipamento VARCHAR(255) NOT NULL,
    velocidade_permitida DOUBLE PRECISION NOT NULL,
    velocidade_medida DOUBLE PRECISION NOT NULL,
    valido BOOLEAN NOT NULL,
    remessa_id INTEGER REFERENCES remessaInfracoes(id)
);

INSERT INTO remessaInfracoes (total_infracoes, situacao)
VALUES 
    (5, 'Criada'),
    (3, 'Expedida'),
    (7, 'Aceita'),
    (2, 'Nao Aceita');

INSERT INTO infracoes (data_hora, equipamento, velocidade_permitida, velocidade_medida, valido, remessa_id)
VALUES
    ('2024-10-12 08:30:00', 'Radar 1', 60.0, 80.0, TRUE, 1),
    ('2024-10-12 09:15:00', 'Radar 2', 50.0, 70.0, FALSE, 1),
    ('2024-10-12 10:00:00', 'Radar 3', 80.0, 90.0, TRUE, 2),
    ('2024-10-12 11:45:00', 'Radar 4', 100.0, 120.0, TRUE, 3),
    ('2024-10-12 12:30:00', 'Radar 1', 70.0, 75.0, FALSE, 4),
    ('2024-10-12 14:00:00', 'Radar 5', 90.0, 95.0, TRUE, 2),
    ('2024-10-12 15:30:00', 'Radar 6', 60.0, 85.0, TRUE, 3);
