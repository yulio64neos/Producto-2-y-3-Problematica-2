--ALTER TABLE DELETE ON CASCADE
use InventarioPCsLabs

alter table monitor drop constraint fk_marca_monitor
alter table monitor drop column Id_Marca
alter table monitor add Id_Marca int

alter table monitor add constraint fk_marca_monitor
foreign key (Id_Marca) references Marca(Id_Marca)
on delete cascade;

update monitor set monitor.Id_Marca = 7 where monitor.id_monitor = 4
update monitor set monitor.Id_Marca = 8 where monitor.id_monitor = 5

select * from monitor

sp_help monitor

select * from Marca

delete from monitor where monitor.conectores = 'VGA'
insert into monitor values ('VGA', '480x250', 7)
----------------------------------------------------------------------------------
sp_help DiscoDuro
select * from DiscoDuro

alter table DiscoDuro drop constraint fk_marca_disco
alter table DiscoDuro drop column Id_Marca

alter table DiscoDuro add Id_Marca int
alter table DiscoDuro add constraint fk_marca_disco
foreign key (Id_Marca) references Marca(Id_Marca)
on delete cascade

update DiscoDuro set DiscoDuro.Id_Marca = 5 where DiscoDuro.id_Disco = 6
update DiscoDuro set DiscoDuro.Id_Marca = 4 where DiscoDuro.id_Disco = 7


----------------------------------------------------------------------------------
sp_help teclado
select * from teclado
alter table teclado drop constraint fk_marca_teclado
alter table teclado drop column Id_Marca

alter table teclado add Id_Marca int
alter table teclado add constraint fk_marca_teclado
foreign key (Id_Marca) references Marca(Id_Marca)
on delete cascade

update teclado set teclado.Id_Marca = 9 where teclado.id_teclado = 5
update teclado set teclado.Id_Marca = 10 where teclado.id_teclado = 6

----------------------------------------------------------------------------------
sp_help mouse
select * from mouse
alter table mouse drop constraint fk_marca_mouse
alter table mouse drop column Id_Marca

alter table mouse add Id_Marca int

alter table mouse add constraint fk_marca_mouse 
foreign key (Id_Marca) references Marca(Id_Marca)
on delete cascade

update mouse set mouse.Id_Marca = 11 where mouse.id_mouse = 5
update mouse set mouse.Id_Marca = 12 where mouse.id_mouse = 6

----------------------------------------------------------------------------------
sp_help ModeloCPU
select * from ModeloCPU
alter table ModeloCPU drop constraint fk_marca_CPU
alter table ModeloCPU drop column Id_Marca

alter table ModeloCPU add Id_Marca int

alter table ModeloCPU add constraint fk_marca_CPU 
foreign key (Id_Marca) references Marca(Id_Marca)
on delete cascade

update ModeloCPU set ModeloCPU.Id_Marca = 1 where ModeloCPU.id_modcpu = 1
update ModeloCPU set ModeloCPU.Id_Marca = 1 where ModeloCPU.id_modcpu = 2
update ModeloCPU set ModeloCPU.Id_Marca = 1 where ModeloCPU.id_modcpu = 4
update ModeloCPU set ModeloCPU.Id_Marca = 1 where ModeloCPU.id_modcpu = 6
update ModeloCPU set ModeloCPU.Id_Marca = 1 where ModeloCPU.id_modcpu = 7
update ModeloCPU set ModeloCPU.Id_Marca = 2 where ModeloCPU.id_modcpu = 8
update ModeloCPU set ModeloCPU.Id_Marca = 2 where ModeloCPU.id_modcpu = 9
update ModeloCPU set ModeloCPU.Id_Marca = 2 where ModeloCPU.id_modcpu = 10
update ModeloCPU set ModeloCPU.Id_Marca = 2 where ModeloCPU.id_modcpu = 11
update ModeloCPU set ModeloCPU.Id_Marca = 2 where ModeloCPU.id_modcpu = 12
update ModeloCPU set ModeloCPU.Id_Marca = 2 where ModeloCPU.id_modcpu = 13
update ModeloCPU set ModeloCPU.Id_Marca = 2 where ModeloCPU.id_modcpu = 14

----------------------------------------------------------------------------------
sp_help Gabinete
select * from Gabinete
alter table Gabinete drop constraint fk_marca_gabi
alter table Gabinete drop column Id_Marca

alter table Gabinete add Id_Marca int

alter table Gabinete add constraint fk_marca_gabi 
foreign key (Id_Marca) references Marca(Id_Marca)
on delete cascade

update Gabinete set Gabinete.Id_Marca = 13 where Gabinete.id_Gabinete = 5
update Gabinete set Gabinete.Id_Marca = 14 where Gabinete.id_Gabinete = 6
----------------------------------------------------------------------------------

sp_help RAM
select * from RAM

alter table RAM drop constraint FK_RAM_TipoRAM
alter table RAM drop column F_TipoR

alter table RAM add F_TipoR int

alter table RAM add constraint FK_RAM_TipoRAM
foreign key (F_TipoR) references TipoRAM(id_tipoRam)
on delete cascade

update RAM set RAM.F_TipoR = 5 where RAM.id_RAM = 4
update RAM set RAM.F_TipoR = 6 where RAM.id_RAM = 5


----------------------------------------------------------------------------------
sp_help Tipo_CPU
select * from Tipo_CPU

alter table Tipo_CPU drop constraint fk_tipo_modelo_cpu
alter table Tipo_CPU drop column id_modcpu

alter table Tipo_CPU add id_modcpu int
alter table Tipo_CPU add constraint fk_tipo_modelo_cpu
foreign key (id_modcpu) references ModeloCPU(id_modcpu)
on delete cascade

