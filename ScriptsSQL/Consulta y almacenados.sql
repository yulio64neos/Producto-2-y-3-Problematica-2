---------------------------------------------AGREGADO------------------------------------------------------------------------------------------------
--TIPO RAM
CREATE PROCEDURE InsertarTipoRAM
@tipo varchar(20)
AS
BEGIN 
INSERT TipoRAM VALUES(@tipo)
END

SELECT * FROM TipoRAM
EXEC InsertarTipoRAM DDR4

--RAM
CREATE PROCEDURE InsertarRAM
@capacidad smallint,
@velocidad varchar(15),
@idTipo varchar(20)
AS
BEGIN 
INSERT RAM VALUES(@capacidad, @velocidad,(SELECT id_tipoRam FROM TipoRAM WHERE TipoRAM.Tipo=@idTipo))
END

SELECT * FROM RAM
SELECT * FROM TipoRAM
EXEC InsertarRAM 12,700,DDR4


--GABINETE
CREATE PROCEDURE InsertarGabinete
@modelo varchar(10),
@tipoFo varchar(30),
@idMarca varchar(50)
AS
BEGIN 
INSERT Gabinete VALUES(@modelo,@tipoFo,
(SELECT Id_Marca FROM Marca WHERE Marca.Marca=@idMarca))
END

SELECT * FROM RAM
SELECT * FROM Gabinete
EXEC InsertarGabinete Hibrido,Cascada,HP

--Modelo ¨CPU
CREATE PROCEDURE IntesertaMCPU2
@modeloCPU varchar(50),
@idMarca varchar(50) 
AS
BEGIN 
INSERT INTO ModeloCPU VALUES (@modeloCPU, (SELECT Id_Marca FROM Marca WHERE Marca.Marca=@idMarca))
end

SELECT * FROM ModeloCPU 
SELECT * FROM Marca 
EXEC IntesertaMCPU2 i4, XPG

--TIPO CPU
CREATE PROCEDURE InsertarTipoCPU1
@familia varchar(30),
@velocidad varchar(50),
@idModeloCPU varchar(50)
AS
BEGIN 
INSERT Tipo_CPU VALUES(@familia,@velocidad,(SELECT id_modcpu FROM ModeloCPU WHERE modeloCPU=@idModeloCPU))
END

SELECT * FROM Tipo_CPU
SELECT * FROM ModeloCPU
EXEC InsertarTipoCPU1 ongen,ghz,Pentium

--CPU GENERICO
CREATE PROCEDURE InsertarCPUGenerico
@Modelo varchar(20),
@idGabineteM varchar(10), @idGabineteT varchar(30),
@tRamC smallint, @tRamV varchar(15),
@tCPUf varchar(30), @tCPUv varchar(50)
AS
BEGIN 
INSERT CPU_Generico VALUES(@Modelo,
(SELECT id_Gabinete FROM Gabinete WHERE Modelo=@idGabineteM AND TipoForma=@idGabineteT),
(SELECT id_RAM FROM RAM WHERE Capacidad=@tRamC AND Velocidad=@tRamV),
(SELECT id_Tcpu FROM Tipo_CPU WHERE Familia=@tCPUf AND Velocidad=@tCPUv))
END

SELECT * FROM CPU_Generico
EXEC InsertarCPUGenerico CRJ,Generico,Torre,4,500,ongen,ghz
sp_help Tipo_CPU

--MOUSE
CREATE PROCEDURE InsertarMouse
@coenctor varchar(64),
@idMarca varchar(50)
AS
BEGIN 
INSERT mouse VALUES(@coenctor,(SELECT Id_Marca FROM Marca WHERE Marca.Marca=@idMarca))
END

SELECT * FROM mouse
SELECT * FROM Marca
EXEC InsertarMouse RJ45,Intel

--Teclado
CREATE PROCEDURE InsertarTeclado
@conector varchar(5),
@idMarca varchar(50)
AS
BEGIN 
INSERT teclado VALUES(@conector,(SELECT Id_Marca FROM Marca WHERE Marca.Marca=@idMarca))
END

SELECT * FROM computadorafinal
SELECT * FROM teclado
EXEC InsertarTeclado HMI, ADATA

--MONITOR
CREATE PROCEDURE InsertarMonitor
@conectores varchar(64),
@tamano varchar(64),
@idMarca varchar(50)
AS
BEGIN 
INSERT monitor VALUES(@conectores,@tamano,(SELECT Id_Marca FROM Marca WHERE Marca.Marca=@idMarca))
END

