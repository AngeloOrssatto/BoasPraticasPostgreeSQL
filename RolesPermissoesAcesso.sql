-- Cria a role com opçoes 
CREATE ROLE professores NOCREATEDB NOCREATEROLE INHERIT NOLOGIN NOBYPASSRLS CONNECTION LIMIT 10
-- Edita a role
ALTER ROLE professores CONNECTION LIMIT 100
-- Cria a role e adiciona ela a outra role
CREATE ROLE angelo NOCREATEDB NOCREATEROLE INHERIT NOLOGIN NOBYPASSRLS CONNECTION LIMIT 1 IN ROLE professores
-- Desassocia a role
REVOKE professores FROM angelo 

CREATE TABLE teste (nome varchar)

-- Dando todos os privilegios possiveis da tabela teste para a role professores
GRANT ALL ON TABLE teste TO professores

-- Retira privilegios da role
REVOKE ALL ON TABLE teste FROM professores

-- Exclui a role
DROP ROLE professores
DROP ROLE angelo

DROP TABLE teste

