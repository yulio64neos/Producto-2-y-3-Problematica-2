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



