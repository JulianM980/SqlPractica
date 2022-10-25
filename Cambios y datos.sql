Use Imprenta_Laser

Insert into Provincias(nomProvincia) values('CABA'),('BUENOS AIRES'),('CATAMARCA'),('CHUBUT'),('CORDOBA'),('CORRIENTES'),('ENTRE RIOS'),('FORMOSA'),('JUJUY'),('LA PAMPA'),('LA RIOJA'),('MENDOZA'),('MISIONES'),('NEUQUEN'),('RIO NEGRO'),('SALTA'),('SAN JUAN'),('SAN LUIS'),('SANTA FE'),('SANTA CRUZ'),('SANTIAGO DEL ESTERO'),('TIERRA DEL FUEGO'),('TUCUMAN');

INSERT INTO Localidades(codProvincia,nomLocalidad) VALUES (13,'Cordoba'),(13,'Rio Cuarto'),(13,'Villa Maria'),(13,'Carlos Paz'),(13,'San Francisco'),(13,'Alta Gracia'),
(13,'Rio Tercero'),(13,'Bell Ville'),(13,'La Calera'),(13,'Jesus Maria'),(13,'Villa Dolores'),(13,'Cruz del Eje'),(13,'Villa Allende'),(13,'Marcos Juarez'),
(13,'Arroyito'),(13,'Dean Funes'),(13,'Colonia Caroya'),(13,'Laboulaye'),(13,'Rio Segundo'),(13,'Rio Ceballos'),(13,'Cosquin'),(13,'Villa Nueva'),(13,'Unquillo'),
(13,'Morteros'),(13,'La Falda'),(13,'Las Varillas'),(13,'Villa del Rosario'),(13,'Pilar'),(13,'Oncativo'),(13,'Santa Rosa de Calamuchita'),(13,'La Carlota'),
(13,'Malvinas Argentinas'),(13,'Estacion Juarez Celman'),(13,'Almafuerte'),(13,'General Cabrera'),(13,'Capilla del Monte'),(13,'General Deheza'),(13,'Saldan');

select *
from Localidades;

insert into barrios(nomBarrio,codLocalidad) values ('Alto Alberdi',4),('Arguello',4),('Alberdi',4),('Alta Cordoba',4),('Alto Verde',4),('Altamira',4),('Bella Vista',4),('Juniors',4),
('Yofre Norte',4),('Yofre Sur',4),('Centro',4),('Chateau Carreras',4),('Cerro de las Rosas',4),('Cofico',4),('General Paz',4),('Guemes',4),('General Arenales',4),('Jardin',4),
('Jose Ignacio Diaz',4),('La France',4),('Los Naranjos',4),('Nueva Cordoba',4),('Observatorio',4),('Parque Capital',4),('Rosedal',4),('San Francisco',4),
('San Vicente',4),('Santa Isabel',4),('Urca',4),('Villa Belgrano',4),('Villa el Libertador',4),('Villa Gran Parque',4),('Horizonte',4),('Liceo',4)

Select *
from Barrios

insert into TiposDomicilios(nomTipoDom) values ('Legal'),('Personal'),('Fiscal'),('Comercial'),('Operativo')

select *
From TiposDomicilios

Insert into Generos(nomGenero) values ('Masculino'),('Femenino'),('No binario')

select *
from Generos

Insert into Puestos(nomPuesto) values('Supervisor'),('Administrativo'),('Contador'),('Operario'),('Gerente'),('Atencion al cliente'),('Limpieza'),('Comunicacion')

Select *
From Puestos

Insert into TiposDocumentos(nombreTipoDoc) values('D.N.I.'),('L.C.'),('L.E.'),('Pasaporte'),('C.I.'),('CUIL'),('CUIT')

Select *
From TiposDocumentos

Insert into FormasPagos(nomFormaPago,recargo) values('Efectivo',0),('Cheque',15),('Transferencia',0),('Debito',0),('Credito',7),('Cuenta corriente',10),('Mercado Pago',10)

Select *
From FormasPagos

Insert into CanalesAtencion(nomCanalAtencion) values('Telefono'),('e-mail'),('personal')

Select *
From CanalesAtencion

Insert into TiposEnvios(nombre,costo) values('Cadete',350.00),('Andreani',800.00),('Correo Argentino',600.00),('Retiro en local',0.00)

Select *
From TiposEnvios

select *
From Provincias

insert into Colores(nomColor) values('Negro'), ('azul'), ('marrón'),
 ('gris'), ('verde'), ('naranja'), ('rosa'), ('púrpura'), ('rojo'), ('blanco'), ('amarillo')

 select *
 from Colores

 Insert into TiposDeProductos(nomTipoProducto) values('Talonario Afip'),('Resma troquelada'),('Agenda'),('Libro'),('Tarjeta'),('Folleto'),('Cartel'),('Sobre'),('Rifa'),('Catalogo'),('Vinilo'),('Entrada'),('Caja'),('Hoja impresa')

 select *
 From TiposDeProductos

 Select *
 From Formatos

 Select *
 From Resoluciones

 


 Select *
 From Formatos


 Select *
 From Proveedores_Materiales

alter table Formatos
add nomFormato varchar (10)

alter table Formatos
add formato varchar (30)

Insert into Formatos(formato,nomFormato) VALUES ('1682 x 2378 mm','4A0 '),
('1189 x 1682 mm','2A0'),
('841 x 1189 mm','A0 '),
('594 x 841 mm','A1'),
('420 x 594 mm','A2 '),
('297 x 420 mm','A3'),
('210 x 297 mm','A4 '),
('148 x 210 mm','A5'),
('105 x 148 mm','A6'),
('74 x 105 mm','A7 '),
('52 x 74 mm','A8  '),
('37 x 52 mm','A9'),
('26 x 37 mm','A10 '),
('200x200x100','Caja A1'),
('250x200x200','Caja A2'),
('304x185x132','Caja B1'),
('320x320x170','Caja C1'),
('330x220x310','Caja D1'),
('360x240x270','Caja E1'),
('375x250x305','Caja F1'),
('400x350x300','Caja G1'),
('490x490x300','Caja H1'),
('600x500x150','Caja I1'),
('600x500x300','Caja I2'),
('600x500x400','Caja I3'),
('615x380x340','Caja J1'),
('420x315x270','Caja K1'),
('790x590x540','Caja L1'),
('800x440x250','Caja M1')

Select *
From Formatos

Insert into Materiales(nomMaterial) values ('Carton'),('Papel'),('Papel autoadhesivo'),('Plastico'),('Imanes'),('Vinilo')

Select *
from Materiales

