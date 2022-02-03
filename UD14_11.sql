DROP DATABASE IF EXISTS UD14_11;

CREATE DATABASE UD14_11;

USE UD14_11;

DROP TABLE IF EXISTS `facultad`;

create table facultad(
codigo int primary key auto_increment,
nombre nvarchar(100)
);

DROP TABLE IF EXISTS `investigadores`;

create table investigadores(
DNI varchar(8) primary key,
NomApels nvarchar(255),
Facultad int,
Constraint FK_facultad foreign Key(Facultad) references facultad(codigo)
);

DROP TABLE IF EXISTS `equipos`;

create table equipos(
NumSerie char(4) primary key,
Nombre nvarchar(100),
Facultad int,
Constraint FK_facultad2 foreign Key(Facultad) references facultad(codigo)
);

DROP TABLE IF EXISTS `reserva`;

create table reserva(
DNI varchar(8) primary key,
NumSerie char(4),
Comienzo datetime,
Fin datetime,
Constraint FK_Investigadores foreign Key(DNI) references investigadores(DNI),
Constraint FK_equipos foreign Key(NumSerie) references equipos(NumSerie)
);