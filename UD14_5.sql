DROP DATABASE IF EXISTS UD14_5;

CREATE DATABASE UD14_5;

USE UD14_5;

DROP TABLE IF EXISTS `almacenes`;

create table almacenes (
Codigo int primary key,
Lugar nvarchar(100),
Capacidad int
);

DROP TABLE IF EXISTS `cajas`;

create table cajas(
NumReferencia char(5) primary key,
contenido nvarchar(100),
valor int,
almacen int,
Constraint FK_almacen foreign Key(almacen) references almacenes(Codigo)
);