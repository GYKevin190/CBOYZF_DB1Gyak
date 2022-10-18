USE 6gyak2;
CREATE TABLE gyarto (adoszam INT PRIMARY KEY,nev VARCHAR(30) NOT NULL, varos VARCHAR(200));
CREATE TABLE termek (tkod INT PRIMARY KEY,nev VARCHAR(50) NOT NULL, ear INT CHECK (EAR > 0),kategória CHAR(10), gyarto INT REFERENCES GYARTO);
CREATE TABLE alkatresz (akod INT PRIMARY KEY,nev VARCHAR(50) NOT NULL);
CREATE TABLE egysegek (aru INT REFERENCES termek,db INT CHECK (db > 0)) ;
CREATE TABLE komponens (termek INT REFERENCES termek,alkatresz INT REFERENCES alkatresz);