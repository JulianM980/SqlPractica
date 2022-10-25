alter function Contar_cadena
(@candena varchar (30)=' ')
returns bigint
begin 
declare @cuenta bigint
set @cuenta=len(@candena)
return @cuenta
end



SELECT dbo.Contar_cadena('tuki')  Cuenta

Select descripcion ,dbo.Contar_cadena(descripcion) as 'Cantidad de caracteres'
From articulos


alter function Facturas_x_anio
(@Anio int)
returns table
AS 
Return(Select Concat(c.nom_cliente,' ',c.ape_cliente) 'Cliente',
CONCAT(v.nom_vendedor,' ',v.ape_vendedor) 'Vendedor',
f.nro_factura
From facturas f
Join clientes c on f.cod_cliente=c.cod_cliente
join vendedores v on f.cod_vendedor=v.cod_vendedor
Where YEAR(F.fecha)=@Anio
)

Select Sum(df.pre_unitario*df.cantidad),fa.Cliente,CONCAT(v.nom_vendedor,' ',v.ape_vendedor) 'Vendedor',f.nro_factura
From facturas f
Join detalle_facturas df on f.nro_factura=df.nro_factura
Join Facturas_x_anio(2022) fa on f.nro_factura=fa.nro_factura
Group by c.nom_cliente,c.ape_cliente,v.nom_vendedor,v.ape_vendedor,f.nro_factura

--EJERCICIO2


create function Conversion
(@montoEnPesos numeric=0,
@cotizacion numeric=0)
returns numeric
begin
declare @conversion numeric
set @conversion=(@montoEnPesos/@cotizacion)
return @conversion
end

select dbo.Conversion(2300000,289.5) 'Cambio en dolares'

Create trigger dis_stock_menos_igual
on detalle_facturas
for insert
as
Declare @stock int
select @stock=stock from articulos
Join inserted
on inserted.cod_articulo=articulos.cod_articulo
if(@stock>=(select cantidad
From inserted))
update articulos set stock=stock-inserted.cantidad
from articulos
join inserted
on inserted.cod_articulo=articulos.cod_articulo
else
begin
raiserror('El stock en articulos es menor que la cantidad solicitada',16,1)
rollback transaction
end

Insert into detalle_facturas (nro_factura,cod_articulo,pre_unitario,cantidad) values (7,16,2.00,12)


Cre