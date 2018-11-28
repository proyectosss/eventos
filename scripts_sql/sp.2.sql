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









