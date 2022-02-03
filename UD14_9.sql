DROP DATABASE IF EXISTS UD14_9;

CREATE DATABASE UD14_9;

USE UD14_9;

DROP TABLE IF EXISTS `cientificos`;

CREATE TABLE cientificos (
DNI varchar(8) primary key,
nombreApels nvarchar(255)
);

DROP TABLE IF EXISTS `proyecto`;

CREATE TABLE proyecto (
id char(4) primary key,
nombre nvarchar(255),
horas int
);

DROP TABLE IF EXISTS `asignado_a`;

CREATE TABLE asignado_a (
dni varchar(8),
id char(4),
CONSTRAINT FK_cientificos FOREIGN KEY (dni) REFERENCES cientificos(dni),
CONSTRAINT FK_proyecto FOREIGN KEY (id) REFERENCES proyecto(id)
);