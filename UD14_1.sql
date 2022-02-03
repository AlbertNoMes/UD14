DROP DATABASE IF EXISTS UD14_1;

CREATE DATABASE UD14_1;

USE UD14_1;

DROP TABLE IF EXISTS `estacion`;

CREATE TABLE if not exists estacion (
ID int primary key AUTO_INCREMENT,
latitud int,
longitud int,
altitud int
);

DROP TABLE IF EXISTS `muestra`;

CREATE TABLE if not exists muestra (
IDestacion int primary key AUTO_INCREMENT,
fecha date,
temperatura_min int,
temperatura_max int,
precipitaciones int,
humedad_min int,
humedad_max int,
vel_viento_min int,
vel_viento_max int
);