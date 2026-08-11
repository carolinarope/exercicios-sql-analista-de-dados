-- ==============================================================================
-- TICKET: Análise de Vendas com Agregação (GROUP BY e HAVING)
-- OBJETIVO: Extrair insights de uma tabela de vendas bruta usando agregações
-- ==============================================================================
USE mydb;

-- ------------------------------------------------------------------------------
-- 1. PREPARAÇÃO DO AMBIENTE (DDL e DML)
-- ------------------------------------------------------------------------------
CREATE TABLE vendas (
    id_venda INT PRIMARY KEY,
    produto VARCHAR(50),
    categoria VARCHAR(50),
    quantidade INT,
    preco_unitario DECIMAL(10,2),
    data_venda DATE
);

INSERT INTO vendas VALUES
(1, 'Notebook Pro', 'Eletrônicos', 1, 4500.00, '2026-08-01'),
(2, 'Mouse Sem Fio', 'Acessórios', 2, 150.00, '2026-08-01'),
(3, 'Teclado Mecânico', 'Acessórios', 1, 350.00, '2026-08-02'),
(4, 'Monitor 27"', 'Eletrônicos', 1, 1200.00, '2026-08-02'),
(5, 'Mouse Sem Fio', 'Acessórios', 5, 150.00, '2026-08-03'),
(6, 'Notebook Pro', 'Eletrônicos', 1, 4500.00, '2026-08-04'),
(7, 'Cabo HDMI', 'Acessórios', 3, 45.00, '2026-08-04'),
(8, 'Mouse Sem Fio', 'Acessórios', 1, 150.00, '2026-08-05'),
(9, 'Monitor 27"', 'Eletrônicos', 2, 1200.00, '2026-08-05'),
(10, 'Teclado Mecânico', 'Acessórios', 2, 350.00, '2026-08-06'),
(11, 'Cadeira Gamer', 'Móveis', 1, 1500.00, '2026-08-06'),
(12, 'Mouse Sem Fio', 'Acessórios', 1, 150.00, '2026-08-07'),
(13, 'Webcam HD', 'Eletrônicos', 1, 250.00, '2026-08-07'),
(14, 'Cabo HDMI', 'Acessórios', 5, 45.00, '2026-08-08'),
(15, 'Notebook Pro', 'Eletrônicos', 2, 4500.00, '2026-08-08'),
(16, 'Mesa de Escritório', 'Móveis', 1, 800.00, '2026-08-09'),
(17, 'Teclado Mecânico', 'Acessórios', 1, 350.00, '2026-08-09'),
(18, 'Cadeira Gamer', 'Móveis', 2, 1500.00, '2026-08-10'),
(19, 'Monitor 27"', 'Eletrônicos', 1, 1200.00, '2026-08-10'),
(20, 'Mouse Sem Fio', 'Acessórios', 3, 150.00, '2026-08-11'),
(21, 'Webcam HD', 'Eletrônicos', 2, 250.00, '2026-08-11'),
(22, 'Cabo HDMI', 'Acessórios', 2, 45.00, '2026-08-11'),
(23, 'Notebook Pro', 'Eletrônicos', 1, 4500.00, '2026-08-11'),
(24, 'Mesa de Escritório', 'Móveis', 1, 800.00, '2026-08-11'),
(25, 'Teclado Mecânico', 'Acessórios', 3, 350.00, '2026-08-11');

-- ------------------------------------------------------------------------------
-- 2. RESOLUÇÃO DO TICKET (QUERIES DE ANÁLISE)
-- ------------------------------------------------------------------------------

-- TAREFA 1: Quantos pedidos (COUNT) foram feitos por produto?

SELECT produto, COUNT(*) as total_pedidos
FROM vendas
GROUP BY produto
ORDER BY total_pedidos DESC;

-- TAREFA 2: Qual é a quantidade TOTAL vendida de cada produto?

SELECT produto, SUM(quantidade) AS qtd_vendas
FROM vendas
GROUP BY produto
ORDER BY qtd_vendas DESC;


-- TAREFA 3: Qual é o TICKET MÉDIO por produto?

SELECT produto, AVG(preco_unitario*quantidade) AS ticket_medio
FROM vendas 
GROUP BY produto
ORDER BY ticket_medio DESC;


-- TAREFA 4: Quais produtos foram vendidos em MAIS de 3 pedidos diferentes?

SELECT produto, COUNT(*) AS total_vendas
 FROM vendas
GROUP BY produto
HAVING COUNT(*) > 3
ORDER BY total_vendas DESC;


-- TAREFA 5: Qual produto teve a MAIOR venda individual em valor financeiro?

SELECT produto, MAX(preco_unitario*quantidade) AS maior_venda
FROM vendas
GROUP BY produto
ORDER BY maior_venda DESC;