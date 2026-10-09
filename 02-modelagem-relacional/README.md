# Modelagem Relacional — Sistema de Corridas de Kart

Atividade acadêmica desenvolvida para praticar a criação e a manipulação de um banco de dados relacional a partir do guia de uma temporada de corridas de kart.

O banco organiza informações sobre temporada, etapas, equipes, patrocinadores, pilotos e participação nas etapas.

## Estrutura do banco

O script cria o banco `KartCorridas` e as seguintes tabelas:

- `Temporada`: identifica a temporada.
- `Etapa`: armazena cidade, data, horário e temporada relacionada.
- `Patrocinador`: registra os patrocinadores.
- `Equipe`: relaciona equipes aos seus patrocinadores.
- `Piloto`: armazena nome, peso, nacionalidade, indicação de capitão e equipe.
- `Participacao`: relaciona pilotos e etapas por meio de uma chave primária composta.

## Operações praticadas

- Criação de banco e tabelas.
- Definição de chaves primárias e estrangeiras.
- Inserção de registros.
- Atualização de cidades das etapas.
- Desvinculação e exclusão de um patrocinador.
- Consulta dos dados dos pilotos, incluindo equipe e indicação de capitão.

Na atividade, Campo Grande é substituída por Salvador e Londrina por Goiânia. O patrocinador Pneus ProDrive é removido após a equipe Corredores de Aço deixar de referenciá-lo.

## Arquivos

- [`kart-corridas.sql`](kart-corridas.sql): script de criação, inserção, atualização, exclusão e consulta.
- [`diagrama de banco de dados (.mwb)`](diagramas/kart-corridas.mwb): arquivo do modelo que pode ser aberto no MySQL Workbench.

O arquivo `.mwb` é o modelo original do Workbench; para visualizar o diagrama diretamente no navegador, pode ser necessário exportá-lo como imagem.

## Como executar

1. Abra `kart-corridas.sql` no MySQL Workbench.
2. Utilize um ambiente de teste sem as tabelas dessa atividade já criadas.
3. Execute o script e confira as mensagens de execução.
4. Verifique as etapas atualizadas, o patrocinador removido e o resultado da consulta final dos pilotos.

O script altera e exclui registros de exemplo. Execute-o somente em um banco de teste adequado.

## Objetivo de aprendizagem

Praticar modelagem relacional, integridade referencial e comandos SQL de definição, inserção, atualização, exclusão e consulta de dados.

Projeto acadêmico desenvolvido para fins de estudo.