/*

Busca quais produtos possuem erros/incosistencias cadastrais que impedem ou prejudicam as vendas*

Validar:
* Peso inválido
* Dimensões inválidas
* Marca ausente
* Categoria ausente
* Nome ausente
*/

WITH cte_produtos_inconsistentes AS (
SELECT	p.sku,
  		p.marca,
  		p.nome_produto,
        p.categoria,
  		p.estoque_erp
FROM produtos p
WHERE
		p.marca IS NULL OR p.marca = ''
     OR p.nome_produto IS NULL OR p.nome_produto = ''
     OR p.categoria IS NULL OR p.categoria = ''
     OR p.peso_kg IS NULL OR p.peso_kg = 0
     OR p.comprimento IS NULL OR p.comprimento = 0
     OR p.largura IS NULL OR p.largura = 0
     OR p.altura IS NULL OR p.altura = 0 		
)
SELECT *
FROM cte_produtos_inconsistentes cpi 