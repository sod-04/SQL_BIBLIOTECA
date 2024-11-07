CREATE DATABASE Biblioteca;

USE biblioteca;
CREATE TABLE autores (
ID_autor INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
Nombre VARCHAR (100) NOT NULL,
Nacionalidad VARCHAR (100) NOT NULL,
Fecha_nacimiento DATE
);

USE biblioteca;
CREATE TABLE categorias (
ID_categoria INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
Nombre_categoria VARCHAR (50) NOT NULL
);

USE biblioteca;
CREATE TABLE libros (
ID_libro INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
Titulo VARCHAR (100) NOT NULL,
ID_autor INT NOT NULL,
ID_categoria INT NOT NULL,
Año_publicacion INT NOT NULL,
Disponible BOOLEAN DEFAULT TRUE,
FOREIGN KEY (ID_autor) REFERENCES autores (ID_autor),
FOREIGN KEY (ID_categoria) REFERENCES categorias (ID_categoria)
);

USE biblioteca;
CREATE TABLE usuarios (
ID_usuario INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
Nombre VARCHAR (100) NOT NULL,
Direccion VARCHAR (100),
Telefono VARCHAR (20) 
);
