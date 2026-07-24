/*
==========================================================
Objetivo: Verificar os campos da tabela `estoque_erp` considerando apenas produtos ativos no marketplace.

O que será levantado:
- Validar produtos com estoque disponível.
- Verificar produtos presentes na base produto e marketplace.
- Checar se os produtos estão recebendo atualização de estoque

Bases utilizadas:
- base_estoque_erp


Autor: 
Gabriel Paris

Data:
21/07/2026
==========================================================
*/
-- Identificar se a base possui estoque NULL
SELECT e.sku, e.estoque_erp
 FROM estoque e
 WHERE e.estoque_erp IS NULL

-- Verificar se algum item possui estoque no sistema interno e não está refletindo no marketplace 
 SELECT e.sku,
        e.estoque_erp,
        e.estoque_marketpl
 FROM estoque e
 WHERE e.estoque_marketpl IS NULL
 AND   e.estoque_erp > 0
 
 -- Validar se os produtos estão recebendo as atualizações de estoque

 SELECT   e.sku,
      e.ultima_atualizacao
 FROM estoque e
 WHERE e.ultima_atualizacao = ''
 OR e.ultima_atualizac IS NULL
