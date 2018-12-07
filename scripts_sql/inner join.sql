----Inner join TBLEMPLEADOXEVENTO------
SELECT tblEvento.evento, tblEvento.lugar,tblEvento.fecha,tblEmpleado.cedula,tblEmpleado.nombre,tblEmpleado.apellido,tblEmpleado.cargo FROM tblEvento JOIN tblEmpleadoXEvento ON tblEmpleadoXEvento.eventoId 
JOIN tblEmpleado ON tblEmpleado.id=tblEmpleadoXEvento.empleadoId WHERE tblEmpleado.id=1

-----Inner join TBLCURSOXEMPLEADO---------
SELECT tblCurso.curso, tblEmpleado.cedula, tblEmpleado.nombre, tblEmpleado.apellido FROM tblCurso JOIN tblCursoXEmpleado ON tblCursoXEmpleado.cursoId 
JOIN tblEmpleado ON tblEmpleado.id=tblCursoXEmpleado.empleadoId WHERE tblEmpleado.id=1

-----Inner join TBLEQUIPOXEVENTO---------
SELECT tblEvento.evento,tblEvento.lugar,tblEvento.fecha,tblEquipo.nombre,tblEquipo.imagenPath,tblEquipo.codigo FROM tblEquipo JOIN tblEquipoXEvento ON tblEquipoXEvento.equipoId JOIN tblEvento ON tblEvento.id=tblEquipoXEvento.eventoId WHERE tblEvento.id=1

------Inner join TBLTAREAXEMPLEADO-------
SELECT tblEmpleado.id, tblEmpleado.cedula, tblEmpleado.nombre ,tblEmpleado.apellido,tblTarea.id, tblTarea.descripcion, tblTarea.observacion FROM tblEmpleado JOIN tblTareaXEmpleado ON tblTareaXEmpleado.empleadoId JOIN tblTarea ON tblTarea.id=tblTareaXEmpleado.tareaId WHERE tblEmpleado.id=1
