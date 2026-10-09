/* =========================================================
   SISTEMA DE CORRIDAS DE KART – TEMPORADA 2024
   SCRIPT FINAL COMPLETO
   (Criação + Inserção + Update + Delete + Select)
   ========================================================= */

-- 1) CRIAÇÃO E USO DO BANCO DE DADOS
CREATE DATABASE IF NOT EXISTS KartCorridas;
USE KartCorridas;

-- 2) CRIAÇÃO DAS TABELAS

CREATE TABLE Temporada (
    id_temporada INT AUTO_INCREMENT PRIMARY KEY,
    numero INT NOT NULL
);

CREATE TABLE Etapa (
    id_etapa INT AUTO_INCREMENT PRIMARY KEY,
    cidade VARCHAR(100) NOT NULL,
    data DATE NOT NULL,
    hora TIME NOT NULL,
    id_temporada INT,
    FOREIGN KEY (id_temporada) REFERENCES Temporada(id_temporada)
);

CREATE TABLE Patrocinador (
    id_patrocinador INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE Equipe (
    id_equipe INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    id_patrocinador INT NULL,
    FOREIGN KEY (id_patrocinador) REFERENCES Patrocinador(id_patrocinador)
);

CREATE TABLE Piloto (
    id_piloto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    peso DECIMAL(4,1),
    nacionalidade VARCHAR(50),
    capitao ENUM('Sim', 'Não') NOT NULL,
    id_equipe INT,
    FOREIGN KEY (id_equipe) REFERENCES Equipe(id_equipe)
);

CREATE TABLE Participacao (
    id_piloto INT,
    id_etapa INT,
    PRIMARY KEY (id_piloto, id_etapa),
    FOREIGN KEY (id_piloto) REFERENCES Piloto(id_piloto),
    FOREIGN KEY (id_etapa) REFERENCES Etapa(id_etapa)
);

-- 3) INSERÇÃO DOS DADOS (GUIA DA TEMPORADA)

INSERT INTO Temporada (numero) VALUES (1);

INSERT INTO Etapa (cidade, data, hora, id_temporada) VALUES
('São Paulo', '2024-01-15', '14:00', 1),
('Rio de Janeiro', '2024-02-20', '16:00', 1),
('Campo Grande', '2024-03-18', '15:00', 1),
('Londrina', '2024-04-22', '13:00', 1),
('Porto Alegre', '2024-05-10', '10:00', 1);

INSERT INTO Patrocinador (nome) VALUES
('MotorTech Brasil'),
('Velocidade Extrema'),
('Alta Performance'),
('Turbo Racing'),
('Pneus ProDrive');

INSERT INTO Equipe (nome, id_patrocinador) VALUES
('Escuderia Veloz', 1),
('Rápidos & Furiosos', 2),
('Fênix Racing', 3),
('Equipe Tempestade', 4),
('Corredores de Aço', 5);

INSERT INTO Piloto (nome, peso, nacionalidade, capitao, id_equipe) VALUES
('Lucas Andrade', 70.5, 'Brasil', 'Sim', 1),
('Renato Figueiredo', 75.0, 'Brasil', 'Não', 1),
('Mateus Silva', 68.0, 'Brasil', 'Não', 2),
('Bruno Almeida', 78.3, 'Brasil', 'Sim', 2),
('Carla Pereira', 60.0, 'Portugal', 'Sim', 3),
('Gabriela Torres', 58.5, 'Brasil', 'Não', 3),
('João Costa', 80.5, 'Brasil', 'Não', 4),
('Thiago Santos', 72.5, 'Brasil', 'Não', 4),
('Mariana Gomes', 62.0, 'Portugal', 'Sim', 5),
('Beatriz Lopes', 63.2, 'Portugal', 'Sim', 5);

INSERT INTO Participacao VALUES
(1,1),(2,1),(3,1),(4,1),(5,1),
(6,1),(7,1),(8,1),(9,1),(10,1);

-- 4) ATUALIZAÇÃO DAS ETAPAS
SET SQL_SAFE_UPDATES = 0;

UPDATE Etapa
SET cidade = 'Salvador'
WHERE cidade = 'Campo Grande';

UPDATE Etapa
SET cidade = 'Goiânia'
WHERE cidade = 'Londrina';

-- 5) REMOÇÃO DO PATROCINADOR DA EQUIPE "Corredores de Aço"
UPDATE Equipe
SET id_patrocinador = NULL
WHERE nome = 'Corredores de Aço';

DELETE FROM Patrocinador
WHERE nome = 'Pneus ProDrive';

-- Reativa o modo de atualizações seguras para esta sessão
SET SQL_SAFE_UPDATES = 1;

-- 6) EXIBIÇÃO DOS DADOS DOS PILOTOS (Sim / Não)
SELECT 
    p.nome AS piloto,
    p.peso,
    p.nacionalidade,
    CASE 
        WHEN p.capitao = 'Sim' THEN 'Sim'
        ELSE 'Não'
    END AS capitao,
    e.nome AS equipe
FROM Piloto p
JOIN Equipe e ON p.id_equipe = e.id_equipe
ORDER BY p.nome ASC;
