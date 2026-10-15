drop database if exists concesionario;
create database concesionario;
use concesionario;
create table vehiculo (
codigo char(12) primary key, -- longitud fija maximo 5 char.
marca varchar(25), -- longitud variable maximo 100 caracteres
modelo varchar(30), -- longitud variable maximo 100 caracteres
descripcion text,
fabricacion year, -- año de fabricación
kilometros int,
precio decimal(8,2),
matriculacion date, -- fecha de matriculacion
incorporacion datetime, -- fecha de incorporacion al sistema
vendido boolean, -- true = vendido, false = disponible
categoria set('gasolina', 'diesel', 'híbrido', 'eléctrico'), -- tipo de combustible
potencia decimal
);
insert into vehiculo values ('V1001','Toyota','Corolla','Compacto fiable y económico.',2018,45000,12999.90,'2018-06-12','2026-01-10 10:15:00',false,'gasolina',110.50);
insert into vehiculo values ('V1002','Ford','Focus','Vehículo familiar con buen rendimiento.',2016,78000,8999.00,'2016-03-20','2026-02-01 09:30:00',true,'diesel',120.00);
insert into vehiculo values ('V1003','Volkswagen','Golf','Compacto europeo de alta calidad.',2020,25000,17999.99,'2020-09-15','2026-02-05 11:00:00',false,'gasolina',130.75);
insert into vehiculo values ('V1004','Renault','Clio','Coche urbano eficiente.',2017,52000,7990.50,'2017-04-10','2026-02-10 12:45:00',true,'diesel',90.20);
insert into vehiculo values ('V1005','Seat','Ibiza','Modelo juvenil y versátil.',2019,31000,13950.00,'2019-07-22','2026-02-12 14:10:00',false,'gasolina',115.00);

insert into vehiculo values ('V1006','Hyundai','Tucson','SUV moderno con gran equipamiento.',2021,18000,24999.99,'2021-05-18','2026-02-15 16:00:00',false,'híbrido',150.40);
insert into vehiculo values ('V1007','Kia','Sportage','SUV equilibrado y cómodo.',2018,60000,18999.00,'2018-02-11','2026-02-18 09:20:00',true,'diesel',136.00);
insert into vehiculo values ('V1008','Peugeot','208','Compacto urbano con buen consumo.',2020,22000,15990.00,'2020-10-05','2026-02-20 10:10:00',false,'gasolina',100.00);
insert into vehiculo values ('V1009','BMW','320d','Berlina premium con gran potencia.',2017,85000,22999.90,'2017-01-30','2026-02-22 13:55:00',true,'diesel',190.00);
insert into vehiculo values ('V1010','Audi','A3','Compacto premium de alta calidad.',2019,40000,25999.99,'2019-08-14','2026-02-25 15:30:00',false,'gasolina',150.00);

insert into vehiculo values ('V1011','Mercedes','C200','Berlina elegante y potente.',2018,50000,27999.00,'2018-03-19','2026-02-27 17:45:00',true,'gasolina',184.50);
insert into vehiculo values ('V1012','Nissan','Qashqai','SUV superventas con gran espacio.',2020,30000,23999.00,'2020-11-02','2026-03-01 09:00:00',false,'híbrido',158.20);
insert into vehiculo values ('V1013','Honda','Civic','Compacto deportivo y eficiente.',2017,72000,16990.00,'2017-06-25','2026-03-03 11:40:00',true,'gasolina',182.00);
insert into vehiculo values ('V1014','Mazda','CX-5','SUV con excelente conducción.',2019,45000,26999.99,'2019-09-10','2026-03-05 12:20:00',false,'diesel',150.00);
insert into vehiculo values ('V1015','Fiat','500','Coche urbano icónico.',2021,12000,14999.00,'2021-04-08','2026-03-07 13:10:00',false,'eléctrico',87.50);

insert into vehiculo values ('V1016','Tesla','Model 3','Berlina eléctrica de alta autonomía.',2022,8000,38999.99,'2022-02-15','2026-03-10 14:00:00',false,'eléctrico',239.00);
insert into vehiculo values ('V1017','Opel','Corsa','Compacto práctico y económico.',2018,55000,9990.00,'2018-05-12','2026-03-12 15:50:00',true,'gasolina',75.00);
insert into vehiculo values ('V1018','Citroën','C4','Compacto cómodo y espacioso.',2020,28000,18999.00,'2020-03-18','2026-03-14 16:30:00',false,'híbrido',130.00);
insert into vehiculo values ('V1019','Volvo','XC40','SUV premium con gran seguridad.',2021,15000,34999.99,'2021-10-22','2026-03-16 17:20:00',false,'eléctrico',231.50);
insert into vehiculo values ('V1020','Skoda','Octavia','Berlina amplia y eficiente.',2019,50000,20999.00,'2019-01-11','2026-03-18 18:10:00',true,'diesel',150.00);

insert into vehiculo values ('V1021','Mini','Cooper','Compacto con estilo único.',2017,65000,15999.00,'2017-09-09','2026-03-20 09:40:00',true,'gasolina',136.00);
insert into vehiculo values ('V1022','Jeep','Renegade','SUV compacto con carácter.',2018,48000,19999.00,'2018-07-14','2026-03-22 10:25:00',false,'diesel',140.00);
insert into vehiculo values ('V1023','Dacia','Duster','SUV económico y resistente.',2020,30000,14990.00,'2020-12-01','2026-03-24 11:15:00',false,'gasolina',115.00);
insert into vehiculo values ('V1024','Subaru','Impreza','Compacto con tracción total.',2019,42000,22999.00,'2019-03-27','2026-03-26 12:05:00',true,'gasolina',156.00);
insert into vehiculo values ('V1025','Porsche','Macan','SUV deportivo de lujo.',2021,18000,69999.99,'2021-06-30','2026-03-28 13:55:00',false,'gasolina',265.00);




select codigo, marca, modelo, precio from vehiculo;