--Domicilios
Insert into Domicilios (calle,altura,piso,dpto,codPostal,codTipoDom,codBarrio) Values ('Negrete de la camara',2221,NULL,NULL,5012,4,25)
Insert into Domicilios (calle,altura,piso,dpto,codPostal,codTipoDom,codBarrio) Values ('Chancalai',1123,NULL,NULL,5007,13,19)
Insert into Domicilios (calle,altura,piso,dpto,codPostal,codTipoDom,codBarrio) Values ('Bv. San Juan',345,2,C,5002,1,31)
Insert into Domicilios (calle,altura,piso,dpto,codPostal,codTipoDom,codBarrio) Values ('Av. Las Malvinas',3000,NULL,NULL,5010,10,43)
Insert into Domicilios (calle,altura,piso,dpto,codPostal,codTipoDom,codBarrio) Values ('Av. Gauss',345,NULL,NULL,5002,4,88)
Insert into Domicilios (calle,altura,piso,dpto,codPostal,codTipoDom,codBarrio) Values ('Av. Las Malvinas',5235,NULL,NULL,5015,13,49)
Insert into Domicilios (calle,altura,piso,dpto,codPostal,codTipoDom,codBarrio) Values ('Emilio Salgari ',2080,NULL,Arriba,5017,4,16)
Insert into Domicilios (calle,altura,piso,dpto,codPostal,codTipoDom,codBarrio) Values ('Eduardo San Martin',1517,NULL,NULL,5012,1,28)
Insert into Domicilios (calle,altura,piso,dpto,codPostal,codTipoDom,codBarrio) Values ('Juan del campillo',765,NULL,NULL,5005,7,40)
Insert into Domicilios (calle,altura,piso,dpto,codPostal,codTipoDom,codBarrio) Values ('Jose de quevedo ',7889,NULL,NULL,5012,4,25)
Insert into Domicilios (calle,altura,piso,dpto,codPostal,codTipoDom,codBarrio) Values ('Av. Colon ',567,5,D,5004,7,7)
Insert into Domicilios (calle,altura,piso,dpto,codPostal,codTipoDom,codBarrio) Values ('Talleres',1120,NULL,NULL,5004,7,52)
Insert into Domicilios (calle,altura,piso,dpto,codPostal,codTipoDom,codBarrio) Values ('Av. La Voz del Interior',4579,NULL,NULL,5020,13,NULL)
Insert into Domicilios (calle,altura,piso,dpto,codPostal,codTipoDom,codBarrio) Values ('Av.Donatto Alvarez',3456,NULL,NULL,5009,13,NULL)
Insert into Domicilios (calle,altura,piso,dpto,codPostal,codTipoDom,codBarrio) Values ('Av. Fuerza Aerea ',4234,NULL,NULL,5015,10,NULL)
Insert into Domicilios (calle,altura,piso,dpto,codPostal,codTipoDom,codBarrio) Values ('los tintines',231,NULL,NULL,5001,4,1)
Insert into Domicilios (calle,altura,piso,dpto,codPostal,codTipoDom,codBarrio) Values ('sarachaga',1242,2,4,5000,4,10)
Insert into Domicilios (calle,altura,piso,dpto,codPostal,codTipoDom,codBarrio) Values ('de la rosa',759,3,3,5000,4,7)
Insert into Domicilios (calle,altura,piso,dpto,codPostal,codTipoDom,codBarrio) Values ('gral paz',545,7,8,5000,7,31)
Insert into Domicilios (calle,altura,piso,dpto,codPostal,codTipoDom,codBarrio) Values ('las vertientes',456,NULL,NULL,5002,7,34)
Insert into Domicilios (calle,altura,piso,dpto,codPostal,codTipoDom,codBarrio) Values ('lascano',1232,NULL,NULL,5003,7,37)
Insert into Domicilios (calle,altura,piso,dpto,codPostal,codTipoDom,codBarrio) Values ('cordoba',1268,1,5,5001,4,40)
Insert into Domicilios (calle,altura,piso,dpto,codPostal,codTipoDom,codBarrio) Values ('castelar',1568,3,2,5012,4,43)
Insert into Domicilios (calle,altura,piso,dpto,codPostal,codTipoDom,codBarrio) Values ('pinto',789,NULL,NULL,5000,7,58)
Insert into Domicilios (calle,altura,piso,dpto,codPostal,codTipoDom,codBarrio) Values ('copacabana',963,2,4,5015,7,61)
Insert into Domicilios (calle,altura,piso,dpto,codPostal,codTipoDom,codBarrio) Values ('sarandi',364,15,3,5010,4,64)
Insert into Domicilios (calle,altura,piso,dpto,codPostal,codTipoDom,codBarrio) Values ('vivees',1564,NULL,NULL,5000,4,16)
Insert into Domicilios (calle,altura,piso,dpto,codPostal,codTipoDom,codBarrio) Values ('correa',123,2,1,5001,4,19)
Insert into Domicilios (calle,altura,piso,dpto,codPostal,codTipoDom,codBarrio) Values ('iribois',1789,2,1,5013,7,22)
Insert into Domicilios (calle,altura,piso,dpto,codPostal,codTipoDom,codBarrio) Values ('castelar',654,NULL,NULL,5012,7,73)
Insert into Domicilios (calle,altura,piso,dpto,codPostal,codTipoDom,codBarrio) Values ('mendiolaza',987,NULL,NULL,5010,4,76)
Insert into Domicilios (calle,altura,piso,dpto,codPostal,codTipoDom,codBarrio) Values ('ruiz',1453,7,3,5000,4,79)
Insert into Domicilios (calle,altura,piso,dpto,codPostal,codTipoDom,codBarrio) Values ('colombres',658,NULL,NULL,5001,4,88)
Insert into Domicilios (calle,altura,piso,dpto,codPostal,codTipoDom,codBarrio) Values ('suquia',954,2,2,5000,4,91)
Insert into Domicilios (calle,altura,piso,dpto,codPostal,codTipoDom,codBarrio) Values ('santa fe',3690,NULL,NULL,5000,7,94)
Insert into Domicilios (calle,altura,piso,dpto,codPostal,codTipoDom,codBarrio) Values ('uberman ',1245,NULL,NULL,5000,4,28)
Insert into Domicilios (calle,altura,piso,dpto,codPostal,codTipoDom,codBarrio) Values ('Av. Capdevilla',3456,NULL,NULL,5013,10,25)
Insert into Domicilios (calle,altura,piso,dpto,codPostal,codTipoDom,codBarrio) Values ('Bv. Los Alemanes',234,3,4,5018,1,97)
Insert into Domicilios (calle,altura,piso,dpto,codPostal,codTipoDom,codBarrio) Values ('Los italianos ',6119,NULL,NULL,5020,4,61)
Insert into Domicilios (calle,altura,piso,dpto,codPostal,codTipoDom,codBarrio) Values ('Emilio Olmos',345,6,D,5003,1,64)
Insert into Domicilios (calle,altura,piso,dpto,codPostal,codTipoDom,codBarrio) Values ('Belgrano',245,3,B,5001,1,46)
Insert into Domicilios (calle,altura,piso,dpto,codPostal,codTipoDom,codBarrio) Values ('Consejal  Alonso',266,NULL,NULL,5019,13,19)
Insert into Domicilios (calle,altura,piso,dpto,codPostal,codTipoDom,codBarrio) Values ('tomas de irobi ',5709,1,1,5008,1,1)
Insert into Domicilios (calle,altura,piso,dpto,codPostal,codTipoDom,codBarrio) Values ('pimentel',456,2,1,5009,1,4)
Insert into Domicilios (calle,altura,piso,dpto,codPostal,codTipoDom,codBarrio) Values ('monsenior pablo cabrera',469,1,0,5007,1,7)
Insert into Domicilios (calle,altura,piso,dpto,codPostal,codTipoDom,codBarrio) Values ('general paz',570,3,4,5008,4,1)
Insert into Domicilios (calle,altura,piso,dpto,codPostal,codTipoDom,codBarrio) Values ('buenos aires',457,4,1,5003,4,13)
Insert into Domicilios (calle,altura,piso,dpto,codPostal,codTipoDom,codBarrio) Values ('salta',1700,1,2,5000,4,16)
Insert into Domicilios (calle,altura,piso,dpto,codPostal,codTipoDom,codBarrio) Values ('manuel belgrano',348,1,3,5001,4,19)
Insert into Domicilios (calle,altura,piso,dpto,codPostal,codTipoDom,codBarrio) Values ('donato alvarez',432,3,1,5002,4,58)
Insert into Domicilios (calle,altura,piso,dpto,codPostal,codTipoDom,codBarrio) Values ('rancagua',170,3,3,5003,10,40)
Insert into Domicilios (calle,altura,piso,dpto,codPostal,codTipoDom,codBarrio) Values ('maipu',100,3,5,5004,13,43)
Insert into Domicilios (calle,altura,piso,dpto,codPostal,codTipoDom,codBarrio) Values ('alsonso de ubeda',126,4,2,5006,13,52)
Insert into Domicilios (calle,altura,piso,dpto,codPostal,codTipoDom,codBarrio) Values ('sagrada familia',540,5,1,5008,10,61)
Insert into Domicilios (calle,altura,piso,dpto,codPostal,codTipoDom,codBarrio) Values ('mosconi',140,1,0,5003,1,100)
Insert into Domicilios (calle,altura,piso,dpto,codPostal,codTipoDom,codBarrio) Values ('mechero escola',250,1,0,5004,4,82)
Insert into Domicilios (calle,altura,piso,dpto,codPostal,codTipoDom,codBarrio) Values ('concepcion de vermejo',546,1,0,5008,10,85)
Insert into Domicilios (calle,altura,piso,dpto,codPostal,codTipoDom,codBarrio) Values ('thomas edison ',2860,1,4,5001,1,1)
Insert into Domicilios (calle,altura,piso,dpto,codPostal,codTipoDom,codBarrio) Values ('pedernera',4402,4,1,5002,1,4)
Insert into Domicilios (calle,altura,piso,dpto,codPostal,codTipoDom,codBarrio) Values ('altolaguirre',520,2,1,5003,4,7)
Insert into Domicilios (calle,altura,piso,dpto,codPostal,codTipoDom,codBarrio) Values ('homero',50,5,6,5005,7,10)
Insert into Domicilios (calle,altura,piso,dpto,codPostal,codTipoDom,codBarrio) Values ('santa fe',900,1,3,5001,10,13)
Insert into Domicilios (calle,altura,piso,dpto,codPostal,codTipoDom,codBarrio) Values ('general paz',250,3,8,5001,13,16)
Insert into Domicilios (calle,altura,piso,dpto,codPostal,codTipoDom,codBarrio) Values ('buenos aires',501,3,9,5001,1,19)
Insert into Domicilios (calle,altura,piso,dpto,codPostal,codTipoDom,codBarrio) Values ('rondeau',5004,7,10,5006,1,22)
Insert into Domicilios (calle,altura,piso,dpto,codPostal,codTipoDom,codBarrio) Values ('luis vernet',888,6,2,5007,1,25)
Insert into Domicilios (calle,altura,piso,dpto,codPostal,codTipoDom,codBarrio) Values ('celestino vidal',525,5,3,5008,10,28)
Insert into Domicilios (calle,altura,piso,dpto,codPostal,codTipoDom,codBarrio) Values ('alsina',1024,7,4,5010,10,31)
Insert into Domicilios (calle,altura,piso,dpto,codPostal,codTipoDom,codBarrio) Values ('alsina',1900,9,1,5009,7,34)
Insert into Domicilios (calle,altura,piso,dpto,codPostal,codTipoDom,codBarrio) Values ('federico rauch',3459,2,7,5002,7,37)
Insert into Domicilios (calle,altura,piso,dpto,codPostal,codTipoDom,codBarrio) Values ('bulnes',2540,4,5,5001,4,40)
Insert into Domicilios (calle,altura,piso,dpto,codPostal,codTipoDom,codBarrio) Values ('charcas',2300,5,2,5004,1,43)








