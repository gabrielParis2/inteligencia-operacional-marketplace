/*Objetivo: recuperar oportunidades de venda, validar quais
produtos deveriam estar ativos nos marketplascrs, mas estão inativos
Regra de ativação: ter peso, dimensões e estoque cadastrados 
*/
WITH valida_ativacao AS (
SELECT  p.sku,
        p.nome_produto,
        p.estoque_erp,
        CASE
    WHEN    p.estoque_erp IS NOT NULL AND p.estoque_erp > 0 
        AND p.peso_kg IS NOT NULL AND p.peso_kg > 0 
        AND p.altura IS NOT NULL AND p.altura > 0 
        AND p.largura IS NOT NULL AND p.largura > 0
        AND p.comprimento IS NOT NULL AND p.comprimento > 0 
    THEN 'Apto'
ELSE 'Inapto'    
END AS status_validacao
FROM produtos p
)
SELECT  va.sku,
        va.nome_produto,
        va.status_validacao,
        m.status_anuncio
FROM valida_ativacao va
LEFT JOIN marketplace m ON va.sku = m.sku
WHERE m.status_anuncio <> 'Ativo' AND va.status_validacao = 'Apto'