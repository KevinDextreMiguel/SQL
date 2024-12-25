--Ordenando filas
select * from usuarios order by nombre --asc

--Ordenando filas asc explicito
select * from usuarios order by nombre asc

--Ordenando filas desc
select precio from productos order by precio desc

--Ordenando con nulos al final: nulls first (nulos primeros), nulls last (nulos al final)
select * from productos order by precio nulls last

--Combinaciones de orden
select * from empleados order by salario asc, nombre asc

--Combinaciones de orden asc y desc
SELECT * FROM productos WHERE precio > 100 ORDER BY precio DESC, nombre ASC;
