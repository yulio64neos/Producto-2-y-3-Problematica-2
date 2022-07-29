select * from Componentes
sp_help Componentes

create procedure ELIMINA_COMPONENTE
@Compo varchar(15)
as
begin
	delete from Componentes where nom_Componente = @Compo
end

exec ELIMINA_COMPONENTE 'WebCAM'
--------------------------------------------------------------------------
--------------------------------------------------------------------------
select * from Marca
sp_help Marca

create procedure ELIMINA_MARCA
@Marca varchar(50)
as
begin
	delete from Marca where Marca.Marca = @Marca
end

exec ELIMINA_MARCA 'HYPERX'

--------------------------------------------------------------------------
--------------------------------------------------------------------------

select * from monitor
sp_help monitor
create procedure ELIMINA_MONITOR
@Mon varchar(64)
as
begin
	delete from monitor where monitor.conectores = @Mon
end

exec ELIMINA_MONITOR 'HDMI'

--------------------------------------------------------------------------
--------------------------------------------------------------------------

select * from DiscoDuro
sp_help DiscoDuro
create procedure ELIMINA_DISCO
@TIPODISCO varchar(20)
as
begin
	delete from DiscoDuro where DiscoDuro.TipoDisco = @TIPODISCO
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

create procedure ELIMINA_TECLADO
@Connect varchar(5)
as
begin
	delete from teclado where conector = @Connect
end

exec ELIMINA_TECLADO 'PS27'

alter table computadorafinal drop constraint FK__computado__id_te__17036CC0
alter table computadorafinal drop column id_tecladog

alter table computadorafinal add id_tecladog int
alter table computadorafinal add constraint FK_PC_TECLADO
foreign key (id_tecladog) references teclado(id_teclado)
on delete cascade

update cantDisc set cantDisc.id_Disco = 7 where cantDisc.id_cant = 8
update cantDisc set cantDisc.id_Disco = 6 where cantDisc.id_cant = 11

select * from computadorafinal