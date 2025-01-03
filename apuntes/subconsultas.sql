--Introduccion a subconsultas
select * from empleados where sueldo <= (select avg(sueldo) from empleados)

--Subconsultas y where parte 1
select * from empleados
where sueldo > (select avg(sueldo) from empleados where departamento='Finanzas')

--Subconsultas y where parte 2
select * from empleados 
where sueldo > (select max(sueldo) from empleados where departamento='Finanzas')

--Subconsultas y where parte 3
select * from notas
where notas > (select avg(notas) from notas)

--Subconsultas con IN
select nombre from estudiantes
where estudiante_id in (select estudiante_id from promedios where promedio_notas > 50)

--Subconsultas con IN parte 2
select nombre as nombres_seleccionados from libros
where libro_id in (select libro_id from valoraciones where valoracion_promedio > 4)

--Subconsultas con IN parte 3
select nombre as nombres_pacientes from pacientes
where paciente_id in (select paciente_id from consultas where fecha_consulta < '2023-05-16')

--Subconsultas en el FROM
select avg(total_venta) as promedio_ventas
from (select empleado_id,sum(monto) as total_venta from ventas group by empleado_id) 

--Subconsultas en el FROM parte2
select avg(suma) as promedio_goles
from (select sum(goles) as suma from goles group by jugador_id)
