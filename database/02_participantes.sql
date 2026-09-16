-- TABELA DE PARTICIPANTES
USE sistema_gestao;

CREATE TABLE IF NOT EXISTS participantes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idade INT NOT NULL,
    data_cadastro DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- VER A ESTRUTURA DA TABELA
DESCRIBE participantes;

-- INSERIR UM PARTICIPANTE 
INSERT INTO participantes (nome, idade)
VALUES ('Ana', 20);

-- CONSULTAR TODOS OS PARTICIPANTES
SELECT id, nome, idade, data_cadastro
FROM participantes;

-- CONSULTAR PARTICIPANTE PELO ID
SELECT id, nome, idade
FROM participantes
WHERE id = 1;

-- DESAFIO: INSERIR OUTRO PARTICIPANTE
INSERT INTO participantes (nome, idade)
VALUES ('Bruno', 16);

