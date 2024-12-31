--Introducción a Having
select strftime("%m",fecha_inscripcion) as mes, count(fecha_inscripcion) as cantidad_usuarios 
from inscripciones
group by strftime("%m",fecha_inscripcion)
having cantidad_usuarios == 1 

--Buscando duplicados
select correo, count(correo) as cuenta_correos  from correos_corporativos
group by correo having cuenta_correos > 1

--Having y cuenta
select count(departamento) as cantidad_de_usuarios, departamento from empleados
group by departamento having cantidad_de_usuarios > 1

--Having y promedio
select email, avg(notas) as promedio_notas from notas
group by email having promedio_notas >= 50

--Having y order
select producto,sum(cantidad) as cantidad_total from ventas 
group by producto having cantidad_total > 1000 order by cantidad_total desc

--Having y order 2
select departamento, avg(salario) as salario_promedio from empleados
group by departamento having salario_promedio > 3000 order by salario_promedio desc
