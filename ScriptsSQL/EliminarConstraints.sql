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