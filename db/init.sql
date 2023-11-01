USE database
CREATE TABLE IF NOT EXISTS experimentos (
    id_experimentos INT PRIMARY KEY AUTO_INCREMENT,
    nome_do_experimento VARCHAR(255) NOT NULL,
    projeto VARCHAR(255),
    laboratorio VARCHAR(255),
    classificacao_de_risco VARCHAR(255),
    criacao DATE
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin
AUTO_INCREMENT=1;
-- Exemplo de inserção de dados iniciais
INSERT INTO experimentos (nome_do_experimento, projeto, laboratorio, classificacao_de_risco, criacao)
VALUES ('Reacoes Organicas', 'Projeto A', 'Laboratorio 1', 'Alto Risco', '2023-02-10');

INSERT INTO experimentos (nome_do_experimento, projeto, laboratorio, classificacao_de_risco, criacao)
VALUES ('Analise de Materiais', 'Projeto B', 'Laboratorio 2', 'Baixo Risco', '2023-03-15');

INSERT INTO experimentos (nome_do_experimento, projeto, laboratorio, classificacao_de_risco, criacao)
VALUES ('Teste de Toxicidade', 'Projeto C', 'Laboratorio 3', 'Medio Risco', '2023-04-20');