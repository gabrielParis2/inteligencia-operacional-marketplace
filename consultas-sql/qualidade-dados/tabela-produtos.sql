/*
==========================================================
Objetivo:
Validar a qualidade dos dados da tabela `produtos` antes da realização de consultas e geração de indicadores.
Com a finalidade de garantir que todas ass queries retornem resultados reais.  

O que será levantado:
- Campos obrigatórios devem estar preenchidos.
- Campos numéricos não devem conter valores inválidos.
- Produtos com inconsistências devem ser identificados para futura correção.


Bases utilizadas:
- base_produtos

Autor: 
Gabriel Paris

Data:
21/07/2026
==========================================================
*/

-- Validação de marca dos itens
SELECT p.sku, p.marca
FROM produtos p
WHERE p.marca IS NULL OR p.marca = ''


-- Categorização dos itens
SELECT p.sku, p.categoria
FROM produtos p
WHERE p.categoria = '' OR p.categoria IS NULL


-- Validação dos itens cadastrados se possuem o campo nome preenchido
SELECT p.sku, p.nome_produto
FROM produtos p
WHERE p.nome_produto ='' OR p.nome_produto IS NULL


-- Validação de peso para calculos de frete
SELECT p.sku, p.peso_kg
FROM produtos p
WHERE p.peso_kg IS NULL OR p.peso_kg ='' OR p.peso_kg = 0

-- Validação dos itens que não possuem algum dos eixos dimensionais considerados muito importantes para o tipo de negócio, por exemplo sem um dos eixo o frete não será cotado corretamente.
SELECT  p.sku,
        p.nome_produto,
        p.altura,
        p.comprimento,
        p.largura
FROM produtos p
WHERE   p.altura = 0 OR p.comprimento = 0 OR p.largura = 0 
OR
		p.altura = '' OR p.comprimento ='' OR p.largura ='' 
OR
        p.altura IS NULL OR p.comprimento IS NULL OR p.largura IS NULL
