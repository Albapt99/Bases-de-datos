DROP DATABASE IF EXISTS Fiestas;
CREATE DATABASE Fiestas;
USE Fiestas;
CREATE TABLE Cliente (
id_cliente INT auto_increment PRIMARY KEY,
nombre VARCHAR(50) NOT NULL,
apellidos VARCHAR(100) NOT NULL,
teléfono VARCHAR(15),
email VARCHAR(100)
); 
CREATE TABLE Local (
id_local INT auto_increment PRIMARY KEY,
nombre VARCHAR(100) NOT NULL,
direccion VARCHAR(150) NOT NULL,
capacidad INT NOT NULL,
precio DECIMAL(8,2) NOT NULL 
);
CREATE TABLE Invitado (
id_invitado INT auto_increment PRIMARY KEY,
apellidos VARCHAR(100) NOT NULL,
telefono VARCHAR(15),
email VARCHAR(100)
);
CREATE TABLE Fiesta (
id_fiesta INT auto_increment PRIMARY KEY,
fecha DATE NOT NULL,
hora TIME NOT NULL,
tipo VARCHAR(50) NOT NULL,
id_cliente INT NOT NULL,
id_local INT NOT NULL,
	FOREIGN KEY (id_cliente)
		REFERENCES Cliente(id_cliente),
	FOREIGN KEY (id_local)
		REFERENCES Local(id_local)
);
CREATE TABLE Invitación (
id_fiesta INT,
id_invitado INT,
confirmado BOOLEAN DEFAULT FALSE,
	PRIMARY KEY (id_fiesta, id_invitado),
    FOREIGN KEY (id_fiesta)
		REFERENCES Fiesta(id_fiesta),
	FOREIGN KEY (id_invitado)
		REFERENCES Invitado(id_invitado)
);