DROP DATABASE IF EXISTS UD14_8;

CREATE DATABASE UD14_8;

USE UD14_8;

DROP TABLE IF EXISTS `piezas`;

CREATE TABLE piezas(
codigo int primary key auto_increment,
nombre nvarchar(100)
);

DROP TABLE IF EXISTS `proveedores`;

CREATE TABLE proveedores(
id char(4) primary key,
nombre nvarchar(100)
);

DROP TABLE IF EXISTS `suministra`;

CREATE TABLE suministra(
CodigoPieza int auto_increment,
IdProveedor char(4),
Precio int,
PRIMARY KEY (CodigoPieza, IdProveedor),
Constraint FK_piezas foreign Key(CodigoPieza) references piezas(codigo),
Constraint FK_proveedor foreign Key(IdProveedor) references proveedores(id)
);