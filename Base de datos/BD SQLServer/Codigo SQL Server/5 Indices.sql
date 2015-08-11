
---------------------------------------------------------------------- QUICKLIST

	Use BaseDeDatosQuickList;

---------------------------------------------------------------------- BORRAR INDICES

	if exists (select * from sysindexes where name = 'agruparAprendicesPorDocumento')
	drop index T_Informacion_Aprendices.agruparAprendicesPorDocumento;

	if exists (select * from sysindexes where name = 'agruparAprendicesPorNombre')
	drop index T_Informacion_Aprendices.agruparAprendicesPorNombre;

	if exists (select * from sysindexes where name = 'agruparAprendicesPorApellido')
	drop index T_Informacion_Aprendices.agruparAprendicesPorApellido;

	if exists (select * from sysindexes where name = 'agruparFichasPorFechaDeIngreso')
	drop index T_Fichas.agruparFichasPorFechaDeIngreso;

	if exists (select * from sysindexes where name = 'agruparCalificacionesPorCalificacion')
	drop index T_Calificaciones.agruparCalificacionesPorCalificacion;

	if exists (select * from sysindexes where name = 'agruparActividadesPorFechaDeEntrega')
	drop index T_Actividades.agruparActividadesPorFechaDeEntrega;

	if exists (select * from sysindexes where name = 'agruparCalificacionesPorAprendiz')
	drop index T_Calificaciones.agruparCalificacionesPorAprendiz;

	if exists (select * from sysindexes where name = 'agruparAsistenciaPorAprendiz')
	drop index T_Inasistencia.agruparAsistenciaPorAprendiz;


---------------------------------------------------------------------- CREAR INDICES

	create nonclustered index agruparAprendicesPorDocumento
	 on T_Informacion_Aprendices (Documento_De_Identidad);

	create nonclustered index agruparAprendicesPorNombre
	 on T_Informacion_Aprendices (Nombre);

	create nonclustered index agruparAprendicesPorApellido
	 on T_Informacion_Aprendices (Nombre);

	create nonclustered index agruparFichasPorFechaDeIngreso
	 on T_Fichas (Fecha_Inicio)

	create nonclustered index agruparCalificacionesPorCalificacion
	 on T_Calificaciones (calificacion);

    create nonclustered index agruparActividadesPorFechaDeEntrega
	 on T_Actividades (Fecha_De_Entrega);

	create clustered index agruparCalificacionesPorAprendiz
	 on T_Calificaciones (ID_Aprendiz);

	create clustered index agruparAsistenciaPorAprendiz
	 on T_Inasistencia (ID_Aprendiz);

