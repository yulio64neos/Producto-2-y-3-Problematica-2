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

SELECT * FROM teclado
SELECT * FROM Marca
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
@idDisco varchar(20),
@cantidad int,
@num_inv varchar(10)
AS
BEGIN 
INSERT cantDisc VALUES((SELECT id_Disco FROM DiscoDuro WHERE TipoDisco=@idDisco),@cantidad,@num_inv)
END

--laboratorio
CREATE PROCEDURE InsertarLABORATORIO
@num_inv varchar(64)
AS
BEGIN 
INSERT laboratorio VALUES(@num_inv)
END
SELECT * FROM laboratorio
EXEC InsertarLABORATORIO K5

--COMPUTADORA FINAL
CREATE PROCEDURE InsertarPCFINAL
@num varchar(10),
@idtec varchar(64), 
@idMonC varchar(64), @idMonT varchar(64),
@idMous varchar(64),
@idCpu varchar(64),@idLab varchar(64)
AS
BEGIN 
INSERT computadorafinal VALUES (@num,
(SELECT id_teclado FROM teclado WHERE conector=@idtec),
(SELECT id_monitor FROM monitor WHERE conectores=@idMonC AND tamano=@idMonT),
(SELECT id_mouse FROM mouse WHERE conector=@idMous),
(SELECT id_CPU FROM CPU_Generico WHERE Modelo=@idCpu),
(SELECT nombre_laboratorio FROM laboratorio WHERE nombre_laboratorio=@idLab))
END
SELECT * FROM computadorafinal
SELECT * FROM laboratorio
EXEC InsertarPCFINAL 8524567391,USB,VGA,'480x250',RJ45,CRJ,K5
sp_help monitor
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
--ACTUALIZAR UBICACION
ALTER PROCEDURE Act_UBICACION
@elijo varchar(65), @cam1 varchar(65)
AS
BEGIN 
UPDATE ubicacion SET nombre_laboratorio=@cam1 WHERE num_inv=@elijo
END

SELECT * FROM ubicacion
SELECT * FROM laboratorio
sp_help computadorafinal
EXEC Act_UBICACION 1234567892,K2


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

	SELECT * FROM ModeloCPU
	SELECT * FROM Marca
EXEC Act_MODCPU 