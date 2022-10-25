Select cod_cliente 'Codigo',Concat(nom_cliente,' ',ape_cliente) 'Nombre','Cliente' Tipo
From Clientes
Where nro_tel is not null AND [e-mail] is not null
Union
Select cod_vendedor,CONCAT(nom_vendedor,' ',ape_vendedor),'Vendedor'
From vendedores
Where nro_tel is not null AND [e-mail] is not null
Order by 3,2

Select descripcion 'Nombre','Articulo' Tipo
From articulos
Union
Select CONCAT(nom_cliente,' ',ape_cliente),'Cliente'
From clientes
Union
Select CONCAT(nom_vendedor,' ',ape_vendedor), 'Vendedor'
From vendedores
Order by 2,1

Select f.nro_factura,SUM(df.cantidad) 'Cantidad total',COUNT(df.nro_factura) 'Cantidad de items', Sum(cantidad*pre_unitario) 'Importe total'
From detalle_facturas df join facturas f on f.nro_factura=df.nro_factura
Where YEAR(f.fecha)=YEAR(getdate())
Group by f.nro_factura

Select Sum(pre_unitario*cantidad) 'Total','Diario' Tipo
From detalle_facturas df
Join facturas f on f.nro_factura=df.nro_factura
Where day(f.fecha)=DAY(GETDATE()) AND MONTH(f.fecha)=MONTH(GETDATE()) AND YEAR(f.fecha)=YEAR(GETDATE())
Union
Select Sum(pre_unitario*cantidad) 'Total', 'Mesual'
From detalle_facturas df
Join facturas f on f.nro_factura=df.nro_factura
WHERE MONTH(f.fecha)=MONTH(GETDATE()) AND YEAR(f.fecha)=YEAR(GETDATE())
union
Select  Sum(pre_unitario*cantidad) 'Total','Anual' 
From detalle_facturas df
Join facturas f on f.nro_factura=df.nro_factura
WHERE YEAR(f.fecha)=YEAR(GETDATE())

Select Count(f.nro_factura) 'Cantidad de facturas', f.fecha 'Fecha'
From facturas f
Where month(f.fecha) not in (1,7,12)
Group by f.fecha
Order by 1,2 desc


Select f.fecha,f.cod_cliente, SUM(dF.pre_unitario*cantidad) 'Importe total',AVG(df.pre_unitario*cantidad) 'Importe promedio'
From detalle_facturas df
Join facturas f on f.nro_factura=df.nro_factura
join clientes c on c.cod_cliente=f.cod_cliente
join vendedores v on v.cod_vendedor=f.cod_vendedor
WHERE f.cod_vendedor>2
Group by f.fecha, f.cod_cliente
Order by 1 desc, 2 asc

Select f.fecha,df.cod_articulo, SUM(dF.pre_unitario*cantidad) 'Importe total',AVG(df.pre_unitario*cantidad) 'Importe promedio'
From detalle_facturas df
Join facturas f on f.nro_factura=df.nro_factura
join clientes c on c.cod_cliente=f.cod_cliente
join vendedores v on v.cod_vendedor=f.cod_vendedor
WHERE f.cod_cliente<2
Group by f.fecha, df.cod_articulo
Order by 1 desc, 2 asc


Select f.nro_factura 'N Factura', Sum(df.cantidad) 'Cantidad' ,Sum(df.cantidad*df.pre_unitario) 'Importe total', avg(df.cantidad*df.pre_unitario) 'Importe Promedio'
From detalle_facturas df
Join articulos a on a.cod_articulo=df.cod_articulo
Join facturas f on f.nro_factura=df.nro_factura
Where f.fecha between '13/02/2007' and '13/07/2010'
Group by f.nro_factura
ORDER BY 4 desc

Select descripcion 'Articulos',pre_unitario 'Precio'
From articulos
Where cod_articulo not in (Select distinct  df1.cod_articulo
							From detalle_facturas df1, facturas f1 
							Where YEAR(f1.fecha)=YEAR(getdate()) 
							and df1.nro_factura=f1.cod_cliente) 
	and pre_unitario between 50 and 100

Select Concat(c.nom_cliente,' ',c.ape_cliente) 'Cliente', Count(f.nro_factura) 'Cantidad de compras'
From facturas f
Join clientes c on c.cod_cliente=f.cod_cliente
Where year(f.fecha)=YEAR(getdate())-1
Group by c.nom_cliente,c.ape_cliente
Having Count(nro_factura)>2



Select cod_cliente,Concat(c.nom_cliente,' ',c.ape_cliente) 'Cliente'
From clientes c
Where cod_cliente not in (Select cod_cliente
FROM facturas f
Where f.cod_cliente=c.cod_cliente and
fecha between '12/12/2015' and '13/7/2020')


Select f.nro_factura 'Factura nro',fecha 'Fecha',
Concat(c.nom_cliente,' ',c.ape_cliente) 'Cliente',
Concat(v.nom_vendedor,' ',v.ape_vendedor) 'Vendedor'
From facturas f
Join clientes C on C.cod_cliente=f.cod_cliente
Join vendedores V on V.cod_vendedor=F.cod_vendedor
Where Year(f.fecha) in (Select YEAR(fecha)
From facturas
Group by YEAR(fecha)
Having COUNT(nro_factura)<9)




