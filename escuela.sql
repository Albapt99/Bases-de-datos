drop database IF exists escuela;
create database escuela;
use escuela;
create table alumno (
dni char(9) primary key,
nombre varchar(25),
apellidos varchar(100),
domicilio varchar(200),
tlf varchar(25)
);

insert into alumno values ('22222222A','Pepe',
'Sánchez Robles','C/Oca,25','617778899');

insert into alumno values ('12345678A','Lucía','Martínez López','C/ Mayor 12, Getafe','+34 612345678');
insert into alumno values ('23456789B','Carlos','Gómez Ruiz','Av. Andalucía 45, Madrid','654987321');
insert into alumno values ('34567890C','María','Santos Pérez','C/ Toledo 8, Leganés','600112233');
insert into alumno values ('45678901D','Javier','López García','C/ Sol 22, Fuenlabrada','722334455');
insert into alumno values ('56789012E','Ana','Hernández Díaz','C/ Luna 3, Alcorcón','+34 699887766');
insert into alumno values ('67890123F','Pablo','Ramírez Torres','C/ Norte 14, Móstoles','611223344');
insert into alumno values ('78901234G','Elena','Navarro Gil','C/ Sur 19, Getafe','655443322');
insert into alumno values ('89012345H','Sergio','Moreno Vega','C/ Jardines 7, Madrid','644556677');
insert into alumno values ('90123456J','Laura','Castro Martín','C/ Estrella 10, Leganés','600998877');
insert into alumno values ('11223344K','David','Ortega Sánchez','C/ Río Tajo 5, Fuenlabrada','+34 633221100');
insert into alumno values ('22334455L','Irene','Delgado Ramos','C/ Princesa 18, Madrid','699112200');
insert into alumno values ('33445566M','Rubén','Cano Prieto','C/ Libertad 2, Getafe','622334455');
insert into alumno values ('44556677N','Sara','Vega Molina','C/ Paz 9, Alcorcón','611009988');
insert into alumno values ('55667788P','Miguel','Serrano León','C/ Olivo 33, Móstoles','+34 677554433');
insert into alumno values ('66778899Q','Patricia','Rey Domínguez','C/ Álamo 6, Leganés','699887700');
insert into alumno values ('77889900R','Óscar','Ibáñez Flores','C/ Castilla 21, Madrid','612300400');
insert into alumno values ('88990011S','Clara','Nieto Bravo','C/ Madrid 11, Getafe','655009900');
insert into alumno values ('99001122T','Hugo','Sáez Rubio','C/ Alcalá 50, Madrid','+34 644332211');
insert into alumno values ('10111213U','Marta','Campos Jurado','C/ Valencia 4, Fuenlabrada','600700800');
insert into alumno values ('12131415V','Raúl','Pérez Castaño','C/ Sevilla 9, Alcorcón','699300200');
insert into alumno values ('13141516W','Nuria','Garrido Torres','C/ Córdoba 17, Móstoles','622556677');
insert into alumno values ('14151617X','Adrián','Lara Montes','C/ Granada 28, Leganés','611223300');
insert into alumno values ('15161718Y','Beatriz','Fuentes Rivas','C/ Bilbao 3, Madrid','+34 677889900');
insert into alumno values ('16171819Z','Tomás','Cuesta Barrios','C/ Burgos 12, Getafe','655443311');
insert into alumno values ('17181920A','Eva','Soto Aguilar','C/ León 7, Fuenlabrada','644221133' 
select nombre, tlf from alumno;
select nombre, apellidos, tlf from alumno;
select nombre, apellidos tlf from alumno where nombre= 'Pablo'