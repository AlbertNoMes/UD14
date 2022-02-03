DROP DATABASE IF EXISTS UD14_10;

CREATE DATABASE UD14_10;

USE UD14_10;

DROP TABLE IF EXISTS `cajeros`;

create table cajeros (
idcajeros int primary key auto_increment,
nomapels nvarchar(255)
);

DROP TABLE IF EXISTS `productos`;

create table productos (
idproductos int primary key auto_increment,
nombre nvarchar(100),
precio int
);

DROP TABLE IF EXISTS `maquinas_registradoras`;

create table maquinas_registradoras (
idmaquina int primary key auto_increment,
piso int
);

DROP TABLE IF EXISTS `venta`;

CREATE TABLE venta (
idcajero int,
idproducto int,
idmaquina int,
primary key(idcajero, idproducto, idmaquina),
constraint idcajero foreign key (idcajero) references cajeros(idcajeros),
constraint idproducto foreign key (idproducto) references productos(idproductos),
constraint idmaquina foreign key (idmaquina) references maquinas_registradoras(idmaquina)
);