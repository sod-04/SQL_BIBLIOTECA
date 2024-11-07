CREATE DATABASE Biblioteca;

USE biblioteca;
CREATE TABLE autores (
ID_autor INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
Nombre VARCHAR (100) NOT NULL,
Nacionalidad VARCHAR (100) NOT NULL,
Fecha_nacimiento DATE
);

