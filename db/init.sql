USE database
-- Criação da tabela de equipes do laboratório de química.
CREATE TABLE IF NOT EXISTS equipes (
    id_equipe INT PRIMARY KEY AUTO_INCREMENT,
    projeto VARCHAR(255) NOT NULL,
    status VARCHAR(255)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin
AUTO_INCREMENT=1;

-- Inserção de alguns dados iniciais
INSERT INTO equipes (projeto, status)
VALUES ('Projeto 1 ', 'Finalizado');

INSERT INTO equipes (projeto, status)
VALUES ('Projeto 2 ', 'Em andamento');

INSERT INTO equipes (projeto, status)
VALUES ('Projeto 1 ', 'Não iniciado');
