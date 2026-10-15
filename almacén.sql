drop database if exists almacen;
create database almacen;
use almacen;
create table producto (
referencia char(5) primary key, -- Longitud fija máximo 5 char.
nombre varchar(100), -- Longitud variable máximo 100 caracteres
categoria set('Ropa', 'Calzado', 'Juguetes'),
descripcion text,
stock smallint,
precio decimal(8,2)
);

insert into producto values (
'Fal40', 'falda de la talla 40', 'Ropa', 'muy bonita', 25, 80.30);

insert into producto values ('A1001','Camiseta básica','Ropa','Camiseta de algodón 100% disponible en varios colores.',120,9.99);
insert into producto values ('A1002','Pantalón vaquero','Ropa','Vaquero azul corte recto para uso diario.',80,29.95);
insert into producto values ('A1003','Sudadera con capucha','Ropa','Sudadera unisex con capucha y bolsillo frontal.',60,24.50);
insert into producto values ('A1004','Chaqueta ligera','Ropa','Chaqueta impermeable ideal para entretiempo.',40,39.90);
insert into producto values ('A1005','Vestido floral','Ropa','Vestido estampado con motivos florales.',55,34.75);

insert into producto values ('B2001','Zapatillas running','Calzado','Zapatillas ligeras con amortiguación avanzada.',70,59.99);
insert into producto values ('B2002','Botas de montaña','Calzado','Botas resistentes para senderismo y trekking.',35,89.50);
insert into producto values ('B2003','Sandalias verano','Calzado','Sandalias cómodas con suela antideslizante.',90,19.95);
insert into producto values ('B2004','Zapatos de vestir','Calzado','Zapatos elegantes para ocasiones formales.',25,74.20);
insert into producto values ('B2005','Zapatillas casual','Calzado','Zapatillas urbanas para uso diario.',65,49.99);

insert into producto values ('C3001','Pelota de fútbol','Juguetes','Balón de fútbol tamaño oficial para niños.',150,14.99);
insert into producto values ('C3002','Muñeca articulada','Juguetes','Muñeca con accesorios y articulaciones móviles.',100,22.50);
insert into producto values ('C3003','Puzzle 100 piezas','Juguetes','Puzzle educativo de 100 piezas con ilustraciones.',200,8.75);
insert into producto values ('C3004','Coche teledirigido','Juguetes','Coche RC con batería recargable.',45,29.99);
insert into producto values ('C3005','Juego de construcción','Juguetes','Bloques de construcción para desarrollar creatividad.',180,17.90);

insert into producto values ('A1006','Camisa formal','Ropa','Camisa de vestir para eventos y oficina.',50,27.80);
insert into producto values ('A1007','Falda midi','Ropa','Falda de corte midi con tejido suave.',45,23.40);
insert into producto values ('A1008','Abrigo largo','Ropa','Abrigo de invierno con forro térmico.',20,89.99);
insert into producto values ('A1009','Polo clásico','Ropa','Polo de algodón con cuello reforzado.',75,18.60);
insert into producto values ('A1010','Chaqueta vaquera','Ropa','Chaqueta denim estilo clásico.',30,49.95);

insert into producto values ('B2006','Chanclas playa','Calzado','Chanclas resistentes al agua para playa y piscina.',110,9.50);
insert into producto values ('B2007','Mocasines cuero','Calzado','Mocasines de cuero auténtico.',28,64.30);
insert into producto values ('B2008','Botines mujer','Calzado','Botines con tacón medio y diseño moderno.',33,72.99);
insert into producto values ('B2009','Zapatillas skate','Calzado','Zapatillas con suela reforzada para skate.',55,54.20);
insert into producto values ('B2010','Zapatos escolares','Calzado','Zapatos resistentes para uso escolar diario.',95,34.10);

