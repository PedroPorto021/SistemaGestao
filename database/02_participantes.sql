-- TABELA DE PARTICIPANTES
USE sistema_gestao;

CREATE TABLE
    IF NOT EXISTS participantes (
        id INT AUTO_INCREMENT PRIMARY KEY,
        nome VARCHAR(100) NOT NULL,
        idade INT NOT NULL,
        data_cadastro DATETIME DEFAULT CURRENT_TIMESTAMP
    );

-- VER A ESTRUTURA DA TABELA
DESCRIBE participantes;

-- INSERIR ANA
INSERT INTO
    participantes (nome, idade)
VALUES
    ('Ana', 20);

-- CONSULTAR TODOS OS PARTICIPANTES
SELECT
    id,
    nome,
    idade,
    data_cadastro
FROM
    participantes;

-- CONSULTAR PARTICIPANTE PELO ID
SELECT
    id,
    nome,
    idade
FROM
    participantes
WHERE
    id = 1;

-- INSERIR BRUNO
INSERT INTO
    participantes (nome, idade)
VALUES
    ('Bruno', 16);

-- CONSULTAR COM APELIDOS NAS COLUNAS
SELECT
    nome AS participante,
    idade AS idade_em_anos
FROM
    participantes;

-- ORDENAR DO MAIS VELHO PARA O MAIS NOVO
SELECT
    id,
    nome,
    idade
FROM
    participantes
ORDER BY
    idade DESC,
    id ASC;

-- CONSULTAR PARTICIPANTES MAIORES DE IDADE
SELECT
    id,
    nome,
    idade
FROM
    participantes
WHERE
    idade >= 18
ORDER BY
    nome ASC;

-- CONSULTAR PARTICIPANTES MENORES DE IDADE
SELECT
    id,
    nome,
    idade
FROM
    participantes
WHERE
    idade < 18
ORDER BY
    nome ASC;

-- CLASSIFICAR PARTICIPANTES PELA IDADE
SELECT
    id,
    nome,
    idade,
    CASE
        WHEN idade >= 18 THEN 'Aprovado'
        ELSE 'Não aprovado'
    END AS situacao
FROM
    participantes
ORDER BY
    id ASC;

-- CONTAR TODOS OS PARTICIPANTES
SELECT
    COUNT(*) AS total_participantes
FROM
    participantes;

-- CONTAR PARTICIPANTES MAIORES DE IDADE
SELECT
    COUNT(*) AS total_maiores_de_idade
FROM
    participantes
WHERE
    idade >= 18;

-- CONTAR PARTICIPANTES MENORES DE IDADE
SELECT
    COUNT(*) AS total_menores_de_idade
FROM
    participantes
WHERE
    idade < 18;

    