select*
from Domicilios

Alter table Proveedores
Alter column email varchar (80)


SET DATEFORMAT DMY

--Clientes
												
UPDATE Clientes
SET apellido=null
where codCliente=366
												
INSERT INTO Clientes(nombre,apellido,documento,telefono,fechaNacimiento,email,codDom,codTipoDoc,codGenero) VALUES ('Julian','Martinez',41521933,'3517014715', '9/12/1998','2martinezjulian@gmail.com',1,1,1)
INSERT INTO Clientes(nombre,apellido,documento,telefono,fechaNacimiento,email,codDom,codTipoDoc,codGenero) VALUES ('Federico','Weiss',42890987,'3515890987', '2/9/1999','fedeweiss@yahoo.com.ar',37,1,7)
INSERT INTO Clientes(nombre,apellido,documento,telefono,fechaNacimiento,email,codDom,codTipoDoc,codGenero) VALUES ('Agustin ','Videla',40987656,'3541567898', '1/12/1996','agusvidela96@hotmail.com',4,1,1)
INSERT INTO Clientes(nombre,apellido,documento,telefono,fechaNacimiento,email,codDom,codTipoDoc,codGenero) VALUES ('Carolina','Holdorf',41098765,'3516789091', '12/12/1997','caroholdor@gmail.com',28,1,4)
INSERT INTO Clientes(nombre,apellido,documento,telefono,fechaNacimiento,email,codDom,codTipoDoc,codGenero) VALUES ('Maria Gabriela','Cesar',20996432,'3512283788', '19/11/1969','mariagabrielac@gmail.com',1,1,4)
INSERT INTO Clientes(nombre,apellido,documento,telefono,fechaNacimiento,email,codDom,codTipoDoc,codGenero) VALUES ('Dante','Bonanno',18789987,'3512898876', '20/10/1960','dantobananno@outlook.com.ar',19,1,1)
INSERT INTO Clientes(nombre,apellido,documento,telefono,fechaNacimiento,email,codDom,codTipoDoc,codGenero) VALUES ('Julia','Busso',42298799,'3513456534', '21/7/1999','Ju.Busso@gmail.com',7,1,4)
INSERT INTO Clientes(nombre,apellido,documento,telefono,fechaNacimiento,email,codDom,codTipoDoc,codGenero) VALUES ('La caldear S.A','NULL',20-05854965-3,'3514567898',NULL,'Administracion@caldear.com',13,19,NULL)
INSERT INTO Clientes(nombre,apellido,documento,telefono,fechaNacimiento,email,codDom,codTipoDoc,codGenero) VALUES ('Sancor seguros','NULL',2-798909875-2,'3516543564',NULL,'Compras@SancorSeguros.com',34,19,NULL)
INSERT INTO Clientes(nombre,apellido,documento,telefono,fechaNacimiento,email,codDom,codTipoDoc,codGenero) VALUES ('Holdorf-Vazques Abogados','NULL',20-06560453-5,'3514277898', '6/12/1928','EstudioHoldorfVazquez@hotmail.com',31,16,1)
INSERT INTO Clientes(nombre,apellido,documento,telefono,fechaNacimiento,email,codDom,codTipoDoc,codGenero) VALUES ('Mingueza metalurgica','NULL',27-67899872-1,'3514787653',NULL,'AdiminMingueza@gmail.com',16,19,NULL)
INSERT INTO Clientes(nombre,apellido,documento,telefono,fechaNacimiento,email,codDom,codTipoDoc,codGenero) VALUES ('Alvaro','Morano',20-37678876-5,'3516789987', '12/4/1984','MoranoAlvaro@Outlook.com',10,16,1)
INSERT INTO Clientes(nombre,apellido,documento,telefono,fechaNacimiento,email,codDom,codTipoDoc,codGenero) VALUES ('nahuel','rivera',42337342,'3517512568', '19/12/1999','nahuel-rivera@hotmail.com',49,1,1)
INSERT INTO Clientes(nombre,apellido,documento,telefono,fechaNacimiento,email,codDom,codTipoDoc,codGenero) VALUES ('franco','rodriguez',23979692,'3517512560', '23/5/1974','franrodriguez@gmail.com',52,4,1)
INSERT INTO Clientes(nombre,apellido,documento,telefono,fechaNacimiento,email,codDom,codTipoDoc,codGenero) VALUES ('milagros','paredes',37489562,'3512318159', '16/9/1986','miliro@live.com',58,1,4)
INSERT INTO Clientes(nombre,apellido,documento,telefono,fechaNacimiento,email,codDom,codTipoDoc,codGenero) VALUES ('trinidad ','moyano',30456789,'3518546789', '28/12/1990','t_moyano@hotmail.com',61,4,7)
INSERT INTO Clientes(nombre,apellido,documento,telefono,fechaNacimiento,email,codDom,codTipoDoc,codGenero) VALUES ('victor ','franco',27898694,'4710514', '23/5/1978','tecnomundo@gmail.com',64,7,1)
INSERT INTO Clientes(nombre,apellido,documento,telefono,fechaNacimiento,email,codDom,codTipoDoc,codGenero) VALUES ('viviana','heredia',40910820,'4568971', '2/12/1997','pestañasivi@hotmail.com',67,1,4)
INSERT INTO Clientes(nombre,apellido,documento,telefono,fechaNacimiento,email,codDom,codTipoDoc,codGenero) VALUES ('marcos','figueroa',34569965,'4121625', '3/1/1994','mf@live.com',70,1,1)
INSERT INTO Clientes(nombre,apellido,documento,telefono,fechaNacimiento,email,codDom,codTipoDoc,codGenero) VALUES ('luca ','martinez',40123456,'351895678', '22/2/1998','luquitamartinez@gmail.com',73,1,7)
INSERT INTO Clientes(nombre,apellido,documento,telefono,fechaNacimiento,email,codDom,codTipoDoc,codGenero) VALUES ('agostina','castellano',39654321,'156789123', '22/11/1999','agoscas@hotmail.com',76,1,7)
INSERT INTO Clientes(nombre,apellido,documento,telefono,fechaNacimiento,email,codDom,codTipoDoc,codGenero) VALUES ('florencia ','mala',33789654,'4561234', '1/1/1900','florm@gmail.com',79,1,4)
INSERT INTO Clientes(nombre,apellido,documento,telefono,fechaNacimiento,email,codDom,codTipoDoc,codGenero) VALUES ('rocio','agüero',27-22162174-9,'3518951468', '18/5/1972','raguero@live.com',82,19,4)
INSERT INTO Clientes(nombre,apellido,documento,telefono,fechaNacimiento,email,codDom,codTipoDoc,codGenero) VALUES ('valentin','moya',20-25456987-4,'3517698741', '5/8/1978','valentmo@hotmai.com',85,19,7)
INSERT INTO Clientes(nombre,apellido,documento,telefono,fechaNacimiento,email,codDom,codTipoDoc,codGenero) VALUES ('braian alexis','rossi',40604032,'3517594059', '13/2/1999','braian1999@gmail.com',133,1,1)
INSERT INTO Clientes(nombre,apellido,documento,telefono,fechaNacimiento,email,codDom,codTipoDoc,codGenero) VALUES ('hugo','aseloni',19049385,'3543930492', '25/3/1964','rasayav3as78@hbehs.com',136,1,1)
INSERT INTO Clientes(nombre,apellido,documento,telefono,fechaNacimiento,email,codDom,codTipoDoc,codGenero) VALUES ('javier','ferreyra',41302920,'3819291029', '14/2/1999','rasayav3as78@hbehs.com',139,1,1)
INSERT INTO Clientes(nombre,apellido,documento,telefono,fechaNacimiento,email,codDom,codTipoDoc,codGenero) VALUES ('federico alexis','sanchez',59303029,'1901029301', '3/1/2022','rasayav12378@hbehs.com',142,4,1)
INSERT INTO Clientes(nombre,apellido,documento,telefono,fechaNacimiento,email,codDom,codTipoDoc,codGenero) VALUES ('catalina','sanches varela',41503958,'3919290102', '4/1/1997','dorib15519@hbehs.com',145,4,4)
INSERT INTO Clientes(nombre,apellido,documento,telefono,fechaNacimiento,email,codDom,codTipoDoc,codGenero) VALUES ('bruno','clavero',-30583917,'9382930294', '3/4/1990','cibosal213@dufeed.com',148,4,1)
INSERT INTO Clientes(nombre,apellido,documento,telefono,fechaNacimiento,email,codDom,codTipoDoc,codGenero) VALUES ('tatyana','adreada',50394829,'1938940392', '2/12/2010','hiyemof927@roxoas.com',151,4,4)
INSERT INTO Clientes(nombre,apellido,documento,telefono,fechaNacimiento,email,codDom,codTipoDoc,codGenero) VALUES ('adrea','rossi',-40391999,'3519203940', '14/7/1999','peniw20762@hbehs.com',154,7,4)
INSERT INTO Clientes(nombre,apellido,documento,telefono,fechaNacimiento,email,codDom,codTipoDoc,codGenero) VALUES ('lucia','perez',49182748,'4039593829', '23/4/2001','pamaxit806@hbehs.com',157,7,4)
INSERT INTO Clientes(nombre,apellido,documento,telefono,fechaNacimiento,email,codDom,codTipoDoc,codGenero) VALUES ('natalia','silva',39481749,'3213554232', '14/5/1996','peniw21120762@hbehs.com',160,7,4)
INSERT INTO Clientes(nombre,apellido,documento,telefono,fechaNacimiento,email,codDom,codTipoDoc,codGenero) VALUES ('mayra','borrego',-35162818,'3510403920', '17/6/1994','pohokin970@dufeed.com',163,7,4)
INSERT INTO Clientes(nombre,apellido,documento,telefono,fechaNacimiento,email,codDom,codTipoDoc,codGenero) VALUES ('luciano','rios',-30483716,'3029403920', '16/7/1993','marte1999@dooul.com',166,13,1)
INSERT INTO Clientes(nombre,apellido,documento,telefono,fechaNacimiento,email,codDom,codTipoDoc,codGenero) VALUES ('lucas','tejerina',-39578352,'2339489230', '4/8/1990','jormanina@gmail.com',133,13,1)
INSERT INTO Clientes(nombre,apellido,documento,telefono,fechaNacimiento,email,codDom,codTipoDoc,codGenero) VALUES ('matias','toujas',30581748,'2049203548', '6/9/1922','matitalleres@hotmail.com',136,13,1)
INSERT INTO Clientes(nombre,apellido,documento,telefono,fechaNacimiento,email,codDom,codTipoDoc,codGenero) VALUES ('emiliano','ferreyra',40291849,'3512342334', '9/10/1996','emipapa@gmail.ar',139,13,1)
INSERT INTO Clientes(nombre,apellido,documento,telefono,fechaNacimiento,email,codDom,codTipoDoc,codGenero) VALUES ('cindy','leiva',58382913,'3252490024', '11/11/2010','gobierno@cba.com',142,13,4)
INSERT INTO Clientes(nombre,apellido,documento,telefono,fechaNacimiento,email,codDom,codTipoDoc,codGenero) VALUES ('vanina','martinez ',52384726,'3512948300', '23/2/2015','vani@ingles.com',145,1,7)
INSERT INTO Clientes(nombre,apellido,documento,telefono,fechaNacimiento,email,codDom,codTipoDoc,codGenero) VALUES ('raul alfredo','sanchez',57382919,'48573829', '7/12/2020','rapaniu@xd.com',148,4,7)
INSERT INTO Clientes(nombre,apellido,documento,telefono,fechaNacimiento,email,codDom,codTipoDoc,codGenero) VALUES ('fernando','rossi',59382749,'23849334', '20/3/2022','fer@nan.do',151,7,7)
INSERT INTO Clientes(nombre,apellido,documento,telefono,fechaNacimiento,email,codDom,codTipoDoc,codGenero) VALUES ('horacio','naranjo',60483929,'23493249', '23/5/2022','horacio2010@gmail.com',154,13,7)
INSERT INTO Clientes(nombre,apellido,documento,telefono,fechaNacimiento,email,codDom,codTipoDoc,codGenero) VALUES ('Luca','De Bortoli',43925290,'3512234323', '28/6/2002','lucadebortoli76@gmail.com',178,1,1)
INSERT INTO Clientes(nombre,apellido,documento,telefono,fechaNacimiento,email,codDom,codTipoDoc,codGenero) VALUES ('Juan','Rodriguez',35525743,'3513891761', '23/5/1992','RodriguezJ@hotmail.com',181,1,1)
INSERT INTO Clientes(nombre,apellido,documento,telefono,fechaNacimiento,email,codDom,codTipoDoc,codGenero) VALUES ('Luciana','Juarez',37914890,'3515525909', '6/9/1994','JuarezLu@gmail.com',184,1,7)
INSERT INTO Clientes(nombre,apellido,documento,telefono,fechaNacimiento,email,codDom,codTipoDoc,codGenero) VALUES ('Pedro','Perez',31431347,'3514596721', '10/8/1986','PPerez86@hotmail.com',187,1,1)
INSERT INTO Clientes(nombre,apellido,documento,telefono,fechaNacimiento,email,codDom,codTipoDoc,codGenero) VALUES ('Luciano','Alvarez',37624731,'3514598726', '7/6/1994','AlvarezLucho@outlook.com',190,1,1)
INSERT INTO Clientes(nombre,apellido,documento,telefono,fechaNacimiento,email,codDom,codTipoDoc,codGenero) VALUES ('Milagros','heredia',40237894,'3517227471', '1/3/2000','milagrosheredia01@gmail.com',193,1,4)
INSERT INTO Clientes(nombre,apellido,documento,telefono,fechaNacimiento,email,codDom,codTipoDoc,codGenero) VALUES ('valentin','zabala',43925289,'3518290124', '29/6/2002','zabalavalentin27@gmail.com',196,1,1)
INSERT INTO Clientes(nombre,apellido,documento,telefono,fechaNacimiento,email,codDom,codTipoDoc,codGenero) VALUES ('Viviana','Porchietto',33582980,'3513768901', '23/10/1990','ViviP@hotmail.com',199,1,7)
INSERT INTO Clientes(nombre,apellido,documento,telefono,fechaNacimiento,email,codDom,codTipoDoc,codGenero) VALUES ('Jose','Rivera',19542904,'3510428910', '3/2/1972','RiveraJose@hotmail.com',202,1,1)
INSERT INTO Clientes(nombre,apellido,documento,telefono,fechaNacimiento,email,codDom,codTipoDoc,codGenero) VALUES ('Julian','Rossi',39599391,'3513030822', '21/4/1999','JuliRossi@gmail.com',205,1,1)
INSERT INTO Clientes(nombre,apellido,documento,telefono,fechaNacimiento,email,codDom,codTipoDoc,codGenero) VALUES ('Juana','Martinez',25901672,'3516471471', '11/9/1975','MartinezJuana75@hotmail.com',208,1,4)
INSERT INTO Clientes(nombre,apellido,documento,telefono,fechaNacimiento,email,codDom,codTipoDoc,codGenero) VALUES ('Tomas','Brizuela',38571910,'3512694562', '9/5/1998','Tbrizuela@gmail.com',211,1,1)



