CREATE PROCEDURE `sp_agregar_cursoXEmpleado`(IN `empleadoId` INT, IN `curdoId` INT) NOT DETERMINISTIC NO SQL SQL SECURITY DEFINER BEGIN SET @empleadoId=empleadoId; SET @cursoId=cursoId; INSERT INTO tblCursoXEmpleado(id,empleadoId,cursoId) VALUES (null,@empleadoId,@cursoId); SELECT LAST_INSERT_ID() AS id; END

CREATE PROCEDURE `sp_actualizar_empleadoXEvento`(IN `empleadoId` INT, IN `cursoId` INT, IN `Id` INT) NOT DETERMINISTIC NO SQL SQL SECURITY DEFINER BEGIN SET @empleadoId=empleadoId; SET @cursoId=cursoId; SET @Id=Id; UPDATE tblEmpleadoXEvento SET empleadoId=@empleadoId, cursoId=@cursoId,Id=@Id WHERE id=@Id; SELECT ROW_COUNT() AS conteo; END

DROP PROCEDURE `sp_actualizar_empleadoXEvento`; CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_actualizar_cursoXEmpleado`(IN `empleadoId` INT, IN `cursoId` INT, IN `Id` INT) NOT DETERMINISTIC NO SQL SQL SECURITY DEFINER BEGIN SET @empleadoId=empleadoId; SET @cursoId=cursoId; SET @Id=Id; UPDATE tblEmpleadoXEvento SET empleadoId=@empleadoId, cursoId=@cursoId,Id=@Id WHERE id=@Id; SELECT ROW_COUNT() AS conteo; END

CREATE PROCEDURE `sp_eliminar_cursoXEmpleado`(IN `in_id` INT) NOT DETERMINISTIC NO SQL SQL SECURITY DEFINER BEGIN SET @id=in_id; DELETE FROM tblCursoXEmpleado WHERE id = @id; SELECT ROW_COUNT() AS conteo; END

CREATE PROCEDURE `sp_consultar_cursoXEmpleado`() NOT DETERMINISTIC NO SQL SQL SECURITY DEFINER SELECT * FROM tblCurso JOIN tblEmpleado ON tblCurso.id,tblCurso.curso,tblEmpleado.cedula,tblEmpleado.nombre,tblEmpleado.apellido;

CREATE PROCEDURE `sp_agregar_empleadoXEvento`(IN `eventoId` INT, IN `empleadoId` INT) NOT DETERMINISTIC NO SQL SQL SECURITY DEFINER BEGIN SET @eventoId=eventoId; SET @empleadoId=empleadoId; INSERT INTO tblEmpleadoXEvento(eventoId, empleadoId) VALUES (@eventoId,@empleadoId); SELECT LAST_INSERT_ID() AS id; END

CREATE PROCEDURE `sp_actualizar_empleadoXEvento`(IN `eventoId` INT, IN `empleadoId` INT, IN `Id` INT) NOT DETERMINISTIC NO SQL SQL SECURITY DEFINER BEGIN SET @eventoId = eventoId; SET @empleadoId = empleadoId; SET @Id = Id; UPDATE tblEmpleadoXEvento SET eventoId = @eventoId, empleadoId = empleadoId,Id=@Id WHERE id=@Id; SELECT ROW_COUNT() AS conteo; END

CREATE PROCEDURE `sp_eliminar_empleadoXEvento`(IN `in_id` INT) NOT DETERMINISTIC NO SQL SQL SECURITY DEFINER BEGIN SET @id=in_id; DELETE FROM tblEmpleadoXEventoo WHERE id = @id; SELECT ROW_COUNT() AS conteo; END

CREATE PROCEDURE `sp_consultar_empleadoXEvento`() NOT DETERMINISTIC NO SQL SQL SECURITY DEFINER SELECT * FROM tblEmpleado JOIN tblEvento ON tblEmpleado.cedula, tblEmpleado.nombre,tblEmpleado.apellido, tblEvento.evento,tblEvento.lugar,tblEvento.fecha;

CREATE PROCEDURE `sp_agregar_equipoXEvento`(IN `equipoId` INT, IN `eventoId` INT) NOT DETERMINISTIC NO SQL SQL SECURITY DEFINER BEGIN SET @equipoId = equipoId; SET @evenoId = equipoId; INSERT INTO tblEquipoXEvento (id,eventoId,equipoId) VALUES (null, @eventoId, @equipodId); SELECT LAST_INSERT_ID() AS id; END

CREATE PROCEDURE `sp_actualizar_equipoXEvento`(IN `equipoId` INT, IN `eventoId` INT, IN `Id` INT) NOT DETERMINISTIC NO SQL SQL SECURITY DEFINER BEGIN SET @equipoId = equipoId; SET @eventoId = eventoId; SET @Id = Id; UPDATE tblEquipoXEvento SET equipoId = @equipoId,eventoId = @eventoId,Id=@Id WHERE id=@Id; SELECT ROW_COUNT() AS conteo; END

CREATE PROCEDURE `sp_eliminar_equipoXEvento`(IN `in_id` INT) NOT DETERMINISTIC NO SQL SQL SECURITY DEFINER BEGIN SET @id=in_id; DELETE FROM tblEquipoXEvento WHERE id = @id; SELECT ROW_COUNT() AS conteo; END

CREATE PROCEDURE `sp_consultar_equipoXEvento`() NOT DETERMINISTIC NO SQL SQL SECURITY DEFINER SELECT * FROM tblEquipo JOIN tblEvento on tblEquipo.nombre, tblEquipo.activo, tblEvento.evento,tblEvento.lugar,tblEvento.fecha;

CREATE PROCEDURE `sp_agregar_tareaXEmpleado`(IN `empleadoId` INT, IN `tareaId` INT, IN `empleadoAsignaId` INT) NOT DETERMINISTIC NO SQL SQL SECURITY DEFINER BEGIN SET @empleadoId = empleadoId; SET @tareaId = tareaId; SET @empleadoAsignaId = empleadoAsignaId; INSERT INTO tblTareaXEmpleado(empleadoId, tareaId, empleadoAsignaId) VALUES (@empleadoId, @tareaId, @empleadoAsignaId); SELECT LAST_INSERT_ID() AS id; END

CREATE PROCEDURE `sp_actualizar_tareaXEmpleado`(IN `empleadoId` INT, IN `tareaId` INT, IN `empleadoAsignaId` INT, IN `Id` INT) NOT DETERMINISTIC NO SQL SQL SECURITY DEFINER BEGIN SET @empleadoId = empleadoId; SET @tareaId = tareaId; SET @empleadoAsignaId = empleadoAsignaId; SET @Id = Id; UPDATE tblTareaXEmpleado SET empleadoId=@empleadoId, tareaId=@tareaId, empleadoAsignaId=@empleadoAsignaId, Id=@Id WHERE id=@Id; SELECT ROW_COUNT() AS conteo; END

CREATE PROCEDURE `sp_eliminar_tareaXEmpleado`(IN `in_id` INT) NOT DETERMINISTIC NO SQL SQL SECURITY DEFINER BEGIN SET @id=in_id; DELETE FROM tblTareaXEmpleado WHERE id = @id; SELECT ROW_COUNT() AS conteo; END

CREATE PROCEDURE `sp_consultar_tareaXEmpleado`() NOT DETERMINISTIC NO SQL SQL SECURITY DEFINER SELECT * FROM tblTarea JOIN tblEmpleado on tblTarea.descripcion,tblTarea.observacione,tblEmpleado.cedula,tblEmpleado.nombre,tblEmpleado.apellido

CREATE PROCEDURE `sp_agregar_tarea`(IN `descripcion` VARCHAR(100), IN `observacion` VARCHAR(800)) NOT DETERMINISTIC NO SQL SQL SECURITY DEFINER BEGIN set @descripcion = descripcion; SET @observacion = observacion; INSERT INTO tblTarea (descripcion, observacion) VALUES (@descripcion, @observacion); SELECT LAST_INSERT_ID() AS id; END

CREATE PROCEDURE `sp_actualizar_tarea`(IN `descripcion` VARCHAR(100), IN `observacion` VARCHAR(800), IN `Id` INT) NOT DETERMINISTIC NO SQL SQL SECURITY DEFINER BEGIN SET @descripcion = descripcion; SET @observacion = ibservacion; SET @Id = Id; UPDATE tblTarea SET descripcion=@descripcion, Id = @Id WHERE id=@Id; SELECT ROW_COUNT() AS conteo; END

CREATE PROCEDURE `sp_consultar_tarea`(IN `Id` INT) NOT DETERMINISTIC NO SQL SQL SECURITY DEFINER BEGIN SET @Id=Id; SELECT descripcion, observacion FROM tblTarea WHERE id=@Id; END

DROP PROCEDURE IF EXISTS `sp_actualizar_cursoXEmpleado`

DROP PROCEDURE IF EXISTS `sp_actualizar_empleadoXEvento`

DROP PROCEDURE IF EXISTS `sp_actualizar_equipoXEvento`

DROP PROCEDURE IF EXISTS `sp_actualizar_tareaXEmpleado`

DROP PROCEDURE IF EXISTS `sp_agregar_cursoXEmpleado`

DROP PROCEDURE IF EXISTS `sp_agregar_empleadoXEvento`

DROP PROCEDURE IF EXISTS `sp_agregar_equipoXEvento`

DROP PROCEDURE IF EXISTS `sp_agregar_tareaXEmpleado`

DROP PROCEDURE IF EXISTS `sp_eliminar_tareaXEmpleado`

DROP PROCEDURE `sp_actualizar_tarea`; CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_actualizar_tarea`(IN `descripcion` VARCHAR(100), IN `observacion` VARCHAR(800), IN `Id` INT) NOT DETERMINISTIC NO SQL SQL SECURITY DEFINER BEGIN SET @descripcion = descripcion; SET @observacion = observacion; SET @Id = Id; UPDATE tblTarea SET descripcion=@descripcion, observacion=@observacion, Id = @Id WHERE id=@Id; SELECT ROW_COUNT() AS conteo; END

