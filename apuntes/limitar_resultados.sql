--Limitando la cantidad de resultados
select * from usuarios where id > 0 order by id asc limit 3

--Obtener los 3 primeros alumnos con mejor nota
SELECT * FROM notas ORDER BY nota DESC LIMIT 3

--Obtener el nombre del concierto con más entradas vendidas
select * from conciertos order by entradas_vendidas desc limit 1
