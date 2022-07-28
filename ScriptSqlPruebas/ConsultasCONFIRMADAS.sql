--pruebas de consultas

--funciona
select Marca from Marca
--funciona
select nom_Componente as 'Componente' from Componentes;

--funciona
select Marca, nom_Componente as 'Componente' from Marca inner join Marca_Componente
ON(Marca.Id_Marca = Marca_Componente.id_Marca) inner join Componentes
ON(Componentes.id_Componente = Marca_Componente.id_Compo);

--funciona
SELECT TipoDisco as 'Tipo del Disco', nom_Componente as 'Componente', Marca 
FROM DiscoDuro inner join Marca ON(Marca.Id_Marca = DiscoDuro.Id_Marca)
inner join Marca_Componente ON(Marca.Id_Marca = Marca_Componente.id_Marca)
inner join Componentes ON(Marca_Componente.id_Compo = Componentes.id_Componente)

--funciona
SELECT conectores as 'Adaptador', nom_Componente as 'Componente', Marca
FROM monitor inner join Marca ON(Marca.Id_Marca = monitor.Id_Marca)
inner join Marca_Componente ON(Marca.Id_Marca = Marca_Componente.id_Marca)
inner join Componentes ON(Marca_Componente.id_Compo = Componentes.id_Componente);

--funciona
SELECT conector as 'Adaptador', nom_Componente as 'Componente', Marca
FROM teclado inner join Marca ON(Marca.Id_Marca = teclado.Id_Marca)
inner join Marca_Componente ON(Marca.Id_Marca = Marca_Componente.id_Marca)
inner join Componentes ON(Marca_Componente.id_Compo = Componentes.id_Componente)

--funciona
SELECT conector, nom_Componente, Marca
FROM mouse inner join Marca ON(Marca.Id_Marca = mouse.Id_Marca)
inner join Marca_Componente ON(Marca.Id_Marca = Marca_Componente.id_Marca)
inner join Componentes ON(Marca_Componente.id_Compo = Componentes.id_Componente)

--funciona
SELECT TipoForma, nom_Componente, Marca
FROM Gabinete inner join Marca ON(Marca.Id_Marca = Gabinete.Id_Marca)
inner join Marca_Componente ON(Marca.Id_Marca = Marca_Componente.id_Marca)
inner join Componentes ON(Marca_Componente.id_Compo = Componentes.id_Componente)

--funciona
SELECT modeloCPU, nom_Componente, Marca
FROM ModeloCPU inner join Marca ON(Marca.Id_Marca = ModeloCPU.Id_Marca)
inner join Marca_Componente ON(Marca.Id_Marca = Marca_Componente.id_Marca)
inner join Componentes ON(Marca_Componente.id_Compo = Componentes.id_Componente)

--funciona
exec LISTA_PcCOMPONENTES '9876543210'

--select * from computadorafinal
--insert into computadorafinal values ('1234567890', 6, 5, 5, 12, 'K1')

--funciona
exec MONITOR_PC_LABO 'HDMI'
select * from monitor

--funciona
exec PC_ACTUALIZACION '9876543210'

--funciona
SELECT laboratorio.nombre_laboratorio as 'Laboratorio asignado', CPU_Generico.Modelo as 'Modelo del CPU',
teclado.conector as 'Conector del teclado',
monitor.conectores as 'Conector del monitor',
mouse.conector as 'Conector del mouse',
DiscoDuro.TipoDisco as 'Tipo de DD',
DiscoDuro.Capacidad as 'Capacidad de DD',
TipoRAM.Tipo as 'Tipo de Memoria RAM',
RAM.Capacidad as 'Almacenamiento RAM' from laboratorio
INNER JOIN computadorafinal ON(computadorafinal.nom_labo = laboratorio.nombre_laboratorio)
INNER JOIN CPU_Generico ON(computadorafinal.id_cpug = CPU_Generico.id_CPU)
INNER JOIN teclado ON(computadorafinal.id_tecladog = teclado.id_teclado)
INNER JOIN monitor ON(computadorafinal.id_mong = monitor.id_monitor) 
INNER JOIN mouse ON(computadorafinal.id_mousg = mouse.id_mouse)
INNER JOIN cantDisc ON(computadorafinal.num_inv = cantDisc.num_inv)
INNER JOIN DiscoDuro ON(cantDisc.id_Disco = DiscoDuro.id_Disco)
INNER JOIN RAM on (RAM.id_RAM = CPU_Generico.f_tipoRam)
INNER JOIN TipoRAM on (RAM.F_TipoR = TipoRAM.id_tipoRam)

--funciona
SELECT computadorafinal.num_inv as 'Número del Equipo',
laboratorio.nombre_laboratorio as 'Laboratorio asignado',
DiscoDuro.TipoDisco as 'Tipo de Disco'
FROM laboratorio
INNER JOIN computadorafinal ON(laboratorio.nombre_laboratorio = computadorafinal.nom_labo)
INNER JOIN cantDisc ON(computadorafinal.num_inv = cantDisc.num_inv)
INNER JOIN DiscoDuro ON(cantDisc.id_Disco = DiscoDuro.id_Disco) WHERE DiscoDuro.TipoDisco = 'SSD'

select * from computadorafinal
select * from DiscoDuro
select * from cantDisc

insert into cantDisc values (6, 8, '1234567890')
sp_help cantDisc


-----------------------------------------------------------------
--Listas
select num_inv from computadorafinal;
select conectores from monitor

select * from Marca
exec INSERTA_MARCA 'HYPERX'

select * from Componentes

exec INSERTAR_COMPONENTES 'WebCAM'
