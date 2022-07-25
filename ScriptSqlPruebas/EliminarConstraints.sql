use InventarioPCsLabs

select * from ModeloCPU
select * from Tipo_CPU
select * from Marca
select * from mouse

sp_help DiscoDuro
select Marca, f_MarcaDisco from Marca inner join DiscoDuro on (Marca.Id_Marca = DiscoDuro.F_MarcaDisco);
select Marca, f_marcam from Marca inner join monitor on (Marca.Id_Marca = monitor.f_marcam);
select Marca, f_marcat from Marca inner join teclado on (Marca.Id_Marca = teclado.f_marcat);
select Marca, f_marcamouse from Marca inner join mouse on (Marca.Id_Marca = mouse.f_marcamouse);
select Marca, f_Marca from Marca inner join ModeloCPU on (Marca.Id_Marca = ModeloCPU.f_marca);
select Marca, f_MarcaCpu from Marca inner join CPU_Generico on (Marca.Id_Marca = CPU_Generico.f_MarcaCpu)

sp_help DiscoDuro
alter table DiscoDuro drop constraint FK_DiscoDuro_Marca;
alter table DiscoDuro drop column F_MarcaDisco;

sp_help monitor
alter table monitor drop constraint FK__monitor__f_marca__06CD04F7;
alter table monitor drop column f_marcam

sp_help teclado
alter table teclado drop constraint FK__teclado__f_marca__03F0984C
alter table teclado drop column f_marcat

sp_help mouse
alter table mouse drop constraint FK__mouse__f_marcamo__09A971A2
alter table mouse drop column f_marcamouse

sp_help Gabinete
alter table Gabinete drop constraint FK_Gabinete_Marca
alter table Gabinete drop column F_Marca

sp_help ModeloCPU
alter table ModeloCPU drop constraint FK_ModeloCPU_Marca
alter table ModeloCPU drop column f_marca

sp_help CPU_Generico
alter table CPU_Generico drop constraint FK_CPU_Generico_Marca
alter table CPU_Generico drop column f_MarcaCpu

select * from CPU_Generico

sp_help ModeloCPU
sp_help mouse

sp_help Marca
select * from Marca
select * from DiscoDuro

create table Componentes(
id_Componente int primary key identity(1,1),
nom_Componente varchar(15)
)

--alter table Componentes drop constraint fk_marca_componente
--alter table Componentes drop column id_Marca
--drop table Componentes

insert into Componentes (nom_Componente)
values
('Disco Duro'),
('SSD'),
('Monitor'),
('Teclado'),
('Mouse'),
('Gabinete'),
('ModeloCPU')

update Marca set Marca.Marca = 'Adata' where Id_Marca = 29

select * from Componentes

select * from Marca

delete  from Componentes
--Comando para resetear el ID auto incrementable
DBCC CHECKIDENT (Componentes, RESEED, 0)

alter table Marca drop column Extra
delete from Marca where Id_Componente = 4

alter table Marca add constraint fk_marca_componente foreign key (Id_Componente) references Componentes(id_Componente)

alter table Marca alter column Id_Componente int

sp_help Marca

select * from Componentes

insert into Marca (Marca, Id_Componente) values
('Intel', 7),
('AMD', 7),
('HP', 1),
('ADATA', 1),
('WD', 2),
('SAMSUNG', 2),
('ASUS', 3),
('MSI', 3),
('VORAGO', 4),
('LOGITECH', 4),
('MICROSOFT', 5),
('COOLER MASTER', 5),
('XPG', 6),
('CORSAIR', 6)

select Componentes.nom_Componente as 'Componente', Marca.Marca from Componentes inner join Marca on (Componentes.id_Componente = Marca.Id_Componente)
where nom_Componente = 'ModeloCPU'


select Marca, nom_Componente from Componentes inner join Marca on(Componentes.id_Componente = Marca.Id_Componente)

select * from DiscoDuro
select * from Componentes

alter table DiscoDuro add Id_Marca int
alter table DiscoDuro add constraint fk_marca_disco foreign key(Id_Marca) references Marca(Id_Marca)

alter table DiscoDuro drop column Extra

update DiscoDuro set DiscoDuro.Id_Marca = 5 where id_Disco = 6
update DiscoDuro set DiscoDuro.Id_Marca = 4 where id_Disco = 7

select Marca, nom_Componente from Componentes inner join Marca on(Componentes.id_Componente = Marca.Id_Componente)




alter table Marca drop constraint fk_marca_componente
alter table Marca drop column Id_Componente

select * from Marca


create table Marca_Componente(
id_Marca int not null,
id_Compo int not null,
constraint fk_marca_t foreign key (id_Marca) references Marca(Id_Marca),
constraint fk_compo_t foreign key (id_Compo) references Componentes(id_Componente)
)

select * from Marca
select * from Componentes
insert into Marca_Componente (id_Marca, id_Compo) 
values
(1, 7),
(2, 7),
(3, 1),
(4, 1),
(5, 2),
(6, 2),
(7, 3),
(8, 3),
(9, 4),
(10, 4),
(11, 5),
(12, 5),
(13, 6),
(14, 6);

select Marca.Id_Marca, Marca, nom_Componente from Marca inner join Marca_Componente
ON (Marca.Id_Marca = Marca_Componente.id_Marca) inner join Componentes
ON (Componentes.id_Componente = Marca_Componente.id_Compo)

