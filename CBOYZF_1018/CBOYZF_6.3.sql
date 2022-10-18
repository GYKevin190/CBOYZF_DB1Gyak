USE 6gyak3;
CREATE TABLE Tanfolyam(tkod int PRIMARY KEY, ar integer, tipus varchar(30), megnevezes varchar(30));
CREATE TABLE Résztvevő(tajszám int PRIMARY KEY, név varchar(20), lakcim varchar(40));
CREATE TABLE Részvétel(tanKod int, reszKod int, befizetés int(10), foreign key(tanKod) references Tanfolyam(tkod), foreign key(reszKod) references Résztvevő(tajszám));