SELECT * FROM monitor
SELECT * FROM Marca
EXEC InsertarMonitor CJK,'180x180',HP
sp_help DiscoDuro
--DISCO DURO 
CREATE PROCEDURE InsertarDD
@TipoD varchar(20),
@coenctor varchar(10),
@capacidad varchar(12),
@idMarca varchar(50)
AS
BEGIN 
INSERT DiscoDuro VALUES(@TipoD,@coenctor,@capacidad,
(SELECT Id_Marca FROM Marca WHERE Marca.Marca=@idMarca))
END

SELECT * FROM DiscoDuro
SELECT * FROM Marca
EXEC InsertarDD Solido,SATA,'1 tb',SAMSUNG

--CANT DISCO
CREATE PROCEDURE InsertarCANTDISCO
@cantidad int,
@num_inv varchar(10),
@idDisco varchar(20)
AS
BEGIN 
INSERT cantDisc VALUES(@cantidad,
(SELECT num_inv FROM computadorafinal WHERE num_inv=@num_inv),
(SELECT id_Disco FROM DiscoDuro WHERE TipoDisco=@idDisco))
END

SELECT * FROM cantDisc
SELECT * FROM DiscoDuro
SELECT *FROM computadorafinal
sp_help cantDisc
EXEC InsertarCANTDISCO 12,64856824,Solido
--laboratorio
CREATE PROCEDURE InsertarLABORATORIO
@num_inv varchar(64)
AS
BEGIN 
INSERT laboratorio VALUES(@num_inv)
END

SELECT * FROM cantDisc
EXEC InsertarLABORATORIO K5

--COMPUTADORA FINAL
CREATE PROCEDURE InsertarPCFINAL
@num varchar(10),
@idMous varchar(64),
@idCpu varchar(64),
@idLab varchar(64),
@idtec varchar(64),
@idMonC varchar(64), @idMonT varchar(64),
@img1 varchar(200), @img2 varchar(200), @img3 varchar(200)
AS
BEGIN 
INSERT computadorafinal VALUES (@num,
(SELECT id_mouse FROM mouse WHERE conector=@idMous),
(SELECT id_CPU FROM CPU_Generico WHERE Modelo=@idCpu),
(SELECT nombre_laboratorio FROM laboratorio WHERE nombre_laboratorio=@idLab),
(SELECT id_teclado FROM teclado WHERE conector=@idtec),
(SELECT id_monitor FROM monitor WHERE conectores=@idMonC AND tamano=@idMonT),
@img1,@img2,@img3)
END

SELECT * FROM computadorafinal
SELECT * FROM monitor
EXEC InsertarPCFINAL 8524567391,CJK,'180x180',USB,CRJ,K5,PS27
sp_help computadorafinal
--ACUTALIZCION 
CREATE PROCEDURE InsertarActualizaciones
@num_inv varchar(10),
@num_serie varchar(11),
@des varchar(64)
AS
BEGIN 
INSERT actualizacion VALUES((SELECT num_inv FROM computadorafinal WHERE computadorafinal.num_inv=@num_inv),
@num_serie, @des, GETDATE())
END

--EXEC EliminarPCFINAL 1234567892
------------------------------------ACTUALIZACION------------------------------------------------------------------

--ACTUALIZAR MOUSE
CREATE PROCEDURE Act_MOUSES
@indica varchar(64), @indca2 varchar(64),
@camConec varchar(64), @camMarca varchar(50)
AS
BEGIN 
UPDATE mouse SET conector = @camConec, Id_Marca=(SELECT Id_Marca FROM Marca WHERE Marca.Marca=@camMarca)  
WHERE conector=@indica AND Id_Marca=(SELECT Id_Marca FROM Marca WHERE Marca.Marca=@indca2)
END

SELECT * FROM monitor
SELECT * FROM Marca
EXEC Act_MOUSES RJ47,XPG,HDMI,MSI

--ACTUALIZAR TECLADO
CREATE PROCEDURE Act_TECLADO
@indicar varchar(64),@indicar2 varchar(64),
@camConec varchar(64), @camMarca varchar(50)
AS
BEGIN 
UPDATE teclado SET conector = @camConec, Id_Marca=(SELECT Id_Marca FROM Marca WHERE Marca.Marca=@camMarca)  
WHERE conector=@indicar AND Id_Marca=(SELECT Id_Marca FROM Marca WHERE Marca.Marca=@indicar2)
END

SELECT * FROM teclado
SELECT * FROM Marca
EXEC Act_TECLADO USB,VORAGO,GBA,WD

