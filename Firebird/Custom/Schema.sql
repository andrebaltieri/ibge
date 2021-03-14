
SET SQL DIALECT 3;

SET NAMES NONE;

SET CLIENTLIB 'C:\Program Files (x86)\Firebird\Firebird_2_5\bin\fbclient.dll';

CREATE DATABASE '127.0.0.1:C:\Users\Marco Polo\AppData\Roaming\HK-Software\IBExpert\ibge\ibge.fdb'
USER 'SYSDBA' PASSWORD 'masterkey'
PAGE_SIZE 16384
DEFAULT CHARACTER SET NONE COLLATION NONE;



/******************************************************************************/
/***                                 Tables                                 ***/
/******************************************************************************/



CREATE TABLE IBGE (
    ID     CHAR(7) NOT NULL,
    STATE  CHAR(2),
    CITY   VARCHAR(80)
);




/******************************************************************************/
/***                              Primary Keys                              ***/
/******************************************************************************/

ALTER TABLE IBGE ADD CONSTRAINT PK_IBGE PRIMARY KEY (ID);


/******************************************************************************/
/***                                Indices                                 ***/
/******************************************************************************/

CREATE INDEX IX_IBGE_CITY ON IBGE (CITY);
CREATE INDEX IX_IBGE_ID ON IBGE (ID);
CREATE INDEX IX_IBGE_STATE ON IBGE (STATE);