update Clientes
set documento='20-25456987-4'
where codCliente=431

											
select*
from TiposEnvios


SELECT codCliente,nombre,apellido,documento,telefono, CONVERT(varchar,fechaNacimiento,103) as [DD/MM/YYYY],email,codDom,codTipoDoc,codGenero
FROM Clientes
												

--Proveedores
INSERT INTO Proveedores(nombre,codDom,documento,codTipoDoc,telefono,email) VALUES('Sergio Eruti',40,'20-23987763-5',16,'3514567898','SergioEruti@Hotmail.com')
INSERT INTO Proveedores(nombre,codDom,documento,codTipoDoc,telefono,email) VALUES('Donelli Insumos',46,'25-54356789-6',19,'3517654341','VentasDonelli@gmail.com')
INSERT INTO Proveedores(nombre,codDom,documento,codTipoDoc,telefono,email) VALUES('Fintex S.A.',43,'26-34567808-5',19,'3514567825','Ventascorporativas@Fintex.com.ar')
INSERT INTO Proveedores(nombre,codDom,documento,codTipoDoc,telefono,email) VALUES('Mnauel rodri',106,'40789654',1,'4805612','manuelito@gmail.com')
INSERT INTO Proveedores(nombre,codDom,documento,codTipoDoc,telefono,email) VALUES('francesca gloria',109,'39456123',1,'4753986','fran.gloria@gmail.com')
INSERT INTO Proveedores(nombre,codDom,documento,codTipoDoc,telefono,email) VALUES('mateo rico',112,'29987321',1,'5230632','mateo_ri@hotmail.com')
INSERT INTO Proveedores(nombre,codDom,documento,codTipoDoc,telefono,email) VALUES('juan',169,'20-30691847-9',16,'3517483758','pohokin970@dufeed.com')
INSERT INTO Proveedores(nombre,codDom,documento,codTipoDoc,telefono,email) VALUES('julian',172,'20-38395839-9',16,'3517584930','nahiva9822@hbehs.com')
INSERT INTO Proveedores(nombre,codDom,documento,codTipoDoc,telefono,email) VALUES('silvana',175,'27-35394839-9',16,'3518594030','poxiwiw469@roxoas.com')
INSERT INTO Proveedores(nombre,codDom,documento,codTipoDoc,telefono,email) VALUES('Insumos Capdevila',181,'26-15325444-5',19,'4522672','palaciodelrodado@gmaill.com')
INSERT INTO Proveedores(nombre,codDom,documento,codTipoDoc,telefono,email) VALUES('Claudio Perez',187,'25543120',1,'4792503','perezclaudio74@gmail.com')
INSERT INTO Proveedores(nombre,codDom,documento,codTipoDoc,telefono,email) VALUES('Silvia Soldan ',214,'19761893',1,'4543490','soldansilvia@hotmail.com')

Select *
From Proveedores

