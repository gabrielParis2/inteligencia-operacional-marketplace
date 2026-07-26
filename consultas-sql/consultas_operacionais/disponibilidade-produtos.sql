/*
>Objetivo: Visualizar o mix realmente disponível para venda levantando quais produtos
estão ativos e possuem estoque disponível
*/

SELECT  p.sku,
        p.nome_produto,
        m.status_anuncio,
        ROUND(p.estoque_erp,2) AS qtd_estoque
FROM produtos p
JOIN marketplace m 
ON m.sku = p.sku
WHERE p.estoque_erp > 0 AND m.status_anuncio = 'Ativo'
ORDER BY ROUND(p.estoque_erp,2) DESC