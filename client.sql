USE concesionario;
CREATE TABLE CLIENTE(
	dni char(9) primary key,
    nombre varchar(100) not null unique,
    dirección varchar(300),
    ciudad varchar(25) default 'Madrid'
);

INSERT INTO CLIENTE VALUES('51777889A', 'Ana Torres', 'Oca, 3', 'Madrid');
INSERT INTO CLIENTE VALUES('52777889A', 'Ana Torres', 'Oca, 7', 'Madrid');
INSERT INTO CLIENTE (dni, nombre, dirección) VALUES('57999225B', 'Pedro Torres', 'Oca, 78');

select * from cliente
