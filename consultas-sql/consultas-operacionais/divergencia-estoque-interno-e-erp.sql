/*
> Objetivo: Validar se existem divergências entre o estoque do ERP e o estoque do Marketplace.
*/
SELECT  e.sku,
        e.estoque_erp,
        e.estoque_marketplace,
        (e.estoque_erp - e.estoque_marketplace) AS diferenca_estoques
FROM estoque e
WHERE (e.estoque_erp - e.estoque_marketplace) <> 0 AND e.estoque_erp < e.estoque_marketplace 
ORDER BY (e.estoque_erp - e.estoque_marketplace) DESC

/*
Optei por trazer outra validação de estoque onde há divergencia
não somente do que consta no erp, pois se há qualquer diferença no estoque deve ser validado
o motivo da divergência.
*/
SELECT  e.sku,
        e.estoque_erp,
        e.estoque_marketplace,
        ROUND(e.estoque_erp - e.estoque_marketplace) AS diferenca_estoques
FROM estoque e
WHERE (e.estoque_erp - e.estoque_marketplace) <> 0
ORDER BY (e.estoque_erp - e.estoque_marketplace) DESC