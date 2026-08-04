-- ==============================================================================
-- TEMA: Extração de Dados de Clientes para a Equipe de Marketing
-- OBJETIVO: 6 Consultas práticas usando SELECT, WHERE e LIKE
-- ==============================================================================

-- 1. O time de marketing precisa ver todos os dados brutos da tabela de clientes para entender a estrutura.
-- (Escreva a query abaixo)

SELECT * FROM clientes;


-- 2. Campanha de E-mail: Extrair apenas a coluna 'nome' e 'email' de todos os clientes.
-- (Escreva a query abaixo)

SELECT nome,email FROM clientes;


-- 3. Ação de Dia das Mães: Encontrar os clientes (id_cliente, nome, email) que tenham a palavra 'Maria' em qualquer parte do nome.
-- (Escreva a query abaixo)

SELECT id_cliente, nome, email FROM clientes
WHERE nome LIKE '%Maria%';


-- 4. Higienização da Base: Filtrar nome, telefone e status apenas dos clientes que estão com o status exatamente igual a 'Ativo'.
-- (Escreva a query abaixo)

SELECT nome, telefone, status FROM CLIENTES
WHERE status = 'Ativo';


-- 5. Foco Regional: Selecionar nome, cidade e estado de todos os clientes que moram no estado de 'MG'.
-- (Escreva a query abaixo)

SELECT nome,cidade,estado FROM clientes
WHERE estado = 'MG';


-- 6. Clientes Recentes: Buscar nome e data_cadastro dos clientes que se cadastraram no sistema a partir de 1º de Janeiro de 2026 (inclusive).
-- (Escreva a query abaixo)

SELECT nome, data_cadastro FROM clientes
WHERE data_cadastro >= '2026-01-01';