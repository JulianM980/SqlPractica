Select top 15 F.codFactura 'codigo de venta', FF.montopago 'Monto de pago',F.legajoFacturador, E.nombre+SPACE(1)+E.apellido 'Empleado que facturo el pedido', CONVERT(VARCHAR,fechaIngreso,103) 'Fecha de ingreso'
From FacturasFormasPagos FF
join Facturas F on F.codFactura=FF.codFactura
join Empleados E on E.legajo=F.legajoFacturador
join FormasPagos FP on FP.codFormaPago=FF.codFormaPago
Join TiposEnvios T on T.codTipoEnvio=F.codTipoEnvio
join Detalle_Facturas DF on DF.codFactura=F.codFactura
join Productos P on P.codProd=DF.codProd
where YEAR(F.fechaPedido)=2020 or ( p.nombreProd LIKE 'E%' or E.fechaIngreso < '24/05/2019')
Order by 'Monto de pago' desc

Select CONCAT(C.nombre,' ',C.apellido) 'Nombre completo', P.nombreProd 'Producto'
from Clientes C
join Facturas F on C.codCliente=F.codCliente
join Detalle_Facturas DF on F.codFactura=DF.codFactura
join Productos P on P.codProd=DF.codProd
join TiposEnvios T on T.codTipoEnvio=F.codTipoEnvio
Where (P.precio>100  and T.nombre = 'Correo Argentino') or DF.cantidad between 10 and 100
Order by C.fechaNacimiento asc

Select top 15 F.codFactura 'codigo de venta', FF.montopago 'Monto de pago',F.legajoFacturador, E.nombre+SPACE(1)+E.apellido 'Empleado que facturo el pedido', CONVERT(VARCHAR,fechaIngreso,103) 'Fecha de ingreso'
From FacturasFormasPagos FF
join Facturas F on F.codFactura=FF.codFactura
join Empleados E on E.legajo=F.legajoFacturador
join FormasPagos FP on FP.codFormaPago=FF.codFormaPago
Join TiposEnvios T on T.codTipoEnvio=F.codTipoEnvio
join Detalle_Facturas DF on DF.codFactura=F.codFactura
join Productos P on P.codProd=DF.codProd
where YEAR(F.fechaPedido)=2020 or ( p.nombreProd LIKE 'E%' or E.fechaIngreso < '24/05/2019')
Order by 'Monto de pago' desc

Select p.nombreProd 'Producto', CONCAT(DAY(F.fechaPedido),'/',MONTH(F.fechaPedido)) 'Dia y mes de compra'
From Productos P
Join Detalle_Facturas DF on DF.codProd=P.codProd
join Facturas F on F.codFactura=DF.codFactura
join FacturasFormasPagos FF on FF.codFactura=f.codFactura
Join FormasPagos FP on FP.codFormaPago=FF.codFormaPago
join Clientes C on F.codCliente=C.codCliente
join TiposDocumentos TD on	TD.codTipoDoc =C.codTipoDoc
join TiposDeProductos TP on TP.codTipoProd=P.codProd
Where (FP.nomFormaPago= 'Efectivo' or FP.nomFormaPago='Transferencia') and (not TD.nombreTipoDoc='C.U.I.L' and not TP.nomTipoProducto='Agenda')
Order by p.nombreProd

select concat (C.nombre,' ',C.apellido) 'Nombre completo',montoPago
from Clientes C
join Facturas F on C.codCliente=F.codCliente
join FacturasFormasPagos FFP on F.codFactura=FFP.codFactura
join FormasPagos FP on FFP.codFormaPago=FP.codFormaPago
join Detalle_Facturas DF on F.codFactura=DF.codFactura
where FP.nomFormaPago ='cheque' and montoPago between '10000' and '100000' and fechaEntrega>'2010-01-01'
order by montoPago desc

select CONCAT(C.nombre,' ',C.apellido) 'Nombre completo', CONCAT(D.calle,', ',D.altura,', B°',B.nomBarrio)'Direccion'
from Clientes C
join Domicilios D on C.codDom=d.codDom
join Barrios B on D.codBarrio=B.codBarrio
join Facturas F on C.codCliente=F.codCliente
join Empleados E on F.legajoFacturador=E.legajo
where fechaPedido > '2019-12-31'and E.nombre='franca' and E.apellido='gimenez'
order by fechaPedido asc

SELECT TOP 10 c.apellido +', ' +c.nombre 'Clientes' ,c.documento 'Documento', FFP.montoPago 'Monto de pago', fp.nomFormaPago 'Forma de pago', e.apellido +', ' +e.nombre 'Empleados' , g.nomGenero 'Genero del empleado',.nomCanalAtencion 'Canal de atencion'
From FacturasFormasPagos FFP 
INNER JOIN FormasPagos FP 	ON FFP.codFormaPago = FP.codFormaPago
INNER JOIN Facturas F    	ON FFP.codFactura = F.codFactura
INNER JOIN Clientes C	  	ON C.codCliente = F.codCliente
INNER JOIN Empleados E   	ON E.legajo = F.legajoArmadorPedido
INNER JOIN CanalesAtencion CA   ON CA.codCanalAtencion = F.codCanalAtencion
INNER JOIN Generos G		ON G.codGenero = E.codGenero
INNER JOIN TiposDocumentos td ON td.codTipoDoc =  c.codTipoDoc
where ((FP.nomFormaPago ='Debito' or FP.nomFormaPago ='Transferencia') and td.nombreTipoDoc = 'D.N.I.' and g.nomGenero = 'Masculino' )
order by 3  desc;