--ACTUALIZAR MONITOR
CREATE PROCEDURE Act_MONITOR
@indicar varchar(64), @indicar2 varchar(64),
@camConec varchar(64), @tamano varchar(64), @camMarca varchar(50)
AS
BEGIN 
UPDATE monitor SET conectores = @camConec, tamano=@tamano,Id_Marca=(SELECT Id_Marca FROM Marca WHERE Marca.Marca=@camMarca)  
WHERE conectores=@indicar AND Id_Marca=(SELECT Id_Marca FROM Marca WHERE Marca.Marca=@indicar2)
END

SELECT * FROM monitor
SELECT * FROM Marca
EXEC Act_MONITOR VGA,ASUS,GVA,x, WD

SELECT Marca FROM Marca WHERE Id_Marca!=(SELECT Id_Marca FROM monitor  WHERE Id_Marca=8)

--ACTUALIZAR RAM
CREATE PROCEDURE Act_RAM
@indicar varchar(64), @indicar2 varchar(64),
@caCapacida smallint, @camVelocida varchar(64), @tipoR varchar(64)
AS
BEGIN 
UPDATE RAM SET Capacidad=@caCapacida, Velocidad =@camVelocida, F_TipoR=(SELECT id_tipoRam FROM TipoRAM WHERE
Tipo=@tipoR) WHERE Capacidad =@indicar AND Velocidad=@indicar2
END

SELECT * FROM RAM
SELECT * FROM TipoRAM
EXEC Act_RAM 8,700,12,900,DDR4

--ACTUALIZAR GABINETE
CREATE PROCEDURE Act_GABINETE
@indicar1 varchar(64), @indicar2 varchar(64),
@caModelo varchar(10), @tForma varchar(30), @idMarca varchar(64) 
AS
BEGIN 
UPDATE Gabinete SET Modelo=@caModelo, TipoForma=@tForma, Id_Marca=(SELECT Id_Marca FROM Marca WHERE Marca.Marca=@idMarca)
WHERE Modelo=@indicar1 AND TipoForma=@indicar2
END

SELECT * FROM Gabinete
EXEC Act_GABINETE Generico,Torre, Hibrido,Cas,HP
--ACTUALIZAR TIPO CPU
CREATE PROCEDURE Act_TCPU
@ind1 varchar(30), @ind2 varchar(50),
@mfam varchar(30), @mVelo varchar(50), @mMod varchar(64)
AS
BEGIN 
UPDATE Tipo_CPU SET Familia=@mfam, Velocidad=@mVelo, id_modcpu=(SELECT id_modcpu FROM ModeloCPU WHERE modeloCPU=@mMod)
WHERE Familia=@ind1 AND Velocidad =@ind2
END

SELECT * FROM Tipo_CPU
EXEC Act_TCPU ongen,ghz,Gen,ghzx,Phenom
--ACTUALIZAR MODELO
CREATE PROCEDURE Act_MODCPU
@in1 varchar(50),
@cModelo varchar(50), @cMar varchar(64)
AS
BEGIN 
UPDATE ModeloCPU SET modeloCPU=@cModelo, Id_Marca=(SELECT Id_Marca FROM Marca WHERE Marca.Marca=@cMar)
WHERE modeloCPU =@in1
END

	SELECT * FROM RAM
	SELECT * FROM Marca
EXEC Act_MODCPU 


--ACTUALIZAR CAN DISCO
CREATE PROCEDURE Act_CanDD
@ind varchar(10), 
@cant int, @idDisco varchar(64)
AS
BEGIN
UPDATE cantDisc SET Cantidad=@cant, id_Disco=(SELECT id_Disco FROM DiscoDuro WHERE TipoDisco=@idDisco) 
WHERE num_inv=@ind
END

EXEC Act_CanDD 4725498687,2,'Mecanico'

SELECT * FROM cantDisc
-------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------
SELECT Marca.Marca FROM Marca 
INNER JOIN Marca_Componente ON (Marca.Id_Marca = Marca_Componente.id_Marca)
INNER JOIN Componentes ON (Componentes.id_Componente = Marca_Componente.id_Compo)
WHERE Componentes.id_Componente BETWEEN 1 AND 2


SELECT Marca.Marca FROM Marca 
INNER JOIN Marca_Componente ON (Marca.Id_Marca = Marca_Componente.id_Marca)
INNER JOIN Componentes ON (Componentes.id_Componente = Marca_Componente.id_Compo)
WHERE Componentes.nom_Componente = 'Monito'

SELECT Marca.Marca FROM Marca 
INNER JOIN Marca_Componente ON (Marca.Id_Marca = Marca_Componente.id_Marca)
INNER JOIN Componentes ON (Componentes.id_Componente = Marca_Componente.id_Compo)
WHERE Componentes.nom_Componente = 'Teclado'

