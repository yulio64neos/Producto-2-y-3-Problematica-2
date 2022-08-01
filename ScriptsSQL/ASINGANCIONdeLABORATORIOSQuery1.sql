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
