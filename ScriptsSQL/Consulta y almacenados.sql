SELECT ubicacion.nombre_laboratorio as 'Laboratorio asignado', CPU_Generico.Modelo as 'Modelo del CPU',
teclado.conector as 'Conector del teclado',
monitor.conectores as 'Conector del monitor',
mouse.conector as 'Conector del mouse',
DiscoDuro.TipoDisco as 'Tipo de DD',
DiscoDuro.Capacidad as 'Capacidad de DD' FROM ubicacion 
INNER JOIN computadorafinal ON (ubicacion.num_inv = computadorafinal.num_inv)
INNER JOIN CPU_Generico ON (computadorafinal.id_cpug = CPU_Generico.id_CPU)
INNER JOIN teclado ON (computadorafinal.id_tecladog = teclado.id_teclado)
INNER JOIN monitor ON (computadorafinal.id_mong = monitor.id_monitor)
INNER JOIN mouse ON (computadorafinal.id_mousg = mouse.id_mouse)
INNER JOIN cantDisc ON (computadorafinal.num_inv = cantDisc.num_inv)
INNER JOIN DiscoDuro ON (cantDisc.id_Disco = DiscoDuro.id_Disco);

SELECT ubicacion.nombre_laboratorio as 'Laboratorio asignado' ,
DiscoDuro.TipoDisco as 'Equipos con Discos de estado Solido' 
FROM ubicacion 
INNER JOIN computadorafinal ON (ubicacion.num_inv = computadorafinal.num_inv)
INNER JOIN cantDisc ON (computadorafinal.num_inv = cantDisc.num_inv)
INNER JOIN DiscoDuro ON (cantDisc.id_Disco = DiscoDuro.id_Disco) WHERE DiscoDuro.TipoDisco='Estado Sólido';

---------------------------------------------------------------------------------------------------------------------------------------------

--Modelo ¨CPU
CREATE PROCEDURE IntesertaMCPU
@modeloCPU varchar(50),
@idMarca varchar(50) 
AS
BEGIN 
INSERT INTO ModeloCPU VALUES (@modeloCPU, (SELECT Id_Marca FROM Marca WHERE Marca.Marca=@idMarca))
end

SELECT * FROM ModeloCPU 
SELECT * FROM Marca 
EXEC IntesertaMCPU OptiPlex,WD  
--TIPO CPU
CREATE PROCEDURE InsertarTipoCPU
@familia varchar(30),
@velocidad varchar(50),
@idModeloCPU varchar(50)
AS
BEGIN 
INSERT Tipo_CPU VALUES(@familia,@velocidad,(SELECT id_modcpu FROM ModeloCPU WHERE modeloCPU=@idModeloCPU))
END

SELECT * FROM Tipo_CPU
EXEC InsertarTipoCPU ongen,ghz,Pentium
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
EXEC InsertarRAM 8,700,DDR4

--GABINETE
CREATE PROCEDURE InsertarGabinete
@modelo varchar(10),
@tipoFo varchar(30),
@idMarca varchar(50)
AS
BEGIN 
INSERT Gabinete VALUES(@modelo,@tipoFo,(SELECT Id_Marca FROM Marca WHERE Marca.Marca=@idMarca))
END
--CPU GENERICO
CREATE PROCEDURE InsertarCPUGenerico
@Modelo varchar(20),
@descripcion varchar(40),
@idGabinete varchar(10)
AS
BEGIN 
INSERT CPU_Generico VALUES((SELECT MAX(id_Tcpu) FROM Tipo_CPU), @Modelo, @descripcion, 
(SELECT MAX(id_RAM) FROM RAM), (SELECT id_Gabinete FROM Gabinete WHERE Gabinete.Modelo=@idGabinete))
END
--MONITOR
CREATE PROCEDURE InsertarMonitor
@conectores varchar(64),
@tamano varchar(64),
@idMarca varchar(50)
AS
BEGIN 
INSERT monitor VALUES(@conectores,@tamano,(SELECT Id_Marca FROM Marca WHERE Marca.Marca=@idMarca))
END
--MOUSE
CREATE PROCEDURE InsertarMouse
@coenctor varchar(64),
@idMarca varchar(50)
AS
BEGIN 
INSERT mouse VALUES(@coenctor,(SELECT Id_Marca FROM Marca WHERE Marca.Marca=@idMarca))
END
--Teclado
CREATE PROCEDURE InsertarTeclado
@conector varchar(5),
@idMarca varchar(50)
AS
BEGIN 
INSERT teclado VALUES(@conector,(SELECT Id_Marca FROM Marca WHERE Marca.Marca=@idMarca))
END
--DISCO DURO 
CREATE PROCEDURE InsertarDD
@TipoD varchar(20),
@coenctor varchar(10),
@capacidad varchar(12),
@idMarca varchar(50)
AS
BEGIN 
INSERT DiscoDuro VALUES(@TipoD,@coenctor,@capacidad,(SELECT Id_Marca FROM Marca WHERE Marca.Marca=@idMarca))
END
--CANT DISCO
CREATE PROCEDURE InsertarCANTDISCO
@num_inv varchar(10),
@idDisco varchar(20)
AS
BEGIN 
INSERT cantDisc VALUES(@num_inv,(SELECT id_Disco FROM DiscoDuro WHERE DiscoDuro.TipoDisco=@idDisco))
END
--ubicacion
CREATE PROCEDURE InsertarUBICACION
@num_inv varchar(10),
@lap varchar(50)
AS
BEGIN 
INSERT ubicacion VALUES(@num_inv,(SELECT nombre_laboratorio FROM laboratorio WHERE laboratorio.nombre_laboratorio=@lap))
END
--COMPUTADORA FINAL
CREATE PROCEDURE InsertarPCFINAL
@num_inv varchar(10), @num_cpu varchar(11), @idCpu varchar(20), @num_teclado varchar(11), @idteclado varchar(5), 
@num_manitor varchar(11), @idmonitor varchar(64),@num_mouse varchar(11), @idmouse varchar(64), @estado varchar(64)
AS
BEGIN 
INSERT computadorafinal VALUES ((SELECT num_inv FROM cantDisc WHERE cantDisc.num_inv=@num_inv),
@num_cpu, (SELECT id_CPU FROM CPU_Generico WHERE CPU_Generico.Modelo=@idCpu),
@num_teclado, (SELECT id_teclado FROM teclado WHERE teclado.conector =@idteclado),
@num_manitor,(SELECT id_monitor FROM monitor WHERE monitor.conectores=@idmonitor),
@num_mouse,(SELECT id_mouse FROM mouse WHERE mouse.conector=@idmouse), @estado)
END
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
@cam1 varchar(65),@elijo varchar(65)
AS
BEGIN 
UPDATE ubicacion SET nombre_laboratorio=@cam1 WHERE num_inv=@elijo
END