select Marca, nom_Componente as 'Componente' from Marca inner join Marca_Componente
ON (Marca.Id_Marca = Marca_Componente.id_Marca) inner join Componentes
ON (Componentes.id_Componente = Marca_Componente.id_Compo)

SELECT TipoDisco as 'Tipo del Disco', nom_Componente as 'Componente', Marca 
FROM DiscoDuro inner join Marca ON (Marca.Id_Marca = DiscoDuro.Id_Marca)
inner join Marca_Componente  ON (Marca.Id_Marca = Marca_Componente.id_Marca)
inner join Componentes ON (Marca_Componente.id_Compo = Componentes.id_Componente)

select * from DiscoDuro

alter table monitor add Id_Marca int
alter table monitor add constraint fk_marca_monitor foreign key (Id_Marca) references Marca(Id_Marca)

update monitor set monitor.Id_Marca = 7 where monitor.id_monitor = 4
update monitor set monitor.Id_Marca = 8 where monitor.id_monitor = 5

SELECT conectores as 'Adaptador', nom_Componente as 'Componente', Marca 
FROM monitor inner join Marca ON (Marca.Id_Marca = monitor.Id_Marca)
inner join Marca_Componente  ON (Marca.Id_Marca = Marca_Componente.id_Marca)
inner join Componentes ON (Marca_Componente.id_Compo = Componentes.id_Componente)


alter table teclado add Id_Marca int
alter table teclado add constraint fk_marca_teclado foreign key (Id_Marca) references Marca(Id_Marca)

select * from teclado

update teclado set teclado.Id_Marca = 9 where teclado.id_teclado = 5
update teclado set teclado.Id_Marca = 10 where teclado.id_teclado = 6


SELECT conector as 'Adaptador', nom_Componente as 'Componente', Marca 
FROM teclado inner join Marca ON (Marca.Id_Marca = teclado.Id_Marca)
inner join Marca_Componente  ON (Marca.Id_Marca = Marca_Componente.id_Marca)
inner join Componentes ON (Marca_Componente.id_Compo = Componentes.id_Componente)

alter table mouse add Id_Marca int
alter table mouse add constraint fk_marca_mouse foreign key (Id_Marca) references Marca(Id_Marca)

select * from mouse

update mouse set mouse.Id_Marca = 11 where mouse.id_mouse = 5
update mouse set mouse.Id_Marca = 12 where mouse.id_mouse = 6

SELECT conector, nom_Componente, Marca 
FROM mouse inner join Marca ON (Marca.Id_Marca = mouse.Id_Marca)
inner join Marca_Componente  ON (Marca.Id_Marca = Marca_Componente.id_Marca)
inner join Componentes ON (Marca_Componente.id_Compo = Componentes.id_Componente)

alter table Gabinete add Id_Marca int
alter table Gabinete add constraint fk_marca_gabi foreign key (Id_Marca) references Marca(Id_Marca)

select * from Gabinete

update Gabinete set Gabinete.Id_Marca = 13 where Gabinete.id_Gabinete = 5
update Gabinete set Gabinete.Id_Marca = 14 where Gabinete.id_Gabinete = 6

SELECT TipoForma, nom_Componente, Marca 
FROM Gabinete inner join Marca ON (Marca.Id_Marca = Gabinete.Id_Marca)
inner join Marca_Componente  ON (Marca.Id_Marca = Marca_Componente.id_Marca)
inner join Componentes ON (Marca_Componente.id_Compo = Componentes.id_Componente)

alter table ModeloCPU add Id_Marca int
alter table ModeloCPU add constraint fk_marca_CPU foreign key (Id_Marca) references Marca(Id_Marca)

select * from ModeloCPU

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

SELECT modeloCPU, nom_Componente, Marca 
FROM ModeloCPU inner join Marca ON (Marca.Id_Marca = ModeloCPU.Id_Marca)
inner join Marca_Componente  ON (Marca.Id_Marca = Marca_Componente.id_Marca)
inner join Componentes ON (Marca_Componente.id_Compo = Componentes.id_Componente)

select * from actualizacion

sp_help DiscoDuro
sp_help monitor
sp_help teclado
sp_help mouse
sp_help Gabinete


select * from Tipo_CPU
select * from ModeloCPU

sp_help Tipo_CPU

alter table Tipo_CPU drop column Extra
alter table Tipo_CPU add id_modcpu int
alter table Tipo_CPU add constraint fk_tipo_modelo_cpu foreign key (id_modcpu) references ModeloCPU(id_modcpu)

update Tipo_CPU set Tipo_CPU.id_modcpu = 7 where id_Tcpu = 12
update Tipo_CPU set Tipo_CPU.id_modcpu = 7 where id_Tcpu = 13
update Tipo_CPU set Tipo_CPU.Velocidad = '3.5Ghz' where id_Tcpu = 12
update Tipo_CPU set Tipo_CPU.Velocidad = '4.2Ghz' where id_Tcpu = 13

select modeloCPU, Familia, Velocidad from Tipo_CPU inner join ModeloCPU on (ModeloCPU.id_modcpu = Tipo_CPU.id_modcpu)

select Marca, modeloCPU, Familia, Velocidad from
Marca inner join ModeloCPU on (Marca.Id_Marca = ModeloCPU.Id_Marca)
inner join Tipo_CPU on (ModeloCPU.id_modcpu = Tipo_CPU.id_modcpu)

select * from computadorafinal

sp_help computadorafinal

select nom_Componente as 'Componente' from Componentes