CREATE TABLE IF NOT EXISTS ibge
(
   id     char(7) NOT NULL,
   state  char(2),
   city   varchar(80)
);

ALTER TABLE ibge ADD CONSTRAINT pk_ibge PRIMARY KEY (id);

CREATE INDEX IF NOT EXISTS ix_ibge_id ON ibge USING btree (id);
CREATE INDEX IF NOT EXISTS ix_ibge_city ON ibge USING btree (city);
CREATE INDEX IF NOT EXISTS ix_ibge_state ON ibge USING btree (state);