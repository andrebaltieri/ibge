PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: ibge
DROP TABLE IF EXISTS ibge;
CREATE TABLE ibge (id CHAR (7) PRIMARY KEY ASC NOT NULL, state CHAR (2) NOT NULL, city VARCHAR (80) NOT NULL);

-- Index: IX_IBGE_City
DROP INDEX IF EXISTS IX_IBGE_City;
CREATE INDEX IX_IBGE_City ON ibge (city ASC);

-- Index: IX_IBGE_State
DROP INDEX IF EXISTS IX_IBGE_State;
CREATE INDEX IX_IBGE_State ON ibge (state ASC);

-- Index: IX_IBGE_Id
DROP INDEX IF EXISTS IX_IBGE_Id;
CREATE INDEX IX_IBGE_Id ON ibge (id ASC);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;