SELECT TOP 10 c.apellido +', ' +c.nombre 'Clientes' , c.documento 'Documento', 
FFP.montoPago 'Monto de pago', fp.nomFormaPago 'Forma de pago', 
e.apellido +', ' +e.nombre 'Empleados' ,.nomGenero 'Genero del empleado', ca.nomCanalAtencion 'Canal de atencion'
From FacturasFormasPagos FFP 
INNER JOIN FormasPagos FP ON FFP.codFormaPago = FP.codFormaPago
INNER JOIN Facturas F ON FFP.codFactura = F.codFactura
INNER JOIN Clientes C ON C.codCliente = F.codCliente
INNER JOIN Empleados E ON E.legajo = F.legajoArmadorPedido
INNER JOIN CanalesAtencion CA ON CA.codCanalAtencion = F.codCanalAtencion
INNER JOIN Generos G	ON G.codGenero = E.codGenero
INNER JOIN TiposDocumentos td ON td.codTipoDoc =  c.codTipoDoc
where ((FP.nomFormaPago ='Debito' or FP.nomFormaPago ='Transferencia') and td.nombreTipoDoc = 'D.N.I.' and g.nomGenero = 'Masculino' )
order by 3  desc;

select    c.nombre +' '+ c.apellido 'Nombre completo', c.codCliente 'Codigo de cliente', te.nombre 'Tipo de envio', f.fechaPedido 'Fecha de envio'
from Clientes c
join Facturas f on c.codCliente = f.codCliente
join TiposEnvios te on te.codTipoEnvio = f.codTipoEnvio
where F.codTipoEnvio = 10 and YEAR(f.fechaPedido) = YEAR(GETDATE())
order by fechaPedido asc

select c.nombre +' '+ c.apellido 'Nombre completo',c.fechaNacimiento 'Fecha de nacimiento',g.nomGenero 'Genero',c.documento 'Documento'
from clientes c
join Facturas f on c.codCliente = f.codCliente
join TiposEnvios te on te.codTipoEnvio = f.codTipoEnvio
join Generos g on g.codGenero = c.codGenero 
join TiposDocumentos td on td.codTipoDoc = c.codTipoDoc
where F.codTipoEnvio = 10 and YEAR(c.fechaNacimiento)<2000 and g.nomGenero = 'Femenino' and td.nombreTipoDoc = 'D.N.I.'
order by fechaNacimiento desc

SELECT TOP 10 c.apellido +', ' +c.nombre 'Clientes' ,c.documento 'Documento', FFP.montoPago 'Monto
de pago', fp.nomFormaPago 'Forma de pago', e.apellido +', ' +e.nombre 'Empleados' , g.nomGenero
'Genero del empleado',ca.nomCanalAtencion 'Canal de atencion'
From FacturasFormasPagos FFP
INNER JOIN FormasPagos FP ON FFP.codFormaPago = FP.codFormaPago
INNER JOIN Facturas F ON FFP.codFactura = F.codFactura
INNER JOIN Clientes C ON C.codCliente = F.codCliente
INNER JOIN Empleados E ON E.legajo = F.legajoArmadorPedido
INNER JOIN CanalesAtencion CA ON CA.codCanalAtencion = F.codCanalAtencion
INNER JOIN Generos G ON G.codGenero = E.codGenero
INNER JOIN TiposDocumentos td ON td.codTipoDoc = c.codTipoDoc
where ((FP.nomFormaPago ='Debito' or FP.nomFormaPago ='Transferencia') and td.nombreTipoDoc =
'D.N.I.' and g.nomGenero = 'Masculino' )
order by 3 desc;

SELECT m.nomMaterial 'Material',p.peso 'Peso',p.precio 'Precio', 	prov.nombre 'Proveedor',prov.documento 'CUIL',d.calle 'Calle', b.nomBarrio 'Barrio',loc.nomLocalidad 'Localidad'
FROM Productos p
INNER JOIN Materiales m ON p.codMaterial = m.codMaterial
INNER JOIN Proveedores_Materiales pm ON pm.codMaterial = m.codMaterial
INNER JOIN Proveedores prov ON prov.codProv = pm.codProv
INNER JOIN TiposDocumentos td ON td.codTipoDoc = prov.codTipoDoc
INNER JOIN Domicilios d ON d.codDom = prov.codDom
inner join Barrios b ON b.codBarrio = d.codBarrio
INNER JOIN Localidades loc ON loc.codLocalidad = b.codLocalidad
where( (td.nombreTipoDoc = 'cuit' or td.nombreTipoDoc = 'cuil')and p.peso between 0.1 and 100  and p.precio >= 250)
order by 3 ;

SELECT TOP 10 c.apellido +', ' +c.nombre 'Clientes',c.documento 'Documento',FFP.montoPago 'Monto de pago',fp.nomFormaPago 'Forma de pago',e.apellido +', ' +e.nombre 'Empleados',g.nomGenero 'Genero del empleado',ca.nomCanalAtencion 'Canal de atencion'
From FacturasFormasPagos FFP 
INNER JOIN FormasPagos FP ON FFP.codFormaPago = FP.codFormaPago
INNER JOIN Facturas F ON FFP.codFactura = F.codFactura
INNER JOIN Clientes C ON C.codCliente = F.codCliente
INNER JOIN Empleados E ON E.legajo = F.legajoArmadorPedido
INNER JOIN CanalesAtencion CA ON CA.codCanalAtencion = F.codCanalAtencion
INNER JOIN Generos G ON G.codGenero = E.codGenero
INNER JOIN TiposDocumentos td ON td.codTipoDoc =  c.codTipoDoc
where ((FP.nomFormaPago ='Debito' or FP.nomFormaPago ='Transferencia') and td.nombreTipoDoc = 'D.N.I.' and g.nomGenero = 'Masculino' )
order by 3  desc;