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
