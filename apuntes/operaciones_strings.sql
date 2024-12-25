--Transformando un string a mayúsculas
select upper(email) as email_upper from usuarios 

--Trasformando un string a minúsculas
select lower(email) as email_lower from usuarios

--Quitando espacios en blanco de un string
--la función TRIM() se utiliza para eliminar los espacios en blanco iniciales y finales de un string.
select trim(nombre),trim(email) from usuarios

--Combinando funciones
select lower(trim(nombre)) as nombre_limpio,
lower(trim(apellido)) as apellido_limpio,
lower(trim(email)) as email_limpio
from usuarios

--Obteniendo el largo de un string
select length(apellido) from usuarios

--Obteniendo el nombre mas largo de la tabla
--los 3 correo màs largos
select length(email) from usuarios order by length(email) desc limit 3

--Ordenando todos los datos y la función
select email, length(email) from usuarios order by length(email) desc limit 3

--Concatenar strings
select producto || '-' || marca  as marca_producto from productos

--Seleccionando caracteres de un string con SUBSTR
--La función SUBSTR() se utiliza para seleccionar una determinada cantidad de caracteres de un string
--SUBSTR( string, inicio, largo )
select substr(apellido,1,3) as primeras_letras from usuarios --con 3 primeras letras

--Seleccionando caracteres
select substr(apellido,2,3) as tres_caracteres_del_apellido from usuarios where nombre = 'María'
