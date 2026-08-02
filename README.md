# Inteligência Operacional para Marketplace

Projeto está sendo desenvolvido com o objetivo de transformar regras de negócio em análises operacionais para apoiar Analistas e Assistentes de Marketplace nas tarefeas diárias.

A proposta do projeto é simular situações reais encontradas na operação de um e-commerce, desenvolvendo consultas SQL capazes de identificar inconsistências cadastrais, divergências operacionais e oportunidades de venda. Como resultado final, essas análises se tornarão um Dashboard Operacional desenvolvido no Power BI para melhor visualização das demandas que poderão ser observadas no dash.

---

# Objetivo

Construir uma solução de Business Intelligence voltada para a operação de Marketplace, permitindo identificar rapidamente problemas que impactam a publicação, logística e disponibilidade de produtos nos canais de venda.

O projeto busca responder perguntas como:

* Quais produtos deveriam estar ativos, mas estão inativos?
* Existem divergências entre o estoque do ERP e o Marketplace?
* Quais produtos possuem inconsistências cadastrais?
* Existem anúncios órfãos (SKUs inexistentes no ERP)?
* Quais produtos atendem às regras logísticas dos marketplaces?

---

# Tecnologias Utilizadas

* SQL
* SQLite
* Power BI
* Git
* GitHub

---

# Base de Dados

O projeto utiliza uma base fictícia feita exclusivamente para fins de estudo.

Principais tabelas:

* Produtos
* Marketplace
* Estoque

---

# Regras de Negócio Implementadas

Atualmente o projeto contempla consultas responsáveis por validar:

### Cadastro

* Produtos sem marca
* Produtos sem categoria
* Produtos sem nome
* Peso inválido
* Dimensões inválidas

### Estoque

* Divergência entre ERP e Marketplace
* Estoque inexistente
* Produtos com atualização pendente

### Marketplace

* Produtos que deveriam estar ativos
* Produtos com status inconsistente
* Anúncios órfãos (SKUs inexistentes no ERP)

---

# Objetivo do Dashboard Operacional (V1)

A primeira versão do Dashboard terá foco exclusivamente na operação.

O objetivo é permitir que o responsavel identifique rapidamente quais produtos precisam de ação.

Algumas visões previstas:

* Produtos com inconsistências cadastrais
* Produtos aptos para ativação
* Divergências de estoque
* Produtos elegíveis para logística dos marketplaces
* Indicadores operacionais

---

# Evolução Técnica

Durante o desenvolvimento do projeto foram aplicados conceitos como:

* SELECT
* WHERE
* CASE WHEN
* GROUP BY
* HAVING
* INNER JOIN
* LEFT JOIN
* CTE

Cada consulta encontra-se documentada para explicar sua finalidade e a regra de negócio aplicada.

---

# Próximos Passos

* Finalizar Dashboard Operacional (V1)
* Implementar regras logísticas por Marketplace
* Criar Dashboard Gerencial (V2)
* Automatizar atualização das bases utilizando Python
* Publicar vídeo demonstrando a solução completa

---

# Objetivo de Estudo

Este projeto faz parte da minha preparação para atuar com Analises de Dados.

Mais do que praticar SQL, o objetivo é desenvolver a capacidade de transformar problemas reais de negócio em soluções orientadas por dados.
