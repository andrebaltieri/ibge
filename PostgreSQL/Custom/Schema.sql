--TABLE ESTADO
CREATE TABLE IF NOT EXISTS uf
(
    id char(7) NOT NULL,
    description VARCHAR(60) NOT NULL,
    sigla CHAR(2) NOT NULL
);

ALTER TABLE uf ADD CONSTRAINT pk_uf PRIMARY KEY (id);


--TABLE CIDADE
CREATE TABLE IF NOT EXISTS city
(
   id char(7) NOT NULL,
   description integer NOT NULL
   iduf integer NOT NULL
);

ALTER TABLE city ADD CONSTRAINT pk_city PRIMARY KEY (id);

CREATE INDEX IF NOT EXISTS ix_city_id ON city USING btree (id);
CREATE INDEX IF NOT EXISTS ix_city_iduf ON city USING btree (iduf);

--TABELA IBGE
CREATE TABLE IF NOT EXISTS ibge
(
   id     char(7) NOT NULL,
   idcity integer NOT NULL
);

ALTER TABLE ibge ADD CONSTRAINT pk_ibge PRIMARY KEY (id);

CREATE INDEX IF NOT EXISTS ix_ibge_id ON ibge USING btree (id);
CREATE INDEX IF NOT EXISTS ix_ibge_idcity ON ibge USING btree (idcity);

