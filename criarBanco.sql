CREATE TABLE "Usuario" (
	"id"	INTEGER NOT NULL UNIQUE,
	"nome"	TEXT NOT NULL,
	"email"	TEXT NOT NULL,
	"senha"	TEXT NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT)
);




CREATE TABLE "Professor" (
	"idProfessor"	INTEGER NOT NULL UNIQUE,
	"departamento"	INTEGER NOT NULL,
	"idUsuario"	INTEGER NOT NULL,
	PRIMARY KEY("idProfessor","departamento"),
	FOREIGN KEY("idUsuario") REFERENCES "Usuario"("id")
);








CREATE TABLE "Coordenador" (
	"id"	INTEGER NOT NULL UNIQUE,
	"departamento"	TEXT NOT NULL,
	"idUsuario"	INTEGER NOT NULL,
	FOREIGN KEY("idUsuario") REFERENCES "Usuario"("id"),
	PRIMARY KEY("id","idUsuario")

);








CREATE TABLE "DetalhesSalario" (
	"id"	INTEGER NOT NULL UNIQUE,
	"salarioBase"	REAL NOT NULL,
	"beneficios"	REAL NOT NULL,
	"descontos"	REAL NOT NULL,
	"idProfessor"	INTEGER NOT NULL,
	PRIMARY KEY("id","idProfessor"),
	FOREIGN KEY("idProfessor") REFERENCES "Professor"("idProfessor")
);



CREATE TABLE "Holerite" (
	"id"	INTEGER NOT NULL UNIQUE,
	"idDetalhesSalario"	INTEGER NOT NULL,
	FOREIGN KEY("idDetalhesSalario") REFERENCES "DetalhesSalario"("id"),
	PRIMARY KEY("id" AUTOINCREMENT)
);


CREATE TABLE "FolhaDePagamento" (
	"idFolhaDePagamento"	INTEGER NOT NULL UNIQUE,
	"mes"	TEXT NOT NULL,
	"ano"	TEXT NOT NULL,
	PRIMARY KEY("idFolhaDePagamento" AUTOINCREMENT)
);


CREATE TABLE "FolhaDePagamento" (
	"id"	INTEGER NOT NULL UNIQUE,
	"mes"	TEXT NOT NULL,
	"ano"	TEXT NOT NULL,
	""	INTEGER,
	PRIMARY KEY("id" AUTOINCREMENT)
);




CREATE TABLE "Holerite" (
	"id"	INTEGER NOT NULL UNIQUE,
	"idDetalhesSalario"	INTEGER NOT NULL,
	"folhaDePagamento"	INTEGER NOT NULL,
	FOREIGN KEY("folhaDePagamento") REFERENCES "FolhaDePagamento"("id"),
	PRIMARY KEY("id" AUTOINCREMENT),
	FOREIGN KEY("idDetalhesSalario") REFERENCES "DetalhesSalario"("id")
);



CREATE TABLE "RelatorioPagamento" (
	"id"	INTEGER NOT NULL UNIQUE,
	"mes"	INTEGER NOT NULL,
	"ano"	INTEGER NOT NULL,
	"departamento"	TEXT NOT NULL,
	FOREIGN KEY("departamento") REFERENCES "FolhaDePagamento"("id"),
	PRIMARY KEY("id" AUTOINCREMENT)
);
