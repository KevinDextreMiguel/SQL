--El mayor valor de una columna
select max(edad) from empleados

--El menor valor de una columna
select min(sueldo) from empleados

--Suma de elementos en una columna
select sum(sueldo) from empleados

--Promedio de una columna
select avg(sueldo) from empleados

--Contando elementos en una tabla
select count(*) from empleados

--Ejercicio 1 : Funciones de agregacion con where
select sum(sueldo) from empleados where edad > 27

--Ejercicio 2 : Funciones de agregacion con where
select avg(sueldo) from empleados where sueldo > 50000

--Ejercicio 3 : Funciones de agregacion con where
select count(*) from empleados where departamento = 'Marketing'

--Ejercicio 4 : Funciones de agregacion con where
select count(*) from empleados where departamento = 'Marketing' or departamento = 'Finanzas'

--Conteo con condiciones con string
select count(*) from usuarios where nombre like '%a'
