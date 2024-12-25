--Seleccionar filtrando datos repetidos
--Seleccionando correos únicos
select distinct correo as correo_unico from usuarios

--Seleccionar distintos meses
select distinct strftime('%m',fecha_venta) as mes_unico from ventas

--Contar los valores distintos
select count(distinct telefono) as telefonos_unicos from usuarios

--Distinct con múltiples columnas
select distinct categoria, precio from productos 
