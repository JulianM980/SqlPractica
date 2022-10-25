create proc SP_VENDEDORES_DEBAJO_PROMEDIO
@Anio INT
as
Select f.idFactura 'FACTURA NRO',
v.idVendedor 'LEGAJO',
CONCAT(dp.nombre,' ',dp.apellido) 'NOMBRE',
CONVERT(varchar,F.fecha,103) as 'FECHA',
SUM(df.cantidad*df.preUnitario) 'IMPORTE TOTAL',
(SELECT AVG(df2.cantidad*DF2.preUnitario)
FROM DETALLES_FACTURAS DF2
jOIN FACTURAS F1 ON F1.idFactura=DF2.idFactura
WHere YEAR(fecha)=@Anio) 'PROMEDIO ANUAL GENERAL'
From DETALLES_FACTURAS df
join FACTURAS f on f.idFactura=df.idDetalleFactura
join VENDEDORES v on v.idVendedor=f.idVendedor 
join DATOS_PERSONALES dp on dp.idDatos=v.idDatosPersonales
Where YEAR(f.fecha)=@Anio
GROUP BY v.idVendedor,dp.nombre,dp.apellido,f.idFactura,f.fecha
HAVING SUM(df.cantidad*df.preUnitario)<(SELECT AVG(df1.cantidad*df1.preUnitario)
FROM
DETALLES_FACTURAS DF1
jOIN FACTURAS 
F1 ON F1.idFactura=DF1.idFactura
WHere
YEAR(fecha)=@Anio)


exec SP_VENDEDORES_DEBAJO_PROMEDIO 2021