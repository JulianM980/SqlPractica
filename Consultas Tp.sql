/*Se solicita mostrar los nombres de los clientes y los productos que hayan comprado siempre que sus precios deben ser superior a $100 y enivados por Correo Argentino, o la cantidad de productos comprados debe estar 
entre 10 y 100. Los clientes deben estar ordenados alfabeticamente de forma descendente*/
Select CONCAT(C.nombre,' ',C.apellido) 'Nombre completo', P.nombreProd 'Producto'
from Clientes C
join Facturas F on C.codCliente=F.codCliente
join Detalle_Facturas DF on F.codFactura=DF.codFactura
join Productos P on P.codProd=DF.codProd
join TiposEnvios T on T.codTipoEnvio=F.codTipoEnvio
Where (P.precio>100  and T.nombre = 'Correo Argentino') or DF.cantidad between 10 and 100
Order by C.fechaNacimiento asc

Set dateformat DMY
/*Se necesita mostrar los codigos y montos finalies de las 10 ventas mas grandes realizadas en el 2020. Tambien se debe mostrar los nombres de los empleados que las facturaron y su fecha de ingreso
, tambien se pueden mostrar las venta si los empleados tienen mas de 3 años de antiguedad o los productos vendidos comiencen con E. Las ventas deben estar ordenenas de forma decreciente.*/
Select top 10 F.codFactura 'codigo de venta',((FF.montoPago*FP.recargo)/100)+ff.montoPago+t.costo 'Monto final',F.legajoFacturador, E.nombre+SPACE(1)+E.apellido 'Empleado que facturo el pedido', CONVERT(VARCHAR,fechaIngreso,103) 'Fecha de ingreso'
From FacturasFormasPagos FF
join Facturas F on F.codFactura=FF.codFactura
join Empleados E on E.legajo=F.legajoFacturador
join FormasPagos FP on FP.codFormaPago=FF.codFormaPago
Join TiposEnvios T on T.codTipoEnvio=F.codTipoEnvio
join Detalle_Facturas DF on DF.codFactura=F.codFactura
join Productos P on P.codProd=DF.codProd
where YEAR(F.fechaPedido)=2020 or ( p.nombreProd LIKE 'E%' or E.fechaIngreso < '24/05/2019')
Order by 'Monto final' desc