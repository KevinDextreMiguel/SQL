--Agrupando valores con GROUP BY
--obtener elementos distintos de una tabla (como con distinct)
select correo as correo_unico from usuarios group by correo

--Agrupar y contar
--GROUP BY se utiliza con funciones de agregación (COUNT, MAX, MIN, SUM y AVG)
select correo, count(correo) as repeticiones from usuarios group by correo

--Ejercitando agrupar y contar
select departamento, count(departamento) as cantidad_empleados 
from empleados group by departamento

--Agrupar y sumar
select categoria, sum(monto) as monto_total from ventas group by categoría

--Agrupar y promediar
select nombre_completo, avg(nota) as promedio_notas from estudiantes group by nombre_completo

--Máximo por grupo
select categoria, max(monto) as monto_mas_alto from ventas group by categoría

--Mínimo por grupo
select categoria, min(monto) as monto_mas_bajo from ventas group by categoría

--Funciones de agregación y fechas
select sum(monto) as suma_ventas, strftime('%m',fecha_venta) as mes
from ventas group by strftime('%m',fecha_venta)

--Ejercitando funciones de agregación con fechas
select strftime('%m',fecha_inscripcion) as mes, 
count(strftime('%m',fecha_inscripcion)) as cantidad_usuarios
from inscripciones group by strftime('%m',fecha_inscripcion)

--Agrupando sin indicar el nombre de las columnas
--1: està agrupando mediante el primer criterio (correo) 
select correo, count(correo) as repeticiones from usuarios group by 1 

--Agrupando por múltiples columnas
--Calcula el promedio de cada estudiante en cada materia. Las columnas deben 
--llamarse correo, materia y promedio_notas
select correo, materia, avg(nota) as promedio_notas
from estudiantes group by 1,2
