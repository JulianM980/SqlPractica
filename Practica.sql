--10
select cod_cliente 'CODIGO DE CLIENTE', nom_cliente+' '+ upper (ape_cliente) 'NOMBRE',calle+' '+CONVERT (varchar (10),altura) 'DIRECCION'
From clientes
Where nom_cliente like 'C%' and ape_cliente like '%Z'

--11
select cod_cliente 'CODIGO DE CLIENTE', nom_cliente+' '+ upper (ape_cliente) 'NOMBRE',calle+' '+CONVERT (varchar (10),altura) 'DIRECCION'
From clientes
Where nom_cliente like'[D-L]%' and nom_cliente not like '[A-G]%'


--12
SELECT V.nom_vendedor+' '+upper (V.ape_vendedor) 'Nombre completo', V.fec_nac,f.fecha
From vendedores V join facturas f on V.cod_vendedor = F.cod_vendedor
where V.nom_vendedor not like '%Z%' and (V.fec_nac>'01/01/1970' and V.fec_nac<'01/01/1980') and (F.fecha>'01/04/2022' and F.fecha< '01/05/2022')

--13



