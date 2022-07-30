select * from Componentes
sp_help Componentes

alter procedure ELIMINA_COMPONENTE
@idComp int
as
begin
	delete from Componentes where nom_Componente = @idComp
end

exec ELIMINA_COMPONENTE 'WebCAM'

alter table Componentes add constraint UQ_Compo UNIQUE (nom_Componente)

--------------------------------------------------------------------------
--------------------------------------------------------------------------
select * from Marca
sp_help Marca

alter procedure ELIMINA_MARCA
@idMar int
as
begin
	delete from Marca where Marca.Marca = @idMar
end

exec ELIMINA_MARCA 'HYPERX'
alter table Marca add constraint UQ_Marca UNIQUE (Marca)

--------------------------------------------------------------------------
--------------------------------------------------------------------------

select * from monitor
sp_help monitor
alter procedure ELIMINA_MONITOR
@idMon int
as
begin
	delete from monitor where monitor.conectores = @idMon
end

select * from Marca
select * from Componentes
select * from monitor
exec ELIMINA_MONITOR 'HDMI'

insert into monitor values('VGA', '1280x720', 8)
select * from computadorafinal
select * from monitor
select * from computadorafinal

select * from computadorafinal
sp_help computadorafinal
alter table computadorafinal drop constraint FK_PC_MONITOR
alter table computadorafinal drop column id_mong

alter table computadorafinal add id_mong int
alter table computadorafinal add constraint FK_PC_MONITOR
foreign key (id_mong) references monitor(id_monitor)

insert into monitor values('HDMI', '1920x1080', 8)
--------------------------------------------------------------------------
--------------------------------------------------------------------------

select * from DiscoDuro
sp_help DiscoDuro
alter procedure ELIMINA_DISCO
@idDisco int
as
begin
	delete from DiscoDuro where DiscoDuro.TipoDisco = @idDisco
end

exec ELIMINA_DISCO 'Disco Mecanico'

select * from DiscoDuro
select * from cantDisc

sp_help cantDisc

select * from cantDisc

alter table cantDisc drop constraint FK__cantDisc__id_Dis__3D2915A8
alter table cantDisc drop column id_Disco

alter table cantDisc add id_Disco int
alter table cantDisc add constraint FK_cantDISCO_DURO
foreign key (id_Disco) references DiscoDuro(id_Disco)
on delete cascade

update cantDisc set cantDisc.id_Disco = 7 where cantDisc.id_cant = 8
update cantDisc set cantDisc.id_Disco = 6 where cantDisc.id_cant = 11

select * from computadorafinal

--------------------------------------------------------------------------
--------------------------------------------------------------------------
select * from teclado
sp_help computadorafinal

alter procedure ELIMINA_TECLADO
@idTecla int
as
begin
	delete from teclado where conector = @idTecla
end

exec ELIMINA_TECLADO 'USB'

alter table computadorafinal drop constraint FK__computado__id_te__17036CC0
alter table computadorafinal drop column id_tecladog

alter table computadorafinal add id_tecladog int
alter table computadorafinal add constraint FK_PC_TECLADO
foreign key (id_tecladog) references teclado(id_teclado)
on delete cascade

update cantDisc set cantDisc.id_Disco = 7 where cantDisc.id_cant = 8
update cantDisc set cantDisc.id_Disco = 6 where cantDisc.id_cant = 11

select * from computadorafinal

select * from cantDisc
select * from DiscoDuro

insert into cantDisc values (2, '9876543210', 6)

select * from teclado
insert into teclado values ('BT', 9)

--------------------------------------------------------------------------
--------------------------------------------------------------------------

select * from computadorafinal
select * from actualizacion
select * from CPU_Generico
select * from cantDisc
delete from CPU_Generico where CPU_Generico.id_CPU = 12

select * from monitor
select * from DiscoDuro
select * from teclado
select * from mouse

select * from Gabinete
select * from Tipo_CPU
select * from RAM

insert into computadorafinal values ('1234567890', 5, 13, 'K1', 10, 7)

insert into CPU_Generico values ('i5-5570', 5, 4, 12)
select * from CPU_Generico

select * from teclado
select * from computadorafinal

delete from teclado where id_teclado = 10

select * from mouse
select * from Marca
select * from computadorafinal

----------------------------------------------------------------------
delete from Marca_Componente where id_Marca = 1003
delete from Marca where Marca.Id_Marca = 1003
----------------------------------------------------------------------

SELECT * FROM Marca_Componente
select * from Marca
select * from Componentes

insert into Marca values ('Razer')
insert into Marca values ('Predator')

insert into Marca_Componente values (1003, 5)

-----------------------------------------------------------------------
-----------------------------------------------------------------------


select * from Marca

insert into mouse values ('BT', 11)

select * from mouse
sp_help mouse
alter procedure ELIMINA_MOUSE
@idMouse int
as
begin
	delete from mouse where mouse.conector = @idMouse
end

exec ELIMINA_MOUSE 'BT'

-----------------------------------------------------------------------
-----------------------------------------------------------------------

select * from CPU_Generico
sp_help CPU_Generico
select * from Gabinete
select * from Tipo_CPU
select * from RAM
insert into CPU_Generico values ('i3-3250', 5, 4, 12)

alter procedure ELIMINA_CPU_GEN
@idCPUGEN int
as
begin
	delete from CPU_Generico where CPU_Generico.Modelo = @idCPUGEN
end

exec ELIMINA_CPU_GEN 'i3-3250'


select * from TipoRAM
select * from RAM
select * from CPU_Generico


alter table computadorafinal add constraint UQ_CPUFINAL UNIQUE (num_inv)

alter table laboratorio add constraint UQ_LABO UNIQUE (nombre_laboratorio)

create procedure ELIMINA_RAM
@idRAM int
as
begin
	delete from RAM where RAM.id_RAM = @idRAM
end

select * from RAM

create procedure ELIMINA_TIPORAM
@idRTIP int
as
begin
	delete from TipoRAM WHERE TipoRAM.id_tipoRam = @idRTIP
end

create procedure ELIMINA_GABI
@idGab int
as
begin
	delete from Gabinete where Gabinete.id_Gabinete = @idGab
end

create procedure ELIMINA_TIPOCPU
@idTipo int
as
begin
	delete from Tipo_CPU where Tipo_CPU.id_Tcpu = @idTipo
end

create procedure ELIMINA_MODELOCPU
@idModelo int
as
begin
	delete from ModeloCPU where ModeloCPU.id_modcpu = @idModelo
end

create procedure ELIMINA_CANTDISK
@idCantDisk int
as
begin
	delete from cantDisc where cantDisc.id_cant = @idCantDisk
end

create procedure ELIMINAR_CPUFINAL
@idCPU varchar(10)
as
begin
	delete from computadorafinal where computadorafinal.num_inv = @idCPU
end


create procedure ELIMINAR_ACTUALIZACION
@idACT int
as
begin
	delete from actualizacion where actualizacion.id_act = @idACT
end
sp_help laboratorio
create procedure ELIMINAR_LABO
@nomLab varchar(64)
as
begin
	delete from laboratorio where laboratorio.nombre_laboratorio = @nomLab
end

select * from CPU_Generico
select * from TipoRAM
select * from RAM

alter table TipoRAM add constraint UQ_TipoRAM UNIQUE (Tipo)

select * from Gabinete
select * from Tipo_CPU
select * from ModeloCPU


alter table ModeloCPU add constraint UQ_ModelCPU UNIQUE (modeloCPU)











update computadorafinal set id_tecladog = 7 where num_inv = '1234567890'
update computadorafinal set id_mong = 8 where computadorafinal.num_inv = '1234567890'