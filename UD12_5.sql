create database UD12_5;
use UD12_5;

create table pieza(
tipo varchar(2) not null primary key,
modelo int,
descripcion varchar(50),
precio float
);

create table almacen(
numero int not null primary key,
direccion varchar(50),
descripcion varchar(50)
);

create table almacena(
IDestanteria int,
tipoPieza varchar(2),
numeroAlmacen int,
key (IDestanteria),
foreign key (tipoPieza) references pieza (tipo),
foreign key (numeroAlmacen) references almacen (numero)
);

alter table almacena
modify column IDestanteria int primary key;