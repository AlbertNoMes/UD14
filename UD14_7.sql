DROP DATABASE IF EXISTS UD14_7;

CREATE DATABASE UD14_7;

USE UD14_7;

DROP TABLE IF EXISTS `despachos`;

CREATE TABLE despachos (
numero int primary key auto_increment,
capacidad int
);

DROP TABLE IF EXISTS `directores`;

CREATE TABLE directores (
DNI varchar(8) primary key,
nomApels nvarchar(255),
DNIJefe varchar(8),
despacho int,
constraint DNIJefe foreign key (DNIJefe) references directores(DNI),
constraint despacho foreign key (despacho) references despachos(numero)
);