update Tipo_CPU set id_modcpu = 7 where Tipo_CPU.id_Tcpu = 12
update Tipo_CPU set id_modcpu = 7 where Tipo_CPU.id_Tcpu = 13

----------------------------------------------------------------------------------
sp_help CPU_Generico
select * from CPU_Generico

alter table CPU_Generico drop constraint fk_CPU_GEN_GABI
alter table CPU_Generico drop column id_Gabinete

alter table CPU_Generico add id_Gabinete int
alter table CPU_Generico add constraint fk_CPU_GEN_GABI
foreign key (id_Gabinete) references Gabinete (id_Gabinete)
on delete cascade

update CPU_Generico set id_Gabinete = 5 where CPU_Generico.id_CPU = 8
update CPU_Generico set id_Gabinete = 6 where CPU_Generico.id_CPU = 9
update CPU_Generico set id_Gabinete = 6 where CPU_Generico.id_CPU = 10

alter table CPU_Generico drop constraint fk_CPU_GEN_RAM
alter table CPU_Generico drop column f_tipoRam

alter table CPU_Generico add f_tipoRam int
alter table CPU_Generico add constraint fk_CPU_GEN_RAM
foreign key (f_tipoRam) references RAM (id_RAM)
on delete cascade

update CPU_Generico set f_tipoRam = 4 where CPU_Generico.id_CPU = 8
update CPU_Generico set f_tipoRam = 5 where CPU_Generico.id_CPU = 9
update CPU_Generico set f_tipoRam = 5 where CPU_Generico.id_CPU = 10


alter table CPU_Generico drop constraint fk_CPU_GEN_CPUG
alter table CPU_Generico drop column f_Tcpu

alter table CPU_Generico add f_Tcpu int

alter table CPU_Generico add constraint fk_CPU_GEN_CPUG
foreign key (f_Tcpu) references Tipo_CPU (id_Tcpu)
ON DELETE CASCADE

update CPU_Generico set f_Tcpu = 12 where CPU_Generico.id_CPU = 8
update CPU_Generico set f_Tcpu = 13 where CPU_Generico.id_CPU = 9
update CPU_Generico set f_Tcpu = 12 where CPU_Generico.id_CPU = 10

select * from CPU_Generico
delete from CPU_Generico where id_CPU = 9

----------------------------------------------------------------------------------
sp_help computadorafinal
select * from CPU_Generico
select * from computadorafinal

alter table computadorafinal drop constraint FK__computado__id_cp__160F4887
alter table computadorafinal drop column id_cpug

alter table computadorafinal add id_cpug int

alter table computadorafinal add constraint FK_CPUFINAL_CPU_GEN
foreign key (id_cpug) references CPU_Generico (id_CPU)
on delete cascade

update computadorafinal set id_cpug = 8 where computadorafinal.num_inv = 1234567890
update computadorafinal set id_cpug = 9 where computadorafinal.num_inv = 1234567892

sp_help ubicacion
select * from ubicacion
alter table ubicacion drop constraint FK__ubicacion__num_i__1AD3FDA4
alter table ubicacion drop column num_inv

alter table ubicacion add num_inv varchar(10)
alter table ubicacion add constraint FK_UBICACION_PCFINAL
foreign key (num_inv) references computadorafinal (num_inv)
on delete cascade

----------------------------------------------------------------------------------

sp_help actualizacion
select * from actualizacion

alter table actualizacion drop constraint FK__actualiza__fecha__1EA48E88
alter table actualizacion drop column num_inv

alter table actualizacion add num_inv varchar(10)

alter table actualizacion add constraint FK__actualiza__fecha
foreign key (num_inv) references computadorafinal(num_inv)
on delete cascade

update actualizacion set num_inv = 1234567890 where actualizacion.id_act = 1052
update actualizacion set num_inv = 1234567892 where actualizacion.id_act = 1053

update actualizacion set num_inv = 1234567890 where actualizacion.id_act = 1054
update actualizacion set num_inv = 1234567892 where actualizacion.id_act = 1055

----------------------------------------------------------------------------------
select * from cantDisc
select * from teclado
select * from mouse
select * from actualizacion
select * from ubicacion
select * from RAM
select * from Gabinete
select * from Tipo_CPU


sp_help cantDisc
--FK__cantDisc__num_in__3C34F16F

alter table cantDisc drop constraint FK__cantDisc__num_in__3C34F16F
alter table cantDisc drop column num_inv

alter table cantDisc add num_inv varchar(10)
alter table cantDisc add constraint FK_CANTI_DISC_PC
foreign key (num_inv) references computadorafinal(num_inv)
on delete cascade

select * from computadorafinal
update cantDisc set num_inv = 1234567890 where id_cant = 5
update cantDisc set num_inv = 1234567892 where id_cant = 6

select * from computadorafinal
sp_help computadorafinal


insert into computadorafinal values
('9876543210', '14651456125', '14651456137', 6 ,'14651456140', 5, '14651456139', 5,  12, 'K1')


insert into CPU_Generico values
('i5-5570', 5, 4, 12)

delete from computadorafinal where num_inv = '1234567890'

select * from ubicacion

select * from computadorafinal
select * from actualizacion



select * from Componentes
select * from Marca
select * from monitor
select * from teclado
select * from mouse
select * from ModeloCPU
select * from Tipo_CPU
select * from Gabinete
select * from RAM


select * from cantDisc
select * from CPU_Generico
select * from computadorafinal
select * from actualizacion
select * from ubicacion

select * from computadorafinal
select * from ubicacion

update ubicacion set num_inv = 1234567890 where nombre_laboratorio = 'K1'

sp_help computadorafinal