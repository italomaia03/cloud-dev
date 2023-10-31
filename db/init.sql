-- Crie a tabela de equipamentos de laboratório de química
CREATE TABLE equipes (
    id_equipe INT PRIMARY KEY,
    projeto VARCHAR(255) NOT NULL,
    status VARCHAR(255)
);

-- Insira alguns dados iniciais
INSERT INTO equipes (id_equipe, projeto, status)
VALUES (1010, 'Projeto 1 ', 'Finalizado');
