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
CREATE PROCEDURE InsertarModCpu
@modeloCPU varchar(50),
@idMarca varchar(50) 
AS
BEGIN 
INSERT INTO ModeloCPU VALUES (@modeloCPU, (SELECT Id_Marca FROM Marca WHERE Marca.Marca=@idMarca))
end
--TIPO CPU
CREATE PROCEDURE InsertarTipoCPU
@familia varchar(30),
@velocidad varchar(50),
@idModeloCPU varchar(50)
AS
BEGIN 
INSERT Tipo_CPU VALUES(@familia,@velocidad,(SELECT id_modcpu FROM ModeloCPU WHERE ModeloCPU.modeloCPU=@idModeloCPU))
END
--TIPO RAM
CREATE PROCEDURE InsertarTipoRAM
@tipo varchar(20),
@extra varchar(30)
AS
BEGIN 
INSERT TipoRAM VALUES(@tipo,@extra)
END
--RAM
CREATE PROCEDURE InsertarRAM
@capacidad smallint,
@velocidad varchar(15),
@idTipo varchar(20)
AS
BEGIN 
INSERT RAM VALUES(@capacidad, @velocidad,(SELECT id_tipoRam FROM TipoRAM WHERE TipoRAM.Tipo=@idTipo))
END
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