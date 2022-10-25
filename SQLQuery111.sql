create database Universidad

use Universidad

create table Carreras(
codCarrera int identity(1,3),
nombre varchar(50),
titulo varchar(50),
constraint pk_carreras primary key(codCarrera))

create table Asignaturas(
codAsignatura int identity(1,3),
nombre varchar(50),
constraint pk_asignatura primary key(codAsignatura))

create table DetalleCarreras(
codDetalleCarrera int identity(1,5),
codCarrera int,
codAsignatura int,
anioCursado datetime,
cuatrimestre int,
constraint pk_detalleCarrera primary key(codDetalleCarrera),
constraint fk_carrera_detalleCarrera foreign key(codCarrera) references Carreras(codCarrera),
constraint fk_asignaturas_detalleCarrera foreign key(codAsignatura) references Asignaturas(codAsignatura))

Create Proc SP_Cargar_Carreras
As
Select nombre 'Carrera'
From Carreras 
Order By 1

Create proc SP_Cargar_Asignaturas
as
select nombre 'Asignatura'
from Asignaturas
order by 1

insert into Carreras(nombre,titulo) values('INGENIER�A CIVIL','Ingeniero Civil')
insert into Carreras(nombre,titulo) values('INGENIER�A EL�CTRICA','Ingeniero Electricista')
insert into Carreras(nombre,titulo) values('INGENIER�A ELECTR�NICA','Ingeniero Electr�nico')
insert into Carreras(nombre,titulo) values('INGENIER�A INDUSTRIAL','Ingeniero Industrial')
insert into Carreras(nombre,titulo) values('NGENIER�A MEC�NICA','Ingeniero Mec�nico')

select * from Carreras


Insert into Asignaturas(nombre) Values('ANALISIS MATEMATICO I ')
Insert into Asignaturas(nombre) Values('ALGEBRA Y GEOMETRIA ANALITICA ')
Insert into Asignaturas(nombre) Values('INGENIERIA Y SOCIEDAD ')
Insert into Asignaturas(nombre) Values('SISTEMAS DE REPRESENTACION')
Insert into Asignaturas(nombre) Values('QUIMICA GENERAL')
Insert into Asignaturas(nombre) Values('FISICA I')
Insert into Asignaturas(nombre) Values('FUNDAMENTOS DE INFORMATICA')
Insert into Asignaturas(nombre) Values('Integraci�n El�ctrica I	')
Insert into Asignaturas(nombre) Values('Inform�tica I')
Insert into Asignaturas(nombre) Values('Pensamiento Sist�mico')
Insert into Asignaturas(nombre) Values('Ingenier�a Mec�nica I')
Insert into Asignaturas(nombre) Values('Sistemas de Procesamiento de Datos')
Insert into Asignaturas(nombre) Values('Programaci�n I')
Insert into Asignaturas(nombre) Values('Ingl�s I')
Insert into Asignaturas(nombre) Values('Laboratorio de Computaci�n I')
Select* from Asignaturas

Insert into DetalleCarreras(codCarrera,codAsignatura,anioCursado,cuatrimestre) values (4,4,'3ro','2do')

Insert into DetalleCarreras(codCarrera,codAsignatura,anioCursado,cuatrimestre) values (1,1,'1ro','1ro')
 Insert into DetalleCarreras(codCarrera,codAsignatura,anioCursado,cuatrimestre) values (1,37,'1ro','1ro')
 Insert into DetalleCarreras(codCarrera,codAsignatura,anioCursado,cuatrimestre) values (1,40,'1ro','1do')
 Insert into DetalleCarreras(codCarrera,codAsignatura,anioCursado,cuatrimestre) values (1,43,'1ro','1do')
 Insert into DetalleCarreras(codCarrera,codAsignatura,anioCursado,cuatrimestre) values (1,46,'1ro','1do')
 Insert into DetalleCarreras(codCarrera,codAsignatura,anioCursado,cuatrimestre) values (16,19,'1ro','1do')
Insert into DetalleCarreras(codCarrera,codAsignatura,anioCursado,cuatrimestre) values (16,7,'1ro','1do')
Insert into DetalleCarreras(codCarrera,codAsignatura,anioCursado,cuatrimestre) values (16,10,'1ro','1do')

select* from DetalleCarreras

