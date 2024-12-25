--El operador "mayor que"
select * from productos where descuento > 10

--Operador "mayor o igual que"
select * from productos where precio >= 50

--El operador "menor que"
select * from usuarios where id<3

--El operador "menor o igual que"
select * from productos where precio <= 100

--Seleccionando multiples filas bajo una condición
select nombre, precio, cantidad from productos where cantidad > 6

--Seleccionando filas bajo una condición de igualdad
select nombre from usuarios where id = 2

--Seleccionando filas bajo una condición de igualdad (tipo de dato string)
select * from productos where nombre = 'Pantalón'

--Seleccionando filas bajo una condición de igualdad (tipo de dato booleano true)
select * from usuarios where status = true --status = 1

--Seleccionando filas bajo una condición de igualdad (tipo de dato booleano false)
select * from productos where destacado = 0 --status = false

--Utilizando dos condiciones con operador "and"
select * from usuarios where nombre = 'María' and email = 'mariagarcia@hotmail.com'

--Utilizando operador "OR"
select * from productos where precio > 1000 or descuento = 20

--Seleccionando una fecha 'YYYY-MM-DD'
select * from productos where fecha_de_creacion > '2021-05-01'

--Seleccionando datos entre dos valores con "between"
--El operador BETWEEN se utiliza para seleccionar registros 
--cuyos valores se encuentren dentro de un rango específico.
select * from productos where stock between 20 and 30

--Seleccionando filas con "like"
select * from usuarios where apellido like 'Ma%' --Todos los apellidos que empiezan con 'Ma'

--Seleccionando con comodin al principio
SELECT * FROM usuarios WHERE nombre LIKE '%o'  --Todos los nombres que terminan con 'o'

--Seleccionando registros sin valores nulos
select * from productos where descuento is not null

--Seleccionando registros con valores nulos
select * from usuarios where email is null
