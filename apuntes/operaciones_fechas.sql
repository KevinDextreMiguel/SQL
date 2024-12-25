--Obteniendo la fecha de hoy
select descripcion from tareas where fecha_limite = date()

--Obteniendo la fecha de mañana
select * from tareas where fecha_limite = date('now','1 day')

--Obteniendo la fecha de ayer
select monto from ganancias where fecha = date('now','-1 day')

--Extracción del año
select monto,strftime('%Y', fecha_venta) as año_venta from ventas

--Extracción del mes
select monto, strftime('%m',fecha_venta) as mes_venta,
strftime('%Y',fecha_venta) as año_venta
from ventas

--Extracción del mes y año
select monto, strftime('%m-%Y',fecha_venta) as mes_año from ventas

--Extracciones y where
select * from ventas where strftime('%Y', fecha_venta) = '2015'
