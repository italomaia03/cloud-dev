-- Crie a tabela de equipamentos de laboratório de química
CREATE TABLE equipamentos (
    id_quipamento INT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao TEXT,
    manufatura VARCHAR(255),
    modelo VARCHAR(255),
    data_aquisicao  DATE,
    preco DECIMAL(10, 2),
    local VARCHAR(255)
);

-- Insira alguns dados iniciais
INSERT INTO equipamentos (nome, descricao, manufatura, modelo, data_aquisicao, preco, local)
VALUES ('Espectrofotômetro', 'Espectrofotômetro UV-Vis para análise de soluções', 'Thermo Fisher', 'NanoDrop 2000', '2023-01-15', 3500.00, 'Laboratório 1');

INSERT INTO equipamentos (nome, descricao, manufatura, modelo, data_aquisicao, preco, local)
VALUES ('Cromatógrafo Líquido', 'Cromatógrafo líquido de alta performance', 'Agilent Technologies', '1260 Infinity II', '2022-06-30', 7500.00, 'Laboratório 2');

INSERT INTO equipamentos (nome, descricao, manufatura, modelo, data_aquisicao, preco, local)
VALUES ('Balança Analítica', 'Balança analítica com precisão de 0,001 g', 'Mettler Toledo', 'ME204E', '2022-03-10', 1200.00, 'Laboratório 1');
