use InventarioPCsLabs


create procedure INSERTAR_COMPONENTES
@nom_Compo VARCHAR(15)
as
begin
	begin
		insert into Componentes values (@nom_Compo)
	end
end

sp_help Componentes
sp_help Marca
select * from  Componentes

select * from Marca
select * from Componentes

select Marca.Marca from Marca
inner join Marca_Componente on (Marca.Id_Marca = Marca_Componente.id_Marca)
inner join Componentes on (Marca_Componente.id_Compo = Componentes.id_Componente)
where nom_Componente = 'CPU'

select Componentes.nom_Componente from Marca
inner join Marca_Componente on (Marca.Id_Marca = Marca_Componente.id_Marca)
inner join Componentes on (Marca_Componente.id_Compo = Componentes.id_Componente)
where nom_Componente = 'CPU'

create procedure INSERTAR_MARCA_COMPO_CPU
@Marca varchar(50),
@Compo varchar(15)
as
begin
	declare @Mar varchar(50)
	declare @Cop varchar(15)

end