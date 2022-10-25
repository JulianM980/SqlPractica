select CONCAT(C.nombre,' ',C.apellido) 'Nombre completo', CONCAT(D.calle,', ',D.altura,', B°',B.nomBarrio)'Direccion'
from Clientes C
join Domicilios D on C.codDom=d.codDom
join Barrios B on D.codBarrio=B.codBarrio
join Facturas F on C.codCliente=F.codCliente
join Empleados E on F.legajoFacturador=E.legajo
where fechaPedido >= DateAdd(YEAR,DateDiff(YEAR,0,Getdate())-2,0) and E.nombre='franca' and E.apellido='gimenez'
order by fechaPedido asc

select concat (C.nombre,' ',C.apellido) 'Nombre completo',montoPago
from Clientes C
join Facturas F on C.codCliente=F.codCliente
join FacturasFormasPagos FFP on F.codFactura=FFP.codFactura
join FormasPagos FP on FFP.codFormaPago=FP.codFormaPago
join Detalle_Facturas DF on F.codFactura=DF.codFactura
where FP.nomFormaPago ='cheque' and montoPago between '10000' and '100000' and fechaEntrega>='2010-01-01'
order by montoPago desc

select c.nombre +' '+c.apellido 'Nombre completo',te.nombre 'Tipo de envio',f.fechaPedido 'Fecha de envio'
from Clientes c
join Facturas f on c.codCliente =f.codCliente
join TiposEnvios te on te.codTipoEnvio =f.codTipoEnvio
where c.nombre!='' and te.nombre='Retiro en local'and YEAR  (f.fechaPedido)= YEAR(GETDATE())
order by fechaPedido asc


select c.nombre +' '+ c.apellido 'Nombre completo',c.fechaNacimiento 'Fecha de nacimiento',g.nomGenero 'Genero',c.documento 'Documento'
from clientes c
join Facturas f on c.codCliente = f.codCliente
join TiposEnvios te on te.codTipoEnvio = f.codTipoEnvio
join Generos g on g.codGenero = c.codGenero 
join TiposDocumentos td on td.codTipoDoc = c.codTipoDoc
where YEAR(c.fechaNacimiento)<2000 and g.nomGenero = 'Femenino' and
td.nombreTipoDoc = 'D.N.I.'
order by fechaNacimiento desc