DROP DATABASE IF EXISTS UD14_2;

CREATE DATABASE UD14_2;

USE UD14_2;

DROP TABLE IF EXISTS `editorial`;

CREATE TABLE editorial(
ClaveEditorial smallint primary key,
Nombre varchar(60),
Direccion varchar(60),
Telefono varchar(15)
);

DROP TABLE IF EXISTS `libro`;

CREATE TABLE libro(
Clavelibro int primary key,
Titulo varchar(60),
Idioma varchar(15),
Formato varchar(15),
ClaveEditorial smallint,
Constraint FK_Editorial foreign Key (ClaveEditorial) references editorial(ClaveEditorial)
);

DROP TABLE IF EXISTS `tema`;

CREATE TABLE tema(
ClaveTema smallint primary key,
Nombre varchar(40)
);

DROP TABLE IF EXISTS `autor`;

CREATE TABLE Autor (
ClaveAutor int primary key,
Nombre varchar(60)
);

DROP TABLE IF EXISTS `ejemplar`;

CREATE TABLE ejemplar(
ClaveEjemplar int primary key,
Clavelibro int,
NumeroOrden smallint,
Edicion smallint,
Ubicacion varchar(15),
Categoria char,
Constraint FK_Ejemplar foreign Key (Clavelibro) references libro(Clavelibro)
);

DROP TABLE IF EXISTS `socio`;

CREATE TABLE socio(
ClaveSocio int primary key,
Nombre varchar(60),
Direccion varchar(60),
Telefono varchar(15),
Categoria char
);

DROP TABLE IF EXISTS `prestamo`;

CREATE TABLE prestamo(
ClaveSocio int,
ClaveEjemplar int,
NumeroOrden smallint,
Fecha_prestamo date,
Fecha_devolucion date,
notas blob,
Constraint FK_Socio foreign Key (ClaveSocio) references socio(ClaveSocio),
Constraint FK_Ejemplar2 foreign Key (ClaveEjemplar) references ejemplar(ClaveEjemplar)
);

DROP TABLE IF EXISTS `trata_sobre`;

CREATE TABLE trata_sobre(
Clavelibro int,
ClaveTema smallint,
Constraint FK_Libro Foreign Key(Clavelibro) references libro(Clavelibro),
Constraint FK_ClaveTema Foreign Key(ClaveTema) references tema(ClaveTema)
);

DROP TABLE IF EXISTS `escrito_por`;

CREATE TABLE escrito_por(
Clavelibro int,
ClaveAutor int,
Constraint FK_Libro2 Foreign Key(Clavelibro) references libro(Clavelibro),
Constraint FK_Autor Foreign Key(ClaveAutor) references autor(ClaveAutor)
);