INSERT INTO Empleados(legajo,nombre,apellido,documento,fechaIngreso,codPuesto,codDom,codTipoDoc,codGenero) VALUES(20789233,'Enzo','Rodriguez',20789233, '24/7/2020',6,211,1,1)
INSERT INTO Empleados(legajo,nombre,apellido,documento,fechaIngreso,codPuesto,codDom,codTipoDoc,codGenero) VALUES(193928101,'felipe','riquelme',19392810, '3/6/1997',21,10,1,1)
INSERT INTO Empleados(legajo,nombre,apellido,documento,fechaIngreso,codPuesto,codDom,codTipoDoc,codGenero) VALUES(221236544,'francisco','aman',22123654, '12/1/2020',26,100,1,7)
INSERT INTO Empleados(legajo,nombre,apellido,documento,fechaIngreso,codPuesto,codDom,codTipoDoc,codGenero) VALUES(279874561,'marga','ferreyra',27987456, '8/10/2019',16,103,1,4)
INSERT INTO Empleados(legajo,nombre,apellido,documento,fechaIngreso,codPuesto,codDom,codTipoDoc,codGenero) VALUES(304121904,'andrea','ronaldo',30412190, '3/6/2010',11,127,1,4)
INSERT INTO Empleados(legajo,nombre,apellido,documento,fechaIngreso,codPuesto,codDom,codTipoDoc,codGenero) VALUES(304958314,'federico','rodriguez',30495831, '30/9/2021',16,166,1,1)
INSERT INTO Empleados(legajo,nombre,apellido,documento,fechaIngreso,codPuesto,codDom,codTipoDoc,codGenero) VALUES(326549872,'maria','bernal',32654987, '30/7/2014',16,97,4,4)
INSERT INTO Empleados(legajo,nombre,apellido,documento,fechaIngreso,codPuesto,codDom,codTipoDoc,codGenero) VALUES(351729432,'jose','messi',35172943, '5/2/2022',31,4,1,1)
INSERT INTO Empleados(legajo,nombre,apellido,documento,fechaIngreso,codPuesto,codDom,codTipoDoc,codGenero) VALUES(363015821,'Sofia','Martinez',36301582, '7/9/2019',6,202,1,4)
INSERT INTO Empleados(legajo,nombre,apellido,documento,fechaIngreso,codPuesto,codDom,codTipoDoc,codGenero) VALUES(368076912,'Juan Ignacio','Rodriguez',36807691, '20/7/2012',1,118,1,4)
INSERT INTO Empleados(legajo,nombre,apellido,documento,fechaIngreso,codPuesto,codDom,codTipoDoc,codGenero) VALUES(374567891,'franca','gimenez',37456789, '5/1/2011',26,94,1,4)
INSERT INTO Empleados(legajo,nombre,apellido,documento,fechaIngreso,codPuesto,codDom,codTipoDoc,codGenero) VALUES(375249014,'Nahuel','Juarez',37524901, '3/6/2014',16,190,1,1)
INSERT INTO Empleados(legajo,nombre,apellido,documento,fechaIngreso,codPuesto,codDom,codTipoDoc,codGenero) VALUES(396501335,'Lucia','Perez',39650133, '9/12/2012',31,187,1,4)
INSERT INTO Empleados(legajo,nombre,apellido,documento,fechaIngreso,codPuesto,codDom,codTipoDoc,codGenero) VALUES(402697893,'ramiro','francisco',40269789, '22/2/2010',16,91,4,1)
INSERT INTO Empleados(legajo,nombre,apellido,documento,fechaIngreso,codPuesto,codDom,codTipoDoc,codGenero) VALUES(406202374,'Julian','Alvarez',40620237, '4/8/2009',21,178,1,1)
INSERT INTO Empleados(legajo,nombre,apellido,documento,fechaIngreso,codPuesto,codDom,codTipoDoc,codGenero) VALUES(406817495,'jorgue ','norverto',40681749, '11/5/2008',26,1,1,1)
INSERT INTO Empleados(legajo,nombre,apellido,documento,fechaIngreso,codPuesto,codDom,codTipoDoc,codGenero) VALUES(406828251,'Braian','Rossi',40682825, '10/11/2010',1,196,1,1)
INSERT INTO Empleados(legajo,nombre,apellido,documento,fechaIngreso,codPuesto,codDom,codTipoDoc,codGenero) VALUES(408217213,'natalia','scaloni',40821721, '15/4/2001',6,4,1,4)
INSERT INTO Empleados(legajo,nombre,apellido,documento,fechaIngreso,codPuesto,codDom,codTipoDoc,codGenero) VALUES(419874914,'Guillermina','Moereno',41987491, '2/6/2022',31,127,1,7)
INSERT INTO Empleados(legajo,nombre,apellido,documento,fechaIngreso,codPuesto,codDom,codTipoDoc,codGenero) VALUES(420956403,'Rodrigo Jesus','Robles',42095640, '11/10/2019' ,36,130,1,7)
INSERT INTO Empleados(legajo,nombre,apellido,documento,fechaIngreso,codPuesto,codDom,codTipoDoc,codGenero) VALUES(423373434,'raul','gonzalez',42337343, '17/5/2012',1,88,1,1)
INSERT INTO Empleados(legajo,nombre,apellido,documento,fechaIngreso,codPuesto,codDom,codTipoDoc,codGenero) VALUES(425693410,'Juan Ignacio','Vicco',42569341, '3/1/2021',21,115,1,1)
INSERT INTO Empleados(legajo,nombre,apellido,documento,fechaIngreso,codPuesto,codDom,codTipoDoc,codGenero) VALUES(430098716,'Sol','Abraham',43009871, '4/1/2022',6,121,1,4)
INSERT INTO Empleados(legajo,nombre,apellido,documento,fechaIngreso,codPuesto,codDom,codTipoDoc,codGenero) VALUES(432345691,'Victor Ruben','Sandez',43234569, '22/5/2022',11,124,1,7)





Select legajo,nombre,apellido,documento,CONVERT (varchar,fechaingreso,103) as [DD/MM/YYYY], codPuesto,codDom,codTipoDoc,codGenero
from Empleados


