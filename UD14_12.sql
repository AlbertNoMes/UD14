DROP DATABASE IF EXISTS UD14_12;

CREATE DATABASE UD14_12;

USE UD14_12;

DROP TABLE IF EXISTS `profesores`;

create table profesores(
DNI varchar(8) primary key,
nombre nvarchar(100) unique,
apellido1 nvarchar(100),
apellido2 nvarchar(100),
direccion nvarchar(255),
titulo nvarchar(255),
gana int not null
);

DROP TABLE IF EXISTS `cursos`;

CREATE TABLE cursos (
idcurso int primary key auto_increment,
nombrecurso nvarchar(255) unique,
DNIprofesor varchar(8),
max_alumnos int,
fehca_inicio date,
fecha_fin date,
num_horas int not null,
constraint FK_DNIprofesor foreign key (DNIprofesor) references profesores(DNI)
);

DROP TABLE IF EXISTS `alumnos`;

create table alumnos (
DNI varchar(8) primary key,
nombre nvarchar(100),
apellido1 nvarchar(100),
apellido2 nvarchar(100),
direccion nvarchar(255),
sexo nvarchar(100),
fecha_nacimiento date,
curso int,
constraint FK_curso foreign key (curso) references cursos(idcurso)
);