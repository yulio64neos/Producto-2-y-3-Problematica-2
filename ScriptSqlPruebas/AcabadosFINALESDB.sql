sp_help ubicacion


alter table ubicacion drop constraint FK_UBICACION_PCFINAL
delete from ubicacion

select * from computadorafinal
alter table computadorafinal drop column estado

alter table ubicacion drop constraint FK__ubicacion__nombr__1BC821DD
drop table ubicacion

select * from computadorafinal
select * from actualizacion


select * from laboratorio



sp_help laboratorio
alter table computadorafinal add nom_labo varchar(64)
alter table computadorafinal add constraint compu_labo
foreign key (nom_labo) references laboratorio(nombre_laboratorio)
on delete cascade

select * from computadorafinal
update computadorafinal set nom_labo = 'K1' where computadorafinal.num_inv = 1234567890

select * from cantDisc
sp_help cantDisc
select * from DiscoDuro
insert into cantDisc values(6, 2, 1234567890)
insert into cantDisc values(7, 1, 9876543210)

select computadorafinal.num_inv, id_Disco, teclado.conector as 'teclado', mouse.conector as 'mouse', 
monitor.conectores, CPU_Generico.Modelo, laboratorio.nombre_laboratorio, actualizacion.descripcion
from computadorafinal inner join monitor on (computadorafinal.id_mong = monitor.id_monitor)
inner join cantDisc on (computadorafinal.num_inv = cantDisc.num_inv)
inner join mouse on (computadorafinal.id_mousg = mouse.id_mouse)
inner join teclado on (computadorafinal.id_tecladog = teclado.id_teclado)
inner join CPU_Generico on (computadorafinal.id_cpug = CPU_Generico.id_CPU)
inner join laboratorio on (computadorafinal.nom_labo = laboratorio.nombre_laboratorio)
inner join actualizacion on (computadorafinal.num_inv = actualizacion.num_inv)


select computadorafinal.num_inv, id_Disco, teclado.conector as 'teclado', mouse.conector as 'mouse', 
monitor.conectores, CPU_Generico.Modelo, laboratorio.nombre_laboratorio
from computadorafinal inner join monitor on (computadorafinal.id_mong = monitor.id_monitor)
inner join cantDisc on (computadorafinal.num_inv = cantDisc.num_inv)
inner join mouse on (computadorafinal.id_mousg = mouse.id_mouse)
inner join teclado on (computadorafinal.id_tecladog = teclado.id_teclado)
inner join CPU_Generico on (computadorafinal.id_cpug = CPU_Generico.id_CPU)
inner join laboratorio on (computadorafinal.nom_labo = laboratorio.nombre_laboratorio)

select * from computadorafinal

insert into actualizacion values ('1456880', 'DISCO RAYADO', '08-08-2022', '1234567890')
insert into actualizacion values ('1456880', 'NO DA VIDEO', '08-08-2022', '9876543210')

insert into actualizacion values ('1456850', 'FALLA DE ACTUALIZACION', '10-08-2022', '1234567890')
insert into actualizacion values ('1456830', 'FALLAN PUERTOS USB', '10-08-2022', '9876543210')

delete from actualizacion where id_act = 1063
select * from actualizacion

delete from computadorafinal where num_inv = '1234567890'

select * from actualizacion
select * from laboratorio

select * from cantDis

select * from computadorafinal
update computadorafinal set nom_labo = 'K2' where computadorafinal.num_inv = 9876543210

alter table computadorafinal drop column num_scpu
alter table computadorafinal drop column num_steclado
alter table computadorafinal drop column num_smonitor
alter table computadorafinal drop column num_smouse

select * from computadorafinal
