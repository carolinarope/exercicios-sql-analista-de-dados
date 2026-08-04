-- ==============================================================================
-- TEMA: Auditoria de Catálogo de Produtos e Estoque
-- OBJETIVO: 6 Consultas práticas usando ORDER BY, LIMIT e DISTINCT
-- ==============================================================================

-- 1. Vitrine da Loja: Listar o nome_produto e o preco de todos os produtos, ordenando do mais barato para o mais caro.


SELECT nome_produto, preco FROM produtos
ORDER BY preco ASC;


-- 2. Produtos Premium: O time de vendas quer saber quais são os 5 produtos mais caros do catálogo (retorne id_produto, nome_produto, categoria, preco).


SELECT id_produto, nome_produto,categoria,preco FROM produtos
ORDER BY preco DESC
LIMIT 5;


-- 3. Mapeamento de Categorias: Descobrir quais são as categorias únicas de produtos que a loja vende (sem repetições).


SELECT DISTINCT categoria
 FROM produtos;


-- 4. Alerta de Estoque: Listar o nome_produto e a quantidade_estoque dos produtos que estão totalmente esgotados (estoque igual a zero).


SELECT nome_produto, quantidade_estoque FROM produtos
WHERE quantidade_estoque = 0;


-- 5. Faixa de Preço Específica: Buscar nome_produto, categoria e preco de produtos que custam entre 100.00 e 300.00.


SELECT nome_produto, categoria, preco FROM produtos
WHERE preco BETWEEN 100.00 AND 300.00;


-- 6. Limpeza de Catálogo: Listar o nome_produto, status_produto e categoria dos produtos da categoria 'Eletronicos' que estão com o status 'Inativo', ordenando tudo pelo nome do produto em ordem alfabética.


SELECT nome_produto, status_produto,categoria FROM produtos
WHERE categoria = 'Eletronicos' AND status_produto = 'Inativo'
ORDER BY nome_produto ASC;