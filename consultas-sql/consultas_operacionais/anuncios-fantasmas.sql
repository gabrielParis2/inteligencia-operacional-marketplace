/*
> Objetivo: Identificar anúncios fantasmas, se existem SKUs cadastrados no Marketplace
que não existem mais no sistema interno.
*/
SELECT  p.sku,
        m.sku,
        p.nome_produto
FROM marketplace m
LEFT JOIN produtos p ON p.sku = m.sku