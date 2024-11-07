--------- Actualizar la disponibilidad de un libro 

USE biblioteca;
UPDATE libros
SET Disponible = FALSE
WHERE ID_libro = 2;

--------- Actualizar la fecha de devolución de un préstamo.

USE biblioteca;
UPDATE prestamos
SET fecha_devolucion = '2024-09-01'
WHERE ID_prestamo = 2;

--------- Eliminar un libro de la base de datos

USE biblioteca;
DELETE FROM libros
WHERE titulo = 'La
era de 1984';

--------- Seleccionar todos los libros

USE biblioteca;
SELECT * FROM libros;

-------- Seleccionar todos los autores

USE biblioteca;
SELECT * FROM autores;

------- Seleccionar el libro de Gabriel García Márquez

USE biblioteca;
SELECT * FROM libros 
WHERE ID_autor = 1;

------- Mostrar los libros devueltos en el mes 8 de la tabla prestamos del año 2024

USE biblioteca;
SELECT * FROM prestamos
WHERE MONTH (fecha_devolucion) = 8 AND YEAR (fecha_devolucion) = 2024;
