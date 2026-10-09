# Consultas Relacionais — TDS Cloud Gaming

Atividade acadêmica desenvolvida para praticar consultas SQL em um banco de dados relacional que representa uma plataforma de jogos.

O exercício utiliza tabelas relacionadas para representar usuários, desenvolvedoras, jogos, categorias e a biblioteca de jogos dos usuários.

## Estrutura do banco

O script cria o banco `PlataformaJogos` e as seguintes tabelas:

- `Usuario`: dados dos usuários e data de cadastro.
- `Desenvolvedora`: nome, país e ano de fundação dos estúdios.
- `Jogo`: títulos, datas de lançamento, preços e desenvolvedoras.
- `Categoria`: gêneros de jogos.
- `JogoCategoria`: relacionamento muitos-para-muitos entre jogos e categorias.
- `Biblioteca`: relacionamento muitos-para-muitos entre usuários e jogos, com data de aquisição.

## Consultas praticadas

O script contém dez consultas para:

1. Filtrar usuários cadastrados após uma data.
2. Encontrar jogos acima de determinado preço.
3. Consultar desenvolvedoras fundadas após o ano 2000.
4. Listar jogos de uma desenvolvedora específica.
5. Calcular o preço médio dos jogos.
6. Calcular o total dos preços dos jogos associados à biblioteca de Carlos Silva.
7. Encontrar o jogo mais caro de uma desenvolvedora.
8. Listar jogos de uma categoria.
9. Listar usuários e seus jogos usando `LEFT JOIN`.
10. Contar jogos desenvolvidos por estúdios dos EUA.

## Conceitos praticados

- `SELECT`, `WHERE` e `ORDER BY`.
- `JOIN` e `LEFT JOIN`.
- Relacionamentos entre tabelas.
- `SUM`, `AVG` e `COUNT`.
- `GROUP BY` e `LIMIT`.
- Chaves primárias e estrangeiras.
- Modelagem de relacionamentos muitos-para-muitos.

## Como executar

1. Abra `tds-cloud-gaming.sql` no MySQL Workbench.
2. Execute-o em um ambiente de teste apropriado, sem as tabelas dessa atividade já existentes.
3. Confira os resultados das consultas ao final do script.

O conjunto de dados e as senhas de exemplo são fictícios, destinados somente à atividade. A estrutura não representa um sistema de autenticação pronto para produção.

## Objetivo de aprendizagem

Praticar consultas relacionais e agregações, compreendendo como os relacionamentos entre tabelas permitem obter informações a partir de diferentes partes do banco.

Projeto acadêmico desenvolvido para fins de estudo.