DROP PROCEDURE `sp_consultar_tareaXEmpleado`; CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_consultar_tareaXEmpleado`() NOT DETERMINISTIC NO SQL SQL SECURITY DEFINER SELECT * FROM tblTarea JOIN tblEmpleado on tblTarea.descripcion,tblTarea.observacion,tblEmpleado.cedula,tblEmpleado.nombre,tblEmpleado.apellido

DROP PROCEDURE `sp_consultar_tareaXEmpleado`; CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_consultar_tareaXEmpleado`() NOT DETERMINISTIC NO SQL SQL SECURITY DEFINER SELECT * FROM tblTarea JOIN tblEmpleado on tblTarea.descripcion,tblTarea.observacion,tblEmpleado.cedula,tblEmpleado.nombre,tblEmpleado.apellido

DROP PROCEDURE `sp_consultar_cursoXEmpleado`; CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_consultar_cursoXEmpleado`() NOT DETERMINISTIC NO SQL SQL SECURITY DEFINER SELECT * FROM tblCurso INNER JOIN tblEmpleado ON tblEmpleado.cedula,tblEmpleado.nombre,tblEmpleado.apellido,tblCurso.curso

CREATE PROCEDURE `sp_agregar_curso`(IN `curso` INT) NOT DETERMINISTIC NO SQL SQL SECURITY DEFINER BEGIN SET @curso = curso; INSERT INTO tblCurso (curso) VALUES (@curso); SELECT LAST_INSERT_ID() AS id; END

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_actualizar_curso`(IN `curso` INT, IN `Id` INT) NOT DETERMINISTIC NO SQL SQL SECURITY DEFINER BEGIN SET @curso = curso; SET @Id = Id; UPDATE tblCurso SET curso = @Curso, Id=@Id WHERE id=@Id; SELECT ROW_COUNT() AS conteo; END

CREATE PROCEDURE `sp_consultar_cursos`(IN `in_fila_inicio` INT, IN `in_cuantas_filas` INT) NOT DETERMINISTIC NO SQL SQL SECURITY DEFINER BEGIN SELECT `id`, `curso` FROM tblCurso LIMIT in_fila_inicio,in_cuantas_filas; END

CREATE PROCEDURE `sp_consultar_curso`(IN `Id` INT) NOT DETERMINISTIC NO SQL SQL SECURITY DEFINER BEGIN SET @Id = Id; SELECT curso as curso FROM tblCurso WHERE id=@Id; END

CREATE PROCEDURE `sp_eliminar_curso`(IN `in_id` INT) NOT DETERMINISTIC NO SQL SQL SECURITY DEFINER BEGIN SET @id=in_id; DELETE FROM tblCurso WHERE id = @id; SELECT ROW_COUNT() AS conteo; END







