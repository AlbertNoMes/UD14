DROP DATABASE IF EXISTS UD14_6;

CREATE DATABASE UD14_6;

USE UD14_6;

DROP TABLE IF EXISTS `peliculas`;

CREATE TABLE peliculas (
codigo int primary key auto_increment,
nombre nvarchar(100),
CalificacionEdad int
);

DROP TABLE IF EXISTS `salas`;

CREATE TABLE salas (
codigo int primary key auto_increment,
nombre nvarchar(100),
codigo_peli int,
CONSTRAINT FK_peliculas FOREIGN KEY (codigo_peli) REFERENCES peliculas(codigo)
);