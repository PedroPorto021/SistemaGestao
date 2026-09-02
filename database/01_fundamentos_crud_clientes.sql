-- 1. CRIAR O BANCO
CREATE DATABASE IF NOT EXISTS sistema_gestao;

-- 2. SELECIONAR O BANCO
USE sistema_gestao;


-- 3. CRIAR A TABELA
CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(150),
    telefone VARCHAR(20),
    data_cadastro DATETIME DEFAULT CURRENT_TIMESTAMP
);


-- 4. VER A ESTRUTURA DA TABELA
DESCRIBE clientes;


-- 5. INSERIR UM CLIENTE
INSERT INTO clientes (nome, email, telefone)
VALUES ('Pedro', 'pedro@email.com', '21999999999');


-- 6. INSERIR VÁRIOS CLIENTES
INSERT INTO clientes (nome, email, telefone)
VALUES
    ('Ana', 'ana@email.com', '21988888888'),
    ('Carlos', 'carlos@email.com', '21977777777'),
    ('Mariana', 'mariana@email.com', '21966666666');


-- 7. CONSULTAR TODOS OS CLIENTES
SELECT *
FROM clientes;


-- 8. ATUALIZAR UM CLIENTE
UPDATE clientes
SET telefone = '21955555555'
WHERE id = 2;


-- 9. CONFERIR A ALTERAÇÃO
SELECT *
FROM clientes
WHERE id = 2;

-- 10. EXCLUIR UM CLIENTE
DELETE FROM clientes
WHERE id = 4;


SELECT *
FROM clientes;


-- 11. FILTRAR CLIENTE PELO NOME
SELECT *
FROM clientes
WHERE nome = 'Ana';


-- 12. FILTRAR PARTE DE UM TEXTO
SELECT *
FROM clientes
WHERE nome LIKE 'A%';

-- 13. USAR MAIS DE UMA CONDIÇÃO
SELECT *
FROM clientes
WHERE nome = 'Ana'
AND id = 2;

-- 14. USAR UMA CONDIÇÃO OU OUTRA
SELECT *
FROM clientes
WHERE nome = 'Ana'
OR nome = 'Carlos';

-- 15. CONSULTAR CLIENTE PELO ID
SELECT id, nome, email
FROM clientes
WHERE id = 1;