SELECT Marca.Marca FROM Marca 
INNER JOIN Marca_Componente ON (Marca.Id_Marca = Marca_Componente.id_Marca)
INNER JOIN Componentes ON (Componentes.id_Componente = Marca_Componente.id_Compo)
WHERE Componentes.nom_Componente = 'Mouse'

SELECT Marca.Marca FROM Marca 
INNER JOIN Marca_Componente ON (Marca.Id_Marca = Marca_Componente.id_Marca)
INNER JOIN Componentes ON (Componentes.id_Componente = Marca_Componente.id_Compo)
WHERE Componentes.nom_Componente = 'Gabinete'

SELECT Marca.Marca FROM Marca 
INNER JOIN Marca_Componente ON (Marca.Id_Marca = Marca_Componente.id_Marca)
INNER JOIN Componentes ON (Componentes.id_Componente = Marca_Componente.id_Compo)
WHERE Componentes.nom_Componente = 'CPU'

SELECT * FROM Marca_Componente
SELECT * FROM Marca
SELECT nom_Componente FROM Componentes WHERE id_Componente BETWEEN 1 AND 2

--------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE Act_PCFINAL
@indica varchar(10),
@idMous varchar(64),
@idCpu varchar(64),
@idLab varchar(64),
@idtec varchar(64),
@idMonC varchar(64), @idMonT varchar(64),
@img1 varchar(200), @img2 varchar(200), @img3 varchar(200)
AS
BEGIN 
UPDATE computadorafinal SET id_mousg=(SELECT id_mouse FROM mouse WHERE conector=@idMous),
id_cpug=(SELECT id_CPU FROM CPU_Generico WHERE Modelo=@idCpu),
nom_labo=(SELECT nombre_laboratorio FROM laboratorio WHERE nombre_laboratorio=@idLab),
id_tecladog=(SELECT id_teclado FROM teclado WHERE conector=@idtec),
id_mong=(SELECT id_monitor FROM monitor WHERE conectores=@idMonC AND tamano=@idMonT),
img1= @img1,img2=@img2,img3= @img3
WHERE num_inv=@indica
END

EXEC Act_PCFINAL 1234567890,CJK,'180x180',USB,CRJ,K2,PS27


CREATE PROCEDURE RegisDAct
@numS varchar(11),
@des varchar(64),
@numinv varchar(64)
AS
BEGIN 
INSERT INTO actualizacion VALUES (@numS,@des,GETDATE(),
(SELECT num_inv FROM computadorafinal WHERE num_inv=@numinv))
end

EXEC RegisDAct 1452369,prueba,1234567890

SELECT * FROM computadorafinal 
SELECT * FROM monitor
select * from RAM
EXEC IntesertaMCPU2 i4, XPG

EXEC LISTA_PcCOMPONENTES '8524567391'

select computadorafinal.num_inv as 'Número de Inventario', 
	nom_Componente as 'Componente', 
	Marca, 
	modeloCPU as 'CPU', 
	Modelo, 
	Familia, 
	Tipo as 'Tipo de Memoria RAM', 
	RAM.Velocidad as 'Velocidad de Reloj', 
	conectores as 'Adaptador del Monitor', 
	tamano as 'Resolución', 
	teclado.conector as 'Adaptador del Teclado', 
	mouse.conector as 'Adaptador del Mouse', 
	cantDisc.Cantidad as 'Cantidad de Discos'
	from Componentes
	inner join Marca_Componente on (Componentes.id_Componente = Marca_Componente.id_Compo)
	inner join Marca on (Marca_Componente.id_Marca =  Marca.Id_Marca)
	inner join ModeloCPU on (Marca.Id_Marca = ModeloCPU.Id_Marca)
	inner join Tipo_CPU on (ModeloCPU.id_modcpu = Tipo_CPU.id_modcpu)
	inner join CPU_Generico on (Tipo_CPU.id_Tcpu = CPU_Generico.f_Tcpu)
	inner join RAM on (CPU_Generico.f_tipoRam = RAM.id_RAM)
	inner join TipoRAM on (RAM.F_TipoR = TipoRAM.id_tipoRam)
	inner join computadorafinal on (CPU_Generico.id_CPU = computadorafinal.id_cpug)
	inner join monitor on (computadorafinal.id_mong = monitor.id_monitor)
	inner join teclado on (computadorafinal.id_tecladog = teclado.id_teclado)
	inner join mouse on (computadorafinal.id_mousg = mouse.id_mouse)
	inner join cantDisc on (computadorafinal.num_inv = cantDisc.num_inv)
	where computadorafinal.num_inv = '3598758681'

INSERT computadorafinal VALUES (3598758681,5,6,12,'K5',7);