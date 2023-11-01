USE scientialab;
SET NAMES utf8mb4;
-- Criação da tabela de equipes do laboratório de química.
CREATE TABLE IF NOT EXISTS equipes (
    id_equipe INT PRIMARY KEY AUTO_INCREMENT,
    projeto VARCHAR(255) NOT NULL,
    status VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS lab_technicians (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(15) NOT NULL,
    sobrenome VARCHAR(50) NOT NULL,
    data_nascimento DATE NOT NULL,
    telefone VARCHAR(11) NOT NULL,
    cpf VARCHAR(11) NOT NULL,
    genero VARCHAR(20) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    senha VARCHAR(100) NOT NULL,
    endereco VARCHAR(100) NOT NULL,
    cidade VARCHAR(50) NOT NULL,
    estado VARCHAR(50) NOT NULL,
    cep VARCHAR(8) NOT NULL,
    lab_id INT NOT NULL
);

INSERT INTO lab_technicians (nome, sobrenome, data_nascimento, telefone, cpf, genero, email, senha, endereco, cidade, estado, cep, lab_id)
VALUES
    ('Alice', 'Johnson', '1990-05-20', '5551234567', '55512345678', 'Female', 'alice.johnson@email.com', 'mypassword123', '789 Oak St', 'Villagetown', 'State', '98765432', 3),
    ('Bob', 'Williams', '1985-12-10', '7779876543', '77798765432', 'Male', 'bob.williams@email.com', 'securepass321', '456 Pine St', 'Treetown', 'State', '54321678', 4),
    ('Eva', 'Brown', '1982-08-30', '3335557777', '33355577776', 'Female', 'eva.brown@email.com', 'p@ssword789', '101 Willow St', 'Parkville', 'State', '11223344', 5),
    ('David', 'Lee', '1998-02-05', '9991113333', '99911133334', 'Male', 'david.lee@email.com', 'secretword999', '555 Birch St', 'Groveville', 'State', '99887766', 6),
    ('Sophia', 'Garcia', '1993-07-25', '2226668888', '22266688887', 'Female', 'sophia.garcia@email.com', 'p@ssw0rd11', '222 Cedar St', 'Riverdale', 'State', '77778888', 7);


-- Inserção de alguns dados iniciais
INSERT INTO equipes (projeto, status)
VALUES ('Projeto 1 ', 'Finalizado');

INSERT INTO equipes (projeto, status)
VALUES ('Projeto 2 ', 'Em andamento');

INSERT INTO equipes (projeto, status)
VALUES ('Projeto 1 ', 'Não iniciado');
