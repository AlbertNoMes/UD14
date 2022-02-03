/*create database UD12_15;
use UD12_15;*/

create table plato(
nombre varchar(20) primary key,
descripcion varchar(50),
cantidad int(3),
tipo int(1)
);

create table menu(
fecha date primary key,
temperatura varchar(50),
cantidad int(3)
);

create table menuPlato(
fechaMenu date,
nombrePlato varchar(50),
primary key (fechaMenu, nombrePlato),
foreign key (fechaMenu) references menu (fecha),
foreign key (nombrePlato) references plato (nombre)
);

/*show tables;*/