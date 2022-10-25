Create database Parcial_1
Use Parcial_1

Create table Paquetes
(id_paquete int,
id_destino int,
valor_cuota money,
cant_cuota int,
cant_dias int,
Constraint Pk_paquete Primary key (id_paquete),
Constraint Fk_destino Foreign key (id_destino) References Destinos(id_destino))

Create table Pagos
(id_pago int identity(1,1),
id_pasajero int,
id_paquete int,
monto_cuota money,
fecha_pago datetime,
fecha_vto datetime,
id_f_pago int,
Constraint Pk_pagos primary key(id_pago),
Constraint Fk_pasajeros_pagos foreign key(id_pasajero) References Pasajeros(id_pasajero),
Constraint Fk_paquetes_pagos foreign key(id_paquete) References Paquetes(id_paquete),
Constraint Fk_formaPagos_pagos foreign key(id_f_pago) References F_pagos(id_f_pago))

INSERT INTO Pagos(id_pasajero,id_paquete,monto_cuota,fecha_pago,fecha_vto,id_f_pago) 
VALUES(1,4,4509,'12/09/2021','10/09/2021',5)

Alter table Pagos
ADD recargo int,

Update Pagos
Set recargo=0
Where fecha_pago<=fecha_vto,

Update Pagos	
Set recargo=10
Where fecha_pago>fecha_vto,

Update Paquetes
Set valor_cuota=valor_cuota*1.05

 
