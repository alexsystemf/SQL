CREATE TABLE IF NOT EXISTS PELATES   (
 KWDIKOS_PELATH VARCHAR(20) NOT NULL,
 AFM_PELATH INTEGER NOT NULL,
 ONOMA VARCHAR(20) NOT NULL,
 EPWNUMO VARCHAR(20) NOT NULL,
 FULO VARCHAR(20) NOT NULL,
 HMMEROMHNIA_GENNHSHS DATE NOT NULL,
 DIEUTHUNSH VARCHAR(20) NOT NULL,
 THLEFWNO INTEGER NOT NULL,
 PRIMARY KEY (KWDIKOS_PELATH)
 );
 
 CREATE TABLE IF NOT EXISTS YPALLHLOI (
 KWDIKOS_YPALLHLOY INTEGER NOT NULL,
 ONOMA VARCHAR(20) NOT NULL,
 EPWNUMO VARCHAR(20) NOT NULL,
 EIDIKOTHTA VARCHAR(20) NOT NULL,
 DIEUTHYNSH VARCHAR(20) NOT NULL,
 THLEFWNO INTEGER NOT NULL ,
 PRIMARY KEY (KWDIKOS_YPALLHLOY)
 
 );
 CREATE TABLE IF NOT EXISTS DWMATIA (
 ARITHMOS_DWMATIOY INTEGER NOT NULL,
 XWRHTIKOTHTA_DWMATIOY INTEGER NOT NULL,
 KATHGORIA_DWMATIOY INTEGER NOT NULL,
 PRIMARY KEY ( ARITHMOS_DWMATIOY)
 
 
 );
 CREATE TABLE IF NOT EXISTS DIAMONH (
 KWDIKOS_DIAMONHS INTEGER NOT NULL,
 ARITHMOS_DWMATIOY INTEGER NOT NULL,
 HMEROMHNIA_ENAR3HS DATE NOT NULL,
 HMEROMHNIA_LH3HS DATE NOT NULL,
 A3IA_DIAMONHS FLOAT NOT NULL,
 
 FOREIGN KEY (ARITHMOS_DWMATIOY) REFERENCES DWMATIA ON DELETE CASCADE ON UPDATE CASCADE,
 PRIMARY KEY (KWDIKOS_DIAMONHS)
 );
 
 CREATE TABLE IF NOT EXISTS PELATES_DIAMONHS(
 KWDIKOS_DIAMONHS INTEGER NOT NULL,
 KWDIKOS_PELATH INTEGER NOT NULL,
 
 FOREIGN KEY(KWDIKOS_DIAMONHS) REFERENCES DIAMONH ON DELETE CASCADE ON UPDATE CASCADE,
 FOREIGN KEY(KWDIKOS_PELATH) REFERENCES PELATES ON DELETE CASCADE ON UPDATE CASCADE
 );
 
 CREATE TABLE IF NOT EXISTS XREWSEIS_PELATWN (
 KWDIKOS_PELATH INTEGER NOT NULL,
 KWDIKOS_PROIONTOS INTEGER NOT NULL,
 HMEROMHNIA_XREWSHS DATE NOT NULL,
 KWDIKOS_YPALLHLOY INTEGER NOT NULL,
 POSOTHTA FLOAT NOT NULL,
 
 FOREIGN KEY (KWDIKOS_PELATH) REFERENCES PELATES ON DELETE CASCADE ON UPDATE CASCADE ,
 FOREIGN KEY (KWDIKOS_PROIONTOS) REFERENCES PROIONTA ON DELETE CASCADE ON UPDATE CASCADE,
 FOREIGN KEY (KWDIKOS_YPALLHLOY) REFERENCES YPALLHLOI ON DELETE CASCADE ON UPDATE CASCADE
);
