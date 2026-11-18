-- ANÁLISE DE QUALIDADE DOS DADOS DE PARTICIPANTES
USE sistema_gestao;

-- CONSULTAR NOMES DISTINTOS
SELECT DISTINCT
    nome
FROM participantes
ORDER BY
    nome ASC;

-- CONTAR REGISTROS AGRUPADOS POR NOME
SELECT
    nome,
    COUNT(*) AS quantidade
FROM participantes
GROUP BY
    nome
ORDER BY
    nome ASC;

-- LOCALIZAR NOMES COM MAIS DE UMA OCORRÊNCIA
SELECT
    nome,
    COUNT(*) AS quantidade
FROM participantes
GROUP BY
    nome
HAVING
    COUNT(*) > 1;

-- LOCALIZAR POSSÍVEIS DUPLICIDADES POR NOME E IDADE
SELECT
    nome,
    idade,
    COUNT(*) AS quantidade
FROM participantes
GROUP BY
    nome,
    idade
HAVING
    COUNT(*) > 1;