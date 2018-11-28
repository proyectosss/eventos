ALTER TABLE tblCursos RENAME tblCurso;

DROP TABLE tblCursosXEmpleado;
DROP TABLE IF EXISTS `tblCursosXEmpleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblCursoXEmpleado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `empleadoId` int(11) DEFAULT NULL,
  `cursoId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT UK_tblCursoXEmpleado_empleadoId_cursoId UNIQUE (empleadoId,cursoId),
  KEY `FK_tblCursoXEmpleado_eventoId` (`cursoId`),
  KEY `FK_tblCursoXEmpleado_empleadoId` (`empleadoId`),
  CONSTRAINT `FK_tblCursoXEmpleado_empleadoId` FOREIGN KEY (`empleadoId`) REFERENCES `tblEmpleado` (`id`),
  CONSTRAINT `FK_tblCursoXEmpleado_cursoId` FOREIGN KEY (`cursoId`) REFERENCES `tblCurso` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;



ALTER TABLE `tblCliente` CHANGE `Nombre` `nombre` VARCHAR(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL, CHANGE `Apellido` `apellido` VARCHAR(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL, CHANGE `Direccion` `direccion` VARCHAR(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL, CHANGE `Correo` `correo` VARCHAR(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL, CHANGE `Telefono` `telefono` VARCHAR(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL;

ALTER TABLE `tblCurso` CHANGE `Curso` `curso` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL;

ALTER TABLE `tblEmpleado` CHANGE `Cedula` `cedula` VARCHAR(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL, CHANGE `Nombre(s)` `nombre` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL, CHANGE `Apellido(s)` `apellido` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL, CHANGE `Cargo` `cargo` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL, CHANGE `Correo Electronico` `correoElectronico` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL, CHANGE `Telefono` `telefono` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL, CHANGE `Direccion` `direccion` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL, CHANGE `Ciudad` `ciudad` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL;

ALTER TABLE `tblEvento` CHANGE `id` `id` INT(11) NOT NULL AUTO_INCREMENT, CHANGE `Evento` `evento` CHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL, CHANGE `Encargado` `encargado` CHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL, CHANGE `Lugar` `lugar` CHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL, CHANGE `Fecha` `fecha` DATE NULL DEFAULT NULL, CHANGE `Transportador` `transportador` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL, CHANGE `HoraAproximadaCargue` `horaAproximadaCargue` TIMESTAMP on update CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, CHANGE `HoraAproximadaDescargue` `horaAproximadaDescargue` TIMESTAMP NULL DEFAULT NULL;

ALTER TABLE `tblHoraTrabajada` CHANGE `TotalHoras` `totalHora` INT(100) NOT NULL, CHANGE `PagoTotal` `pagoTotal` INT(100) NOT NULL;

ALTER TABLE `tblNormatividadLaboral` CHANGE `Norma` `norma` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL;

ALTER TABLE `tblTarea` CHANGE `observaciones` `observacione` VARCHAR(800) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL;

DROP PROCEDURE `sp_agregar_cliente`; CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_agregar_cliente`(IN `Nombre` VARCHAR(15), IN `Apellido` VARCHAR(30), IN `Direccion` VARCHAR(30), IN `Correo` VARCHAR(40), IN `Telefono` INT(20), IN `identificacion` VARCHAR(15)) NOT DETERMINISTIC NO SQL SQL SECURITY DEFINER BEGIN SET @Nombre= Nombre; SET @Apellido = Apellido; SET @Direccion = Direccion; SET @Correo = Correo; SET @Telefono = Telefono; SET @identificacion = identificacion; INSERT INTO tblCliente (nombre, apellido, direccion, correo, telefono, identificacion) VALUES(@Nombre, @Apellido, @Direccion, @Correo, @Telefono, @identificacion); SELECT LAST_INSERT_ID() AS id; END

DROP PROCEDURE `sp_consultar_cliente`; CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_consultar_cliente`(IN `Id` INT(11)) NOT DETERMINISTIC NO SQL SQL SECURITY DEFINER BEGIN SET @Id=Id; SELECT nombre as nombre, apellido as apellido, direccion as direccion, correo as correo, telefono as telefono, identificacion as identificacion FROM tblCliente WHERE id=@Id; END

DROP PROCEDURE `sp_consultar_clientes`; CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_consultar_clientes`(IN `in_fila_inicio` INT(11), IN `in_cuantas_filas` INT(11)) NOT DETERMINISTIC NO SQL SQL SECURITY DEFINER BEGIN SELECT `id`, `nombre`, `apellido`, `direccion`, `correo`, `telefono`, `identificacion` FROM tblCliente LIMIT in_fila_inicio,in_cuantas_filas; END

DROP PROCEDURE `sp_actualizar_cliente`; CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_actualizar_cliente`(IN `nombre` VARCHAR(15), IN `apellido` VARCHAR(30), IN `direccion` VARCHAR(30), IN `correo` VARCHAR(40), IN `telefono` INT(20), IN `Id` INT) NOT DETERMINISTIC NO SQL SQL SECURITY DEFINER BEGIN SET @nombre=nombre; SET @apellido=apellido; SET @direccion=direccion; SET @correo=correo; SET @telefono=telefono; SET @cedula=cedula; SET @Id=Id; UPDATE tblCliente set nombre=@nombre, apellido=@apellido, direccion=@direccion, correo=@correo, telefono=@telefono, Id=@Id WHERE id=@Id; SELECT ROW_COUNT() AS conteo; END

DROP PROCEDURE `sp_agregar_evento`; CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_agregar_evento`(IN `Evento` VARCHAR(11), IN `Encargado` VARCHAR(11), IN `Lugar` VARCHAR(11), IN `Fecha` DATETIME, IN `Transportador` VARCHAR(11), IN `HoraAproximadaCargue` TIME, IN `HoraAproximadaDescargue` TIME) NOT DETERMINISTIC NO SQL SQL SECURITY DEFINER BEGIN SET @Evento = Evento; SET @Encargado = Encargado; SET @Lugar = Lugar; SET @Fecha = Fecha; SET @Transportador = Transportador; SET @HoraAproximadaCargue = HoraAproximadaCargue; SET @HoraAproximadaDescargue = HoraAproximadaDescargue; INSERT INTO tblEvento(id, evento, encargado, lugar, fecha, transportador, horaAproximadaCargue, horaAproximadaDescargue) VALUES (null, @Evento, @Encargado, @Lugar, @Fecha, @Transportador, @HoraAproximadaCargue, @HoraAproximadaDescargue); SELECT LAST_INSERT_ID() AS id; END

DROP PROCEDURE `sp_agregar_empleado`; CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_agregar_empleado`(IN `Cedula` VARCHAR(20), IN `Nombre` VARCHAR(100), IN `Apellido` VARCHAR(100), IN `Cargo` VARCHAR(100), IN `Correo` VARCHAR(100), IN `Telefono` VARCHAR(100), IN `Direccion` VARCHAR(100), IN `Ciudad` VARCHAR(100)) NOT DETERMINISTIC NO SQL SQL SECURITY DEFINER BEGIN SET @Cedula=Cedula; SET @Nombre=Nombre; SET @Apellido=Apellido; SET @Cargo=Cargo; SET @Correo=Correo; SET @Telefono=Telefono; SET @Direccion=Direccion; SET @Ciudad=Ciudad; INSERT INTO tblEmpleado(cedula,nombre, apellido, cargo, correoElectronico, telefono, direccion, ciudad) VALUES(@Cedula, @Nombre, @Apellido, @Cargo, @Correo, @Telefono, @Direccion, @Ciudad); SELECT LAST_INSERT_ID() AS id; END

DROP PROCEDURE `sp_actualizar_empleado`; CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_actualizar_empleado`(IN `cedula` INT(100), IN `nombre` VARCHAR(100), IN `apellido` VARCHAR(100), IN `cargo` VARCHAR(100), IN `correo` VARCHAR(100), IN `telefono` VARCHAR(100), IN `direccion` VARCHAR(100), IN `ciudad` VARCHAR(100)) NOT DETERMINISTIC NO SQL SQL SECURITY DEFINER BEGIN SET @cedula=cedula; SET @nombre=nombre; SET @apellido=apellido; SET @cargo=cargo; SET @correo=correo; SET @telefono=telefono; SET @direccion=direccion; SET @ciudad=ciudad; UPDATE tblEmpleado set nombre=@nombre, apellido=@apellido, cargo=@cargo, correo=@correo, telefono=@telefono, direccion=@direccion, ciudad=@ciudad WHERE id=@Cedula; SELECT ROW_COUNT() AS conteo; END

DROP PROCEDURE `sp_consultar_empleados`; CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_consultar_empleados`(IN `in_fila_inicio` INT(11), IN `in_cuantas_filas` INT(11)) NOT DETERMINISTIC NO SQL SQL SECURITY DEFINER BEGIN SELECT `id`,`cedula`,`nombre`,`apellido`,`cargo`,`correoElectronico`,`telefono`,`direccion`,`ciudad` FROM tblEmpleado LIMIT in_fila_inicio,in_cuantas_filas; END

DROP PROCEDURE `sp_consultar_empleado`; CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_consultar_empleado`(IN `Id` INT(11)) NOT DETERMINISTIC NO SQL SQL SECURITY DEFINER BEGIN SET Id=@Id; SELECT cedula as cedula, nombre as nombre, apellido as apellido, cargo as cargo, correoElectronico as correoElectronico, telefono as telefono, direccion as direccion, ciudad as ciudad FROM tblEmpleado WHERE id=@Id; END

DROP PROCEDURE `sp_actualizar_evento`; CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_actualizar_evento`(IN `evento` VARCHAR(11), IN `encargado` VARCHAR(11), IN `lugar` VARCHAR(11), IN `fecha` DATETIME, IN `transportador` VARCHAR(11), IN `horaAproximadaCargue` TIME, IN `horaAproximadaDescargue` TIME) NOT DETERMINISTIC NO SQL SQL SECURITY DEFINER BEGIN SET @evento=evento; SET @encargado=encargado; SET @lugar=lugar; SET @fecha=fecha; SET @transportador=transportador; SET @horaAproximadaCargue=horaAproximadaCargue; SET @horaAproximadaDescargue=horaAproximadaDescargue; UPDATE tblEvento set encargado=@encargado, lugar=@lugar, fecha=@fecha, transportado=@transportador, horaAproximadaCargue=@horaAproximadaCargue, horaAproximadaDescargue=@horaAproximadaDescargue WHERE id=@evento; SELECT ROW_COUNT() AS conteo; END

DROP PROCEDURE `sp_agregar_evento`; CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_agregar_evento`(IN `Evento` VARCHAR(11), IN `Encargado` VARCHAR(11), IN `Lugar` VARCHAR(11), IN `Fecha` DATETIME, IN `Transprotador` VARCHAR(11), IN `HoraAproximadaCargue` TIME, IN `HoraAproximadaDescargue` TIME) NOT DETERMINISTIC NO SQL SQL SECURITY DEFINER BEGIN SET @Evento = Evento; SET @Encargado = Encargado; SET @Lugar = Lugar; SET @Fecha = Fecha; SET @Transprotador = Transprotador; SET @HoraAproximadaCargue = HoraAproximadaCargue; SET @HoraAproximadaDescargue = HoraAproximadaDescargue; INSERT INTO tblEvento(id, evento, encargado, lugar, fecha, transprotador, horaAproximadaCargue, horaAproximadaDescargue) VALUES (null, @Evento, @Encargado, @Lugar, @Fecha, @Transprotador, @HoraAproximadaCargue, @HoraAproximadaDescargue); SELECT LAST_INSERT_ID() AS id; END

DROP PROCEDURE `sp_consultar_evento`; CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_consultar_evento`(IN `Id` INT(11)) NOT DETERMINISTIC NO SQL SQL SECURITY DEFINER BEGIN SET @Id=Id; SELECT evento as evento, encargado as encargado, lugar as lugar, fecha as fecha, transportador as transportador, horaAproximadaCarga as horaAproximadaCarga, horaAproximadaDescargue as horaAproximadaDescargue FROM tblEvento WHERE id=@Id; END

CREATE PROCEDURE `sp_consultar_eventos`(IN `in_fila_inicio` INT(11), IN `in_cuantas_filas` INT(11)) NOT DETERMINISTIC NO SQL SQL SECURITY DEFINER BEGIN SELECT `id`, `evento`, `encargado`, `lugar`, `fecha`, `transportador`, `encargado`, `horaAproximadaCargue`, `horaAproximadaDescargue` FROM tblEvento LIMIT in_fila_inicio,in_cuantas_filas; END











