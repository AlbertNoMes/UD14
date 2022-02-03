create database UD12_10;
use UD12_10;

create table jugador(
id int(10) not null primary key,
nombre varchar(20)
);

create table equipo(
id int not null primary key,
nombre varchar(50),
estadio varchar(50),
idJugador int(10),
foreign key (idJugador) references jugador (id)
);

create table jornada(
id int not null primary key,
numero int(2),
fecha date,
idJugador int(10),
idEquipo int,
foreign key (idJugador) references jugador (id),
foreign key (idEquipo) references equipo (id)
);

