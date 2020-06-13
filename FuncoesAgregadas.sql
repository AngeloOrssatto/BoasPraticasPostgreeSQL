SELECT numero, nome, ativo FROM banco;
SELECT banco_numero, nome, numero FROM agencia;
SELECT * from banco;

SELECT column_name, data_type FROM information_schema.columns WHERE table_name = 'banco';


-- AVG = media dos valores
SELECT AVG (valor) FROM cliente_transacoes;

-- COUNT = contagem de dados
SELECT COUNT (numero), email FROM cliente WHERE email ILIKE '%gmail.com' GROUP BY email;
SELECT COUNT (id), tipo_transacao_id FROM cliente_transacoes GROUP BY tipo_transacao_id
	HAVING COUNT (id) > 200;

-- MAX = maior 
SELECT MAX (valor) FROM cliente_transacoes;
SELECT MAX (valor), tipo_transacao_id FROM cliente_transacoes GROUP BY tipo_transacao_id;

-- MIN = menos
SELECT MIN (valor) FROM cliente_transacoes;
SELECT MIN (valor), tipo_transacao_id FROM cliente_transacoes GROUP BY tipo_transacao_id;

-- SUM = somatoria
SELECT SUM (valor) FROM cliente_transacoes;
SELECT SUM (valor), tipo_transacao_id FROM cliente_transacoes GROUP BY tipo_transacao_id
	ORDER BY (tipo_transacao_id) DESC;