--Productos
INSERT INTO Productos(nombreProd,peso,precio,codMaterial,codFormato,codColor,codTipoProd) VALUES('agenda chica',0.4,50,4,16,1,7)
INSERT INTO Productos(nombreProd,peso,precio,codMaterial,codFormato,codColor,codTipoProd) VALUES('agenda grande',0.8,80,4,19,4,7)
INSERT INTO Productos(nombreProd,peso,precio,codMaterial,codFormato,codColor,codTipoProd) VALUES('libro chico',0.4,75,4,31,7,10)
INSERT INTO Productos(nombreProd,peso,precio,codMaterial,codFormato,codColor,codTipoProd) VALUES(' libromediano',1,100,4,25,31,10)
INSERT INTO Productos(nombreProd,peso,precio,codMaterial,codFormato,codColor,codTipoProd) VALUES('libro grande',1.3,150,4,19,28,10)
INSERT INTO Productos(nombreProd,peso,precio,codMaterial,codFormato,codColor,codTipoProd) VALUES('rifa',0.25,100,4,37,25,25)
INSERT INTO Productos(nombreProd,peso,precio,codMaterial,codFormato,codColor,codTipoProd) VALUES('rifa',0.25,100,4,37,22,25)
INSERT INTO Productos(nombreProd,peso,precio,codMaterial,codFormato,codColor,codTipoProd) VALUES('rifa',0.25,100,4,37,19,25)
INSERT INTO Productos(nombreProd,peso,precio,codMaterial,codFormato,codColor,codTipoProd) VALUES('entrada',1,300,1,37,16,34)
INSERT INTO Productos(nombreProd,peso,precio,codMaterial,codFormato,codColor,codTipoProd) VALUES('entrada',1,300,1,37,13,34)
INSERT INTO Productos(nombreProd,peso,precio,codMaterial,codFormato,codColor,codTipoProd) VALUES('entrada',1,300,1,37,10,34)
INSERT INTO Productos(nombreProd,peso,precio,codMaterial,codFormato,codColor,codTipoProd) VALUES('catalogo chico',0.4,250,1,31,4,28)
INSERT INTO Productos(nombreProd,peso,precio,codMaterial,codFormato,codColor,codTipoProd) VALUES('catalogo medio',0.8,400,1,25,1,28)
INSERT INTO Productos(nombreProd,peso,precio,codMaterial,codFormato,codColor,codTipoProd) VALUES('catalogo grande',1.4,750,1,19,7,28)
INSERT INTO Productos(nombreProd,peso,precio,codMaterial,codFormato,codColor,codTipoProd) VALUES('cartel inmobiliario',3.5,2000,10,1,4,19)
--2°
INSERT INTO Productos(nombreProd,peso,precio,codMaterial,codFormato,codColor,codTipoProd) VALUES('Agenda Sancor Seguros',00.30,100.00,4,22,28,7)
INSERT INTO Productos(nombreProd,peso,precio,codMaterial,codFormato,codColor,codTipoProd) VALUES('Boleta AFIP',00.150,100.00,4,22,10,1)
INSERT INTO Productos(nombreProd,peso,precio,codMaterial,codFormato,codColor,codTipoProd) VALUES('Cuadernos Caldear',00.200,200.00,4,19,28,10)
INSERT INTO Productos(nombreProd,peso,precio,codMaterial,codFormato,codColor,codTipoProd) VALUES('Tarjeta Empleado Sancor',00.04,250.00,10,31,4,13)
INSERT INTO Productos(nombreProd,peso,precio,codMaterial,codFormato,codColor,codTipoProd) VALUES('Libro grande personalizado',00.250,300.00,4,19,28,10)
INSERT INTO Productos(nombreProd,peso,precio,codMaterial,codFormato,codColor,codTipoProd) VALUES('Caja delivery personalizada',00.10,40.00,1,40,31,37)
INSERT INTO Productos(nombreProd,peso,precio,codMaterial,codFormato,codColor,codTipoProd) VALUES('Caja envios mediana',0.15,50.00,1,46,10,37)
INSERT INTO Productos(nombreProd,peso,precio,codMaterial,codFormato,codColor,codTipoProd) VALUES('Caja envios grandes',0.200,70.00,1,67,10,37)
INSERT INTO Productos(nombreProd,peso,precio,codMaterial,codFormato,codColor,codTipoProd) VALUES('Folleto informativo Sancor',00.05,20.00,4,25,13,16)
INSERT INTO Productos(nombreProd,peso,precio,codMaterial,codFormato,codColor,codTipoProd) VALUES('Caja regalo',00.100,60.00,1,46,25,37)
INSERT INTO Productos(nombreProd,peso,precio,codMaterial,codFormato,codColor,codTipoProd) VALUES('Sobres pequeños',00.010,03.00,4,25,28,22)
INSERT INTO Productos(nombreProd,peso,precio,codMaterial,codFormato,codColor,codTipoProd) VALUES('Sobre mediano ',00.030,06.00,4,22,28,22)
INSERT INTO Productos(nombreProd,peso,precio,codMaterial,codFormato,codColor,codTipoProd) VALUES('Sobre grande',00.100,10.00,4,19,28,22)
INSERT INTO Productos(nombreProd,peso,precio,codMaterial,codFormato,codColor,codTipoProd) VALUES('Sobre grande papel madera',00.110,13.00,4,19,7,22)
INSERT INTO Productos(nombreProd,peso,precio,codMaterial,codFormato,codColor,codTipoProd) VALUES('Hojas membretadas',00.030,04.00,4,22,28,40)
--3°
INSERT INTO Productos(nombreProd,peso,precio,codMaterial,codFormato,codColor,codTipoProd) VALUES('talonario',00.150,1500,1,1,1,10)
INSERT INTO Productos(nombreProd,peso,precio,codMaterial,codFormato,codColor,codTipoProd) VALUES('catalogo',1.00,200000,4,4,4,31)
INSERT INTO Productos(nombreProd,peso,precio,codMaterial,codFormato,codColor,codTipoProd) VALUES('vinillo',1005,24560,7,7,7,34)
INSERT INTO Productos(nombreProd,peso,precio,codMaterial,codFormato,codColor,codTipoProd) VALUES('entradas',00.023,500,10,10,10,1)
INSERT INTO Productos(nombreProd,peso,precio,codMaterial,codFormato,codColor,codTipoProd) VALUES('folleto',1200,5600,13,13,4,7)
INSERT INTO Productos(nombreProd,peso,precio,codMaterial,codFormato,codColor,codTipoProd) VALUES('libro',00.010,6000,16,16,1,13)
INSERT INTO Productos(nombreProd,peso,precio,codMaterial,codFormato,codColor,codTipoProd) VALUES('entradas',00.540,6500,1,19,31,4)
INSERT INTO Productos(nombreProd,peso,precio,codMaterial,codFormato,codColor,codTipoProd) VALUES('cartel',00.005,78000,4,28,28,19)
INSERT INTO Productos(nombreProd,peso,precio,codMaterial,codFormato,codColor,codTipoProd) VALUES('cartel',00.003,79000,7,40,13,19)
INSERT INTO Productos(nombreProd,peso,precio,codMaterial,codFormato,codColor,codTipoProd) VALUES('catalogo',4000,54000,1,61,10,25)
INSERT INTO Productos(nombreProd,peso,precio,codMaterial,codFormato,codColor,codTipoProd) VALUES('rifa',00.14,5700,4,64,10,22)
INSERT INTO Productos(nombreProd,peso,precio,codMaterial,codFormato,codColor,codTipoProd) VALUES('sobre',00.400,500,7,70,25,34)
INSERT INTO Productos(nombreProd,peso,precio,codMaterial,codFormato,codColor,codTipoProd) VALUES('tarjeta',00.040,450,10,73,7,13)
INSERT INTO Productos(nombreProd,peso,precio,codMaterial,codFormato,codColor,codTipoProd) VALUES('agenda',00.012,500,13,1,4,16)
INSERT INTO Productos(nombreProd,peso,precio,codMaterial,codFormato,codColor,codTipoProd) VALUES('resma troquelda',00.018,150,16,4,1,16)
--4°
INSERT INTO Productos(nombreProd,peso,precio,codMaterial,codFormato,codColor,codTipoProd) VALUES('Talonario Afip',0.4,50,4,37,28,1)
INSERT INTO Productos(nombreProd,peso,precio,codMaterial,codFormato,codColor,codTipoProd) VALUES('Resma Troquelada',5,800,4,19,28,4)
INSERT INTO Productos(nombreProd,peso,precio,codMaterial,codFormato,codColor,codTipoProd) VALUES('rifa',0.25,100,4,28,25,25)
INSERT INTO Productos(nombreProd,peso,precio,codMaterial,codFormato,codColor,codTipoProd) VALUES('rifa',0.25,100,4,28,25,25)
INSERT INTO Productos(nombreProd,peso,precio,codMaterial,codFormato,codColor,codTipoProd) VALUES('tarjeta',0.3,30,10,28,16,13)
INSERT INTO Productos(nombreProd,peso,precio,codMaterial,codFormato,codColor,codTipoProd) VALUES('libro',2,200,4,19,7,10)
INSERT INTO Productos(nombreProd,peso,precio,codMaterial,codFormato,codColor,codTipoProd) VALUES('catalogo',0.8,60,4,19,28,28)
INSERT INTO Productos(nombreProd,peso,precio,codMaterial,codFormato,codColor,codTipoProd) VALUES('entrada',1,25,1,25,13,34)
INSERT INTO Productos(nombreProd,peso,precio,codMaterial,codFormato,codColor,codTipoProd) VALUES('entrada',1,25,1,25,13,34)
INSERT INTO Productos(nombreProd,peso,precio,codMaterial,codFormato,codColor,codTipoProd) VALUES('entrada',1,25,1,25,13,34)
INSERT INTO Productos(nombreProd,peso,precio,codMaterial,codFormato,codColor,codTipoProd) VALUES('vinilo',0.5,45,16,16,25,31)
INSERT INTO Productos(nombreProd,peso,precio,codMaterial,codFormato,codColor,codTipoProd) VALUES('vinilo',0.5,45,16,16,25,31)
INSERT INTO Productos(nombreProd,peso,precio,codMaterial,codFormato,codColor,codTipoProd) VALUES('agenda',4,70,4,19,31,7)
INSERT INTO Productos(nombreProd,peso,precio,codMaterial,codFormato,codColor,codTipoProd) VALUES('folleto',0.15,15,4,22,28,16)
INSERT INTO Productos(nombreProd,peso,precio,codMaterial,codFormato,codColor,codTipoProd) VALUES('sobre',0.1,40,4,22,28,22)




Select*
From Productos


--Proveedores Materiales
INSERT INTO Proveedores_Materiales(codProv,codMaterial) VALUES(13,1)
INSERT INTO Proveedores_Materiales(codProv,codMaterial) VALUES(13,4)
INSERT INTO Proveedores_Materiales(codProv,codMaterial) VALUES(16,7)
INSERT INTO Proveedores_Materiales(codProv,codMaterial) VALUES(13,10)
INSERT INTO Proveedores_Materiales(codProv,codMaterial) VALUES(19,13)
INSERT INTO Proveedores_Materiales(codProv,codMaterial) VALUES(16,16)
--2°
INSERT INTO Proveedores_Materiales(codProv,codMaterial) VALUES(1,4)
INSERT INTO Proveedores_Materiales(codProv,codMaterial) VALUES(7,1)
INSERT INTO Proveedores_Materiales(codProv,codMaterial) VALUES(10,10)
INSERT INTO Proveedores_Materiales(codProv,codMaterial) VALUES(10,13)
INSERT INTO Proveedores_Materiales(codProv,codMaterial) VALUES(10,16)
INSERT INTO Proveedores_Materiales(codProv,codMaterial) VALUES(7,7)
--3°
INSERT INTO Proveedores_Materiales(codProv,codMaterial) VALUES(22,1)
INSERT INTO Proveedores_Materiales(codProv,codMaterial) VALUES(25,4)
INSERT INTO Proveedores_Materiales(codProv,codMaterial) VALUES(28,7)
INSERT INTO Proveedores_Materiales(codProv,codMaterial) VALUES(22,10)
INSERT INTO Proveedores_Materiales(codProv,codMaterial) VALUES(25,13)
INSERT INTO Proveedores_Materiales(codProv,codMaterial) VALUES(22,16)

