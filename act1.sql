create database act1
GO
use act1
GO
create table carreras(
	id varchar(4) primary key,
	nombre varchar(60) not null unique,
	fecha date not null check(fecha < GETDATE()),
	mail varchar(100) not null unique,
	nivel varchar(60) not null
)
GO
create table materias(
	id int primary key identity(1,1),
	idCarrera varchar(4) not null foreign key references carreras(id),
	nombre varchar(60) not null,
	cargaHoraria int not null check (cargaHoraria>0)
)
GO
create table alumnos(
	legajo int primary key identity(1000,1),
	idCarrera varchar(4) not null foreign key references carreras(id),
	apellidos varchar(60) not null,
	nombres varchar(60) not null,
	nacimiento date not null check (nacimiento < GETDATE()),
	mail varchar(60) not null unique,
	telefono bigint
)