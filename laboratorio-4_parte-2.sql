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

USE biblioteca;
CREATE TABLE prestamos (
ID_prestamo INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
ID_usuario INT NOT NULL,
ID_libro INT NOT NULL,
Fecha_prestamo DATE NOT NULL,
Fecha_devolucion DATE NOT NULL,
FOREIGN KEY (ID_usuario) REFERENCES usuarios (ID_usuario),
FOREIGN KEY (ID_libro) REFERENCES libros (ID_libro)
);

USE biblioteca;
INSERT INTO autores (Nombre,Nacionalidad, Fecha_Nacimiento)
VALUES ('Gabriel García Márquez','Colombiano','1927-03-06'), 
 ('J.K. Rowling','Británica','1965-07-31'), ('George Orwell','Británica','1903-06-25');

USE biblioteca;
INSERT INTO categorias (Nombre_categoria)
VALUES ('Novela'), ('Ciencia Ficción'), ('Fantasía'), ('Ensayo');

USE biblioteca;
INSERT INTO Libros (Titulo, ID_autor, ID_categoria, Año_publicacion)
VALUES ('Cien Años de Soledad', 1, 1, 1967), ('Harry Potter y la Piedra Filosofal', 2, 3, 1997), ('La
era de 1984', 3, 2, 1949);

USE biblioteca;
INSERT INTO usuarios (Nombre, Direccion, Telefono)
VALUES ('Carlos Martínez', 'Calle Luna, 123','123456789'), ('Lucía Fernández', 'Avenida Sol, 456', '987654321');

USE biblioteca;
INSERT INTO prestamos (ID_usuario, ID_libro, Fecha_prestamo, Fecha_devolucion)
VALUES (1, 1,'2024-08-01', '2024-08-15'), (2, 2, '2024-08-02','2024-08-16');

USE biblioteca;
CREATE TABLE Prestamos_usuarios (
ID_relacion INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
ID_prestamo INT NOT NULL,
ID_usuario INT NOT NULL,
FOREIGN KEY (ID_prestamo) REFERENCES prestamos (ID_prestamo),
FOREIGN KEY (ID_usuario) REFERENCES usuarios (ID_usuario)
);