--4°
INSERT INTO Proveedores_Materiales(codProv,codMaterial) VALUES(31,1)
INSERT INTO Proveedores_Materiales(codProv,codMaterial) VALUES(34,4)
INSERT INTO Proveedores_Materiales(codProv,codMaterial) VALUES(37,7)
INSERT INTO Proveedores_Materiales(codProv,codMaterial) VALUES(31,10)
INSERT INTO Proveedores_Materiales(codProv,codMaterial) VALUES(34,13)
INSERT INTO Proveedores_Materiales(codProv,codMaterial) VALUES(37,16)

--
INSERT INTO Proveedores_Materiales(codProv,codMaterial) VALUES(1,4)
INSERT INTO Proveedores_Materiales(codProv,codMaterial) VALUES(7,1)
INSERT INTO Proveedores_Materiales(codProv,codMaterial) VALUES(7,7)
INSERT INTO Proveedores_Materiales(codProv,codMaterial) VALUES(10,10)
INSERT INTO Proveedores_Materiales(codProv,codMaterial) VALUES(10,13)
INSERT INTO Proveedores_Materiales(codProv,codMaterial) VALUES(10,16)
INSERT INTO Proveedores_Materiales(codProv,codMaterial) VALUES(13,1)
INSERT INTO Proveedores_Materiales(codProv,codMaterial) VALUES(13,4)
INSERT INTO Proveedores_Materiales(codProv,codMaterial) VALUES(13,10)
INSERT INTO Proveedores_Materiales(codProv,codMaterial) VALUES(16,7)
INSERT INTO Proveedores_Materiales(codProv,codMaterial) VALUES(16,16)
INSERT INTO Proveedores_Materiales(codProv,codMaterial) VALUES(19,13)
INSERT INTO Proveedores_Materiales(codProv,codMaterial) VALUES(22,1)
INSERT INTO Proveedores_Materiales(codProv,codMaterial) VALUES(22,10)
INSERT INTO Proveedores_Materiales(codProv,codMaterial) VALUES(22,16)
INSERT INTO Proveedores_Materiales(codProv,codMaterial) VALUES(25,4)
INSERT INTO Proveedores_Materiales(codProv,codMaterial) VALUES(25,13)
INSERT INTO Proveedores_Materiales(codProv,codMaterial) VALUES(28,7)
INSERT INTO Proveedores_Materiales(codProv,codMaterial) VALUES(31,1)
INSERT INTO Proveedores_Materiales(codProv,codMaterial) VALUES(31,10)
INSERT INTO Proveedores_Materiales(codProv,codMaterial) VALUES(34,4)
INSERT INTO Proveedores_Materiales(codProv,codMaterial) VALUES(34,13)
INSERT INTO Proveedores_Materiales(codProv,codMaterial) VALUES(37,7)
INSERT INTO Proveedores_Materiales(codProv,codMaterial) VALUES(37,16)


SELECT *
FROM Proveedores_Materiales


Select*
From FacturasFormasPagos

select *
from Empleados

set dateformat DMY

--Facturas
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '12/9/2003',186,10,193928101,374567891,1)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '12/03/2015',196,1,304958314,406817495,7)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '19/07/2019',351,10,402697893,406817495,4)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '22/11/1999',356,7,279874561,406817495,7)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '18/06/2008',371,10,279874561,374567891,1)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '30/06/2008',366,10,279874561,374567891,1)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '10/06/2008',361,10,279874561,374567891,7)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '21/09/2004',221,10,193928101,406817495,7)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '23/09/2004',226,10,193928101,406817495,7)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '12/01/2022',246,10,27987456,221236544,4)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '12/09/2021',251,1,27987456,406817495,1)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '02/03/2022',266,1,193928101,406817495,7)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '24/10/2021',351,10,193928101,406817495,7)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '15/11/2020',371,1,304958314,406817495,4)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '24/12/2021',186,10,304958314,221236544,4)

--2°
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '17/5/2022',376,4,402697893,374567891,1)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '20/4/2022',376,7,402697893,374567891,1)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '25/4/2022',381,1,402697893,374567891,4)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '20/5/2022',381,10,402697893,374567891,7)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '23/5/2022',386,1,326549872,374567891,1)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '10/4/2022',386,1,326549872,374567891,1)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '8/2/2022',421,7,326549872,374567891,4)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '30/5/2022',426,7,326549872,374567891,4)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '14/4/2022',391,4,326549872,221236544,7)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '18/5/2022',396,4,326549872,221236544,7)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '17/4/2022',406,10,279874561,221236544,7)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '20/2/2022',376,10,279874561,221236544,7)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '23/5/2022',421,10,279874561,221236544,1)
--3°
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '21/5/2022',436,4,304958314,326549872,1)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '20/5/2022',441,7,304958314,326549872,1)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '19/5/2022',446,1,304958314,326549872,1)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '20/5/2022',451,10,304958314,326549872,1)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '20/5/2022',456,1,304958314,326549872,1)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '20/5/2022',461,1,304958314,374567891,4)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '19/5/2022',466,7,304958314,374567891,4)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '14/5/2022',471,7,304958314,374567891,4)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '19/5/2022',476,4,304958314,402697893,4)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '20/5/2022',481,4,304958314,402697893,4)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '5/5/2022',486,10,304958314,402697893,4)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '20/5/2022',491,10,304958314,304958314,4)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '19/5/2022',496,10,304958314,304958314,7)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '18/5/2022',501,7,304958314,304958314,7)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '15/4/2022',506,10,304958314,304958314,7)
--4°
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '15/03/2022',556,4,374567891,37456789,1)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '15/03/2022',561,10,279874561,37456789,7)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '15/03/2022',566,10,193928101,37456789,7)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '10/04/2022',571,10,27987456,37456789,7)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '10/04/2022',576,10,27987456,40681749,7)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '10/04/2022',581,7,193928101,40681749,7)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '10/04/2022',586,7,193928101,40681749,1)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '10/04/2022',591,7,304958314,40681749,4)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '05/01/2022',556,1,304958314,40681749,4)

--
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '17/5/2022',376,4,402697893,374567891,1)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '20/4/2022',376,7,402697893,374567891,1)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '25/4/2022',381,1,402697893,374567891,4)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '20/5/2022',381,10,402697893,374567891,7)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '23/5/2022',386,1,326549872,374567891,1)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '10/4/2022',386,1,326549872,374567891,1)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '8/2/2022',421,7,326549872,374567891,4)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '30/5/2022',426,7,326549872,374567891,4)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '14/4/2022',391,4,326549872,221236544,7)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '18/5/2022',396,4,326549872,221236544,7)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '17/4/2022',406,10,279874561,221236544,7)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '23/5/2022',421,10,279874561,221236544,1)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '20/2/2022',376,10,279874561,221236544,7)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '12/9/2003',186,10,193928101,374567891,1)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '12/3/2015',196,1,304958314,406817495,7)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '19/7/2019',351,10,402697893,406817495,4)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '22/11/1999',356,7,279874561,406817495,7)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '18/6/2008',371,10,279874561,374567891,1)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '30/6/2008',366,10,279874561,374567891,1)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '10/6/2008',361,10,279874561,374567891,7)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '21/9/2004',221,10,193928101,406817495,7)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '23/9/2004',226,10,193928101,406817495,7)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '12/1/2022',246,10,27987456,221236544,4)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '12/9/2021',251,1,27987456,406817495,1)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '2/3/2022',266,1,193928101,406817495,7)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '24/10/2021',351,10,193928101,406817495,7)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '15/11/2020',371,1,304958314,406817495,4)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '24/12/2021',186,10,304958314,221236544,4)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '21/5/2022',436,4,304958314,326549872,1)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '20/5/2022',441,7,304958314,326549872,1)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '19/5/2022',446,1,304958314,326549872,1)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '20/5/2022',451,10,304958314,326549872,1)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '20/5/2022',456,1,304958314,326549872,1)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '20/5/2022',461,1,304958314,374567891,4)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '19/5/2022',466,7,304958314,374567891,4)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '14/5/2022',471,7,304958314,374567891,4)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '19/5/2022',476,4,304958314,402697893,4)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '20/5/2022',481,4,304958314,402697893,4)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '5/5/2022',486,10,304958314,402697893,4)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '20/5/2022',491,10,304958314,304958314,4)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '19/5/2022',496,10,304958314,304958314,7)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '18/5/2022',501,7,304958314,304958314,7)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '15/4/2022',506,10,304958314,304958314,7)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '24/3/2022',536,1,279874561,221236544,1)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '24/3/2022',541,4,279874561,221236544,1)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '24/3/2022',546,4,279874561,221236544,1)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '24/3/2022',551,4,279874561,221236544,1)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '24/3/2022',556,4,279874561,221236544,1)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '15/3/2022',536,4,279874561,221236544,1)

select *
FROM Empleados

Alter Table Facturas
Add Constraint Fk_Empleado_Armador_Pedido Foreign Key (legajoArmadorPedido) References Empleados (legajo)

alter table Facturas
drop constraint Fk_Empleado_Armador_Pedido



select codFactura, CONVERT(varchar,fechaPedido,103) as [DD/MM/YYYY],codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion
from Facturas

set dateformat DMY
 
