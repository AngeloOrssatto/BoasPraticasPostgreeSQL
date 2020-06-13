-- Databases
CREATE DATABASE nomeBD -- options: OWNER, TEMPLATE, ENCODING, LC_COLLATE, TABLESPACE, ALLOW_CONNECTIONS, CONNECTION_LIMIT
ALTER DATABASE nomeBD RENAME TO novoNomeDB -- pode alterar as options tambem
DROP DATABASE novoNomeDB

CREATE SCHEMA nomeSchema -- pode ter options
ALTER SCHEMA nomeSchema RENAME TO novoNomeSchema -- pode alterar as options
DROP SCHEMA novoNomeSchema

CREATE TABLE nomeTabela
ALTER TABLE nomeTabela RENAME TO novoNomeTabela
DROP TABLE novoNomeTabela

-- dica de boa pratica
CREATE SCHEMA IF NOT EXISTS nomeSchemaSeNaoExistir
DROP SCHEMA IF EXISTS nomeSchemaSeExiste