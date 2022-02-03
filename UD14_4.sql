DROP DATABASE IF EXISTS UD14_4;

CREATE DATABASE UD14_4;

USE UD14_4;

DROP TABLE IF EXISTS `departamentos`;

create table departamentos (
codigo int primary key auto_increment,
nombre nvarchar(100),
presupuesto int
);

DROP TABLE IF EXISTS `empleados`;

CREATE TABLE empleados (
DNI varchar(8) primary key,
nombre nvarchar(100),
apellidos nvarchar(255),
departamento int,
constraint departamento foreign key (departamento) references departamentos(codigo)
);