--Facturas formas pagos
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(1500,157,25)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(300,163,19)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(4500,169,34)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(5000,175,28)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(800,181,19)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(1000,187,19)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(14500,193,31)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(30000,199,22)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(4000,205,25)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(7500,211,25)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(2000,217,25)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(4250,229,28)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(8000,235,31)
--2°
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(400,241,19)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(1000,247,25)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(1800,253,19)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(50000,259,25)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(3300,265,34)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(22000,271,34)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(5000,277,19)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(7000,283,19)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(2000,289,25)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(18000,295,28)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(3000,301,28)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(6000,307,28)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(44000,313,34)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(17188.6,319,34)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(4342.8,325,34)
--3°
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(34500,331,19)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(4600000,337,19)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(98240,343,19)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(45000,349,22)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(756000,355,22)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(900000,361,22)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(240500,367,25)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(3666000,373,25)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(75445000,379,25)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(5400000,385,25)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(1824000,391,28)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(200000,397,28)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(3150000,403,34)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(3000000,409,37)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(12000000,415,37)
--4°
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(2000,367,19)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(1250,373,22)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(150000,379,25)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(25000,385,28)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(8800,391,31)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(3150,397,34)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(1700,403,37)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(600,409,19)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(58100,415,22)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(8400,691,25)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(275400,697,28)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(147000,703,31)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(420000,709,34)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(97750,715,37)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(57200,721,34)


INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '15/03/2022',556,4,375249014,37456789,1)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '15/03/20220',561,10,193928101,37456789,7)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '15/03/2022',566,10,193928101,37456789,7)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '10/04/2022',571,10,27987456,37456789,7)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '10/04/2022',576,10,27987456,40681749,7)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '10/04/2022',581,7,193928101,40681749,7)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '10/04/2022',586,7,193928101,40681749,1)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '10/04/2022',591,7,304958314,40681749,4)
INSERT INTO Facturas(fechaPedido,codCliente,codTipoEnvio,legajoArmadorPedido,legajoFacturador,codCanalAtencion) VALUES ( '05/01/2022',556,1,304958314,40681749,4)

select*
from Facturas
alter table facturas
add constraint Fk_empleadoP	foreign key(legajoArmadorPedido) references Empleados(legajo)

SELECT *
FROM FacturasFormasPagos
--
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(1500,157,25)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(300,163,19)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(4500,169,34)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(5000,175,28)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(800,181,19)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(1000,187,19)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(14500,193,31)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(30000,199,22)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(4000,205,25)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(7500,211,25)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(2000,217,25)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(4250,229,28)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(8000,235,31)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(400,241,19)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(1000,247,25)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(1800,253,19)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(50000,259,25)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(3300,265,34)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(22000,271,34)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(5000,277,19)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(7000,283,19)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(2000,289,25)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(18000,295,28)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(3000,301,28)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(6000,307,28)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(44000,313,34)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(17188,6,319,34)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(4342,8,325,34)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(34500,331,19)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(4600000,337,19)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(98240,343,19)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(45000,349,22)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(756000,355,22)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(900000,361,22)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(240500,367,25)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(3666000,373,25)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(75445000,379,25)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(5400000,385,25)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(1824000,391,28)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(200000,397,28)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(3150000,403,34)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(3000000,409,37)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(12000000,415,37)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(34500,331,19)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(4600000,337,19)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(98240,343,19)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(45000,349,22)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(756000,355,22)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(900000,361,22)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(240500,367,25)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(3666000,373,25)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(75445000,379,25)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(5400000,385,25)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(1824000,391,28)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(200000,397,28)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(3150000,403,34)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(3000000,409,37)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(12000000,415,37)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(2000,367,19)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(1250,373,22)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(150000,379,25)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(25000,385,28)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(8800,391,31)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(3150,397,34)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(1700,403,37)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(600,409,19)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(58100,415,22)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(8400,691,25)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(275400,697,28)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(147000,703,31)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(420000,709,34)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(97750,715,37)
INSERT INTO FacturasFormasPagos(montoPago,codFactura,codFormaPago) VALUES(57200,721,34)


--Detalle Factura
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(157,43,4, '23/5/2022',2000)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(163,1,85, '24/5/2022',50)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(169,37,5, '25/5/2022',400)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(175,19,32, '23/5/2022',100)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(181,40,10, '24/5/2022',400)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(187,43,15, '25/5/2022',2000)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(193,34,58, '23/5/2022',250)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(199,22,10, '30/5/2022',100)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(205,10,8, '30/5/2022',800)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(211,34,20, '28/5/2022',250)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(217,40,6, '27/5/2022',750)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(229,13,2, '25/5/2022',150)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(235,34,6, '25/5/2022',250)
--2°
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(241,46,4,37884,400)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(247,49,10,42075,1000)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(253,52,9,43675,1800)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(259,55,200,36489,50000)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(265,58,10,39629,3000)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(271,61,500,39636,20000)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(277,64,100,39618,5000)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(283,67,100,38254,7000)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(289,70,100,38260,2000)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(295,73,300,44581,18000)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(301,76,1000,44453,3000)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(307,79,1000,44632,6000)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(313,82,4000,44496,40000)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(319,85,1202,44154,15626)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(325,88,987,44559,3948)
--3°
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(331,91,23, '22/5/2022',1500)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(337,94,23, '19/7/2020',200000)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(343,97,4, '17/4/2016',24560)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(349,100,6, '1/8/2010',500)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(355,103,9, '5/2/2008',5600)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(361,106,10, '5/6/2008',6000)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(367,109,37, '2/5/2005',6500)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(373,112,47, '21/2/2004',78000)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(379,115,955, '23/6/2002',79000)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(385,118,100, '11/11/2001',54000)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(391,121,320, '6/1/2000',5700)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(397,124,400, '3/1/2000',500)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(403,127,700, '25/9/1999',450)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(409,130,600, '30/5/1997',500)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(415,133,8000, '4/6/1996',150)
--4°
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(367,136,4,44641,500)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(373,139,5,44641,250)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(379,145,200,44641,750)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(385,148,25,44641,1000)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(391,151,44,44641,200)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(397,154,21,44641,150)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(403,157,17,44641,100)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(409,160,12,44641,50)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(415,163,166,44641,350)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(691,166,24,44641,350)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(697,169,459,44641,600)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(703,172,210,44641,700)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(709,175,525,44641,800)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(715,178,115,44641,850)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(721,184,52,44641,1100)

--Detalle Facturas
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(157,43,4, '23/5/2022',2000)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(163,1,85, '24/5/2022',50)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(169,37,5, '25/5/2022',400)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(175,19,32, '23/5/2022',100)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(181,40,10, '24/5/2022',400)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(187,43,15, '25/5/2022',2000)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(193,34,58, '23/5/2022',250)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(199,22,10, '30/5/2022',100)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(205,10,8, '30/5/2022',800)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(211,34,20, '28/5/2022',250)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(217,40,6, '27/5/2022',750)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(229,13,2, '25/5/2022',150)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(235,34,6, '25/5/2022',250)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(241,46,4, '22/9/2003',400)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(247,49,10, '14/3/2015',1000)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(253,52,9, '31/7/2019',1800)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(259,55,200, '27/11/1999',50000)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(265,58,10, '2/7/2008',3000)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(271,61,500, '9/7/2008',20000)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(277,64,100, '21/6/2008',5000)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(283,67,100, '26/9/2004',7000)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(289,70,100, '2/10/2004',2000)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(295,73,300, '22/1/2022',18000)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(301,76,1000, '16/9/2021',3000)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(307,79,1000, '14/3/2022',6000)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(313,82,4000, '29/10/2021',40000)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(319,85,1202, '21/11/2020',15626)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(325,88,987, '31/12/2021',3948)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(349,100,6, '8/1/2010',500)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(355,103,9, '2/5/2008',5600)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(361,106,10, '6/5/2008',6000)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(367,109,37, '5/2/2005',6500)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(385,118,100, '11/11/2001',54000)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(391,121,320, '1/6/2000',5700)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(397,124,400, '1/3/2000',500)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(415,133,8000, '6/4/1996',150)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(331,91,23, '22/5/2022',1500)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(337,94,23, '19/7/2020',200000)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(343,97,4, '17/4/2016',24560)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(373,112,47, '21/2/2004',78000)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(403,127,700, '25/9/1999',450)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(409,130,600, '30/5/1997',500)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(379,115,955, '23/6/2002',79000)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(367,136,4, '23/3/2022',500)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(373,139,5, '23/3/2022',250)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(379,145,200, '23/3/2022',750)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(385,148,25, '23/3/2022',1000)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(391,151,44, '23/3/2022',200)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(397,154,21, '23/3/2022',150)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(403,157,17, '23/3/2022',100)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(409,160,12, '23/3/2022',50)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(415,163,166, '23/3/2022',350)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(691,166,24, '23/3/2022',350)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(697,169,459, '23/3/2022',600)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(703,172,210, '23/3/2022',700)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(709,175,525, '23/3/2022',800)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(715,178,115, '23/3/2022',850)
INSERT INTO Detalle_Facturas(codFactura,codProd,cantidad,fechaEntrega,precioUnitario) VALUES(721,184,52, '23/3/2022',1100)




SELECT codDetPedido,codFactura,codProd,cantidad, CONVERT(Varchar,fechaEntrega,103) as [DD/MM/YYYY],precioUnitario
FROM Detalle_Facturas

Select*
from TiposEnvios

select*
from FormasPagos

set dateformat DMY