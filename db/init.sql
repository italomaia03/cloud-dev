-- Criação da tabela de equipes do laboratório de química.
CREATE TABLE equipes (
    id_equipe INT PRIMARY KEY,
    projeto VARCHAR(255) NOT NULL,
    status VARCHAR(255)
);

-- Inserção de alguns dados iniciais
INSERT INTO equipes (id_equipe, projeto, status)
VALUES (1010, 'Projeto 1 ', 'Finalizado');

INSERT INTO equipes (id_equipe, projeto, status)
VALUES (1020, 'Projeto 2 ', 'Em andamento');

INSERT INTO equipes (id_equipe, projeto, status)
VALUES (1030, 'Projeto 1 ', 'Não iniciado');
