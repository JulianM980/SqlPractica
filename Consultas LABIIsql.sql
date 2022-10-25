--Se necesita crear una vista que permita mostrar las ventas realizadas en el año en curso por el vendedor donde se detalle
--el numero de factura, el legajo del vendedor, su nombre completo, fecha de dicha venta, importe total de la venta e importe promedio anual.Solo mostar si el importe de venta es menor
--al promedio anual

create view vist_vendedor_anual
as
Select f.idFactura 'FACTURA NRO',
v.idVendedor 'LEGAJO', 
CONCAT(dp.nombre,' ',dp.apellido) 'NOMBRE',
F.fecha 'FECHA',
SUM(df.cantidad*df.preUnitario) 'IMPORTE TOTAL',
(SELECT AVG(df2.cantidad*DF2.preUnitario) 
FROM DETALLES_FACTURAS DF2
jOIN FACTURAS F1 ON F1.idFactura=DF2.idFactura
WHere YEAR(fecha)=YEAR(GETDATE())) 'PROMEDIO ANUAL GENERAL'
From DETALLES_FACTURAS df
join FACTURAS f on f.idFactura=df.idDetalleFactura
join VENDEDORES v on v.idVendedor=f.idVendedor 
join DATOS_PERSONALES dp on dp.idDatos=v.idDatosPersonales
Where YEAR(f.fecha)=YEAR(GETDATE())																
GROUP BY v.idVendedor,dp.nombre,dp.apellido,f.idFactura,f.fecha
HAVING SUM(df.cantidad*df.preUnitario)<(SELECT AVG(df1.cantidad*df1.preUnitario) 
										FROM DETALLES_FACTURAS DF1
										jOIN FACTURAS F1 ON F1.idFactura=DF1.idFactura
										WHere YEAR(fecha)=YEAR(GETDATE())) 






select * from vist_vendedor_anual