SELECT * FROM ubicacion
SELECT * FROM TipoRAM
sp_help laboratorio
EXEC Act_UBICACION K1,1234567892


--ACTUALIZAR MOUSE
CREATE PROCEDURE Act_MOUSE
@indica varchar(64), @indca2 varchar(64),
@camConec varchar(64), @camMarca varchar(50)
AS
BEGIN 
UPDATE mouse SET conector = @camConec, Id_Marca=(SELECT Id_Marca FROM Marca WHERE Marca.Marca=@camMarca)  
WHERE conector=@indica AND Id_Marca=(SELECT Id_Marca FROM Marca WHERE Marca.Marca=@indca2)
END

SELECT * FROM ubicacion
SELECT * FROM Marca
EXEC Act_MOUSE MICROSOFT,a,RJ47,XPG

--ACTUALIZAR TECLADO
CREATE PROCEDURE Act_TECLADO
@indicar varchar(64),
@camConec varchar(64), @camMarca varchar(50)
AS
BEGIN 
UPDATE teclado SET conector = @camConec, Id_Marca=(SELECT Id_Marca FROM Marca WHERE Marca.Marca=@camMarca)  
WHERE conector=@indicar AND Id_Marca=(SELECT Id_Marca FROM Marca WHERE Marca.Marca=@indicar)
END

SELECT * FROM teclado
SELECT * FROM Marca
EXEC Act_TECLADO HP,PS27, HP

--ACTUALIZAR MONITOR
CREATE PROCEDURE Act_MONITOR
@indicar varchar(64),
@camConec varchar(64), @tamano varchar(64), @camMarca varchar(50)
AS
BEGIN 
UPDATE monitor SET conectores = @camConec, tamano=@tamano,Id_Marca=(SELECT Id_Marca FROM Marca WHERE Marca.Marca=@camMarca)  
WHERE conectores=@indicar AND Id_Marca=(SELECT Id_Marca FROM Marca WHERE Marca.Marca=@indicar)
END

SELECT * FROM computadorafinal
--ACTUALIZAR RAM
CREATE PROCEDURE Act_RAM
@indicar varchar(64), @indicar2 varchar(64),
@caCapacida smallint, @camVelocida varchar(64), @tipoR varchar(64)
AS
BEGIN 
UPDATE RAM SET Capacidad=@caCapacida, Velocidad =@camVelocida, id_RAM=(SELECT id_tipoRam FROM TipoRAM WHERE
Tipo=@tipoR) WHERE Capacidad =@indicar AND Velocidad=@indicar2
END
SELECT * FROM RAM
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
--ACTUALIZAR TIPO CPU
CREATE PROCEDURE Act_TCPU
@ind1 varchar(30), @ind2 varchar(50),
@mfam varchar(30), @mVelo varchar(50), @mMod varchar(64)
AS
BEGIN 
UPDATE Tipo_CPU SET Familia=@mfam, Velocidad=@mVelo, id_modcpu=(SELECT id_modcpu FROM ModeloCPU WHERE modeloCPU=@mMod)
WHERE Familia=@ind1 AND Velocidad =@ind2
END

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
EXEC Act_MODCPU IntelR,Pentium, Intel