DROP DATABASE IF EXISTS UD14_3;

CREATE DATABASE UD14_3;

USE UD14_3;

DROP TABLE IF EXISTS `fabricantes`;

CREATE TABLE fabricantes (
codigo int primary key auto_increment,
nombre nvarchar(100)
);

DROP TABLE IF EXISTS `articulos`;

CREATE TABLE articulos (
codigo int primary key auto_increment,
nombre nvarchar(100),
precio int,
codigo_fk int,
CONSTRAINT FK_fabricantes FOREIGN KEY (codigo_fk) REFERENCES fabricantes (codigo)
);