Se necesita mostrar los montos que se pagaron y las fechas en que se emitieron las facturas de las 15 ventas más grandes realizadas en el año
2020. También se debe mostrar los nombres de los empleados que las facturaron y su fecha 
de ingreso, también se pueden mostrar las ventas si los empleados que las realizaron tienen más de 3 años de 
antigüedad o los productos vendidos comiencen con E. Las ventas deben estar ordenadas de 
forma decreciente.



Select distinct top 15 Convert(VARCHAR,F.fechaPedido,103) 'Fecha de factura', FF.montopago 'Monto de pago', E.nombre+SPACE(1)+E.apellido 'Empleado que facturo el pedido', CONVERT(VARCHAR,E.fechaIngreso,103) 'Fecha de ingreso'
From FacturasFormasPagos FF
join Facturas F on F.codFactura=FF.codFactura
join Empleados E on E.legajo=F.legajoFacturador
join FormasPagos FP on FP.codFormaPago=FF.codFormaPago
Join TiposEnvios T on T.codTipoEnvio=F.codTipoEnvio
join Detalle_Facturas DF on DF.codFactura=F.codFactura
join Productos P on P.codProd=DF.codProd
where YEAR(F.fechaPedido)=2020 or ( p.nombreProd LIKE 'E%' or DATEDIFF(YEAR,E.fechaIngreso,GETDATE())>3)
Order by 'Monto de pago' desc



Se deben necesita obtener ( el nombre, fecha de compra, cantidad) de los 3 productos que se vendieron en mayor cantidad en una venta. Se debe tener en cuenta que únicamente se mostraran los 
productos pagados en efectivo o Transferencia, y cuyos compradores no tengan 
documento tipo CUIL ni los productos sean del tipo Agenda. Se deberá ordenar por orden alfabético ascendente según el nombre del producto.


Select top 3 P.nombreProd 'Producto',  CONVERT(VARCHAR,F.fechaPedido,103) 'Fecha de compra', DF.cantidad 'Cantidad comprada'
From Productos P
Join Detalle_Facturas DF on DF.codProd=P.codProd
join Facturas F on F.codFactura=DF.codFactura
join FacturasFormasPagos FF on FF.codFactura=F.codFactura
Join FormasPagos FP on FP.codFormaPago=FF.codFormaPago
join Clientes C on F.codCliente=C.codCliente
join TiposDocumentos TD on	TD.codTipoDoc =C.codTipoDoc
join TiposDeProductos TP on TP.codTipoProd=P.codProd
Where (FP.nomFormaPago= 'Efectivo' or FP.nomFormaPago='Transferencia') and (not TD.nombreTipoDoc='C.U.I.L' and not TP.nomTipoProducto='Agenda')
Order by DF.cantidad desc, p.nombreProd asc

Select top 3 P.nombreProd 'Producto',  CONVERT(VARCHAR,F.fechaPedido,103) 'Fecha de compra', DF.cantidad 'Cantidad comprada'
From Productos P
full  Join Detalle_Facturas DF on DF.codProd=P.codProd
full  join Facturas F on F.codFactura=DF.codFactura
full  join FacturasFormasPagos FF on FF.codFactura=f.codFactura
full  Join FormasPagos FP on FP.codFormaPago=FF.codFormaPago
full  join Clientes C on F.codCliente=C.codCliente
full join TiposDocumentos TD on	TD.codTipoDoc =C.codTipoDoc
full  join TiposDeProductos TP on TP.codTipoProd=P.codProd
Where (FP.nomFormaPago= 'Efectivo' or FP.nomFormaPago='Transferencia') and (not TD.nombreTipoDoc='C.U.I.L' and not TP.nomTipoProducto='Agenda')
Order by DF.cantidad desc, p.nombreProd asc

Select *
From facturas
Se solicita mostrar los nombres de los clientes los productos que hayan comprado durante este año. O tambien que sus precios sean superiores a $100 y enviados por Correo Argentino, o la cantidad de productos comprados debe estar entre 10 y 100.
 Los clientes deben estar ordenados alfabéticamente de los clientes mas viejos a los mas jovenes. Tambien se debe devolver la cantidad de productos comprados, el precio unitario de dichos productos, el tipo de envio que se utilizo y el dia y mes de la compra.
 

Select CONCAT(C.nombre,' ',C.apellido) 'Nombre completo', P.nombreProd 'Producto', DF.cantidad 'Cantidad comprada',P.precio 'Precio unitario', T.nombre 'Tipo de envio', CONCAT(DAY(F.fechaPedido),'/',MONTH(F.fechaPedido)) 'Dia y mes de compra'
from Clientes C
join Facturas F on C.codCliente=F.codCliente
join Detalle_Facturas DF on F.codFactura=DF.codFactura
join Productos P on P.codProd=DF.codProd
join TiposEnvios T on T.codTipoEnvio=F.codTipoEnvio
Where Year(GETDATE())=Year(F.fechaPedido) or ((P.precio>100  and T.nombre = 'Correo Argentino') or DF.cantidad between 10 and 100)
Order by C.fechaNacimiento asc

