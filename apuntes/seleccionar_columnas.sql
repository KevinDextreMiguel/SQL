--Seleccionar todas las columnas de una tabla
select * from usuarios

--Seleccionar una columna de una tabla
select nombre from usuarios

--Seleccionar múltiples columnas de una tabla
select nombre,precio,proveedor from productos

--Asignar un alias a una columna con "AS"
select nombre as cliente  from usuarios

--Asignar alias a múltiples columnas con "AS".md
select nombre as nombre_usuario, apellido as apellido_usuario from usuarios

--Asignar un alias con AS y comillas dobles
select nombre, email as "Correo electrónico" from usuarios
