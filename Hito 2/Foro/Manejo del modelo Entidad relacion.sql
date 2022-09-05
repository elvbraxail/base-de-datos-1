--Actividad foro
--Nilber Mayta Cuno    SIS9210838
--Elvin Cussi Aranibar SIS7014140
create database compra_de_vehiculos;
use compra_de_vehiculos;

--Creando tabla de datos del comprador
create table comprador (

CI varchar (30) primary key,
Nombre varchar (50),
Apellido varchar (30),
Edad integer


);
--Creando tabla de datos del vehiculo
create table Vehiculo (

Placa varchar (10) Primary key,
Color varchar (20),
Marca varchar (30),
Año integer


);
--Creando tabla de datos de la distribuidora
create table Distribuidora(

NIT varchar (10) Primary key,
Nombre varchar (20),
Ubicacion varchar (30),


);
--Creando tabla de datos de la entidad relacion compra
create table Compra (
Numero_de_compra integer primary key,
CI varchar (30),
Placa varchar (10),
NIT varchar (10),
foreign key (CI) references Comprador (CI),
foreign key (Placa) references Vehiculo (Placa),
foreign key (NIT) references Distribuidora (NIT),

);

--Añadiendo datos na la tabla comprador
insert into comprador (CI, Nombre, Apellido,Edad)
values ('7014140lp', 'Luis Mateo','Rodrigues',20)
insert into comprador (CI, Nombre, Apellido,Edad)
values ('4514140cbb', 'Enrique Luis','Lopez',19)
insert into comprador (CI, Nombre, Apellido,Edad)
values ('7014175or', 'Jose','Ubaldo',31)
insert into comprador (CI, Nombre, Apellido,Edad)
values ('7014870lp', 'Cristina','Casas',25)
insert into comprador (CI, Nombre, Apellido,Edad)
values ('2414140scz', 'Angel','Casas',20)

--Ver datos de la tabla comprador
select *
from comprador

--Añadiendo datos na la tabla comprador
insert into Vehiculo (Placa,Color,Marca,Año)
values('7894PJB','Negro','Suzuki',2021)
insert into Vehiculo (Placa,Color,Marca,Año)
values('7875OPB','Azul','Nissan',2015)
insert into Vehiculo (Placa,Color,Marca,Año)
values('784242JB','Blanco','Toyota',2020)
insert into Vehiculo (Placa,Color,Marca,Año)
values('756234PRTB','Rojo','Porche',2018)
insert into Vehiculo (Placa,Color,Marca,Año)
values('1JB','Salmon','Chevrolet',2022)

--Ver datos de la tabla vehiculo
select *
from Vehiculo

--Añadiendo datos de la tabla distribuidora
insert into Distribuidora(NIT,Nombre,Ubicacion)
values ('7981325PL','Patito','La Paz')

--Ver datos de la tabla distribuidora
select*
from Distribuidora

--Ver datos tabla entidad relacion compra
select *
from Compra
