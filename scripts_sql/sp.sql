/*
*Author: Alejo
created 11/5/2018
*/
DELIMITER $$
DROP PROCEDURE IF EXISTS `sp_actualizar_categoria`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_actualizar_categoria` (IN `nombre` VARCHAR(50), IN `responsable` CHAR(32), IN `descripcion` TEXT, IN `imagenPath` VARCHAR(255), IN `Id` INT)  NO SQL
BEGIN
SET @nombre=nombre;
SET @responsable=responsable;
SET @descripcion=descripcion;
SET @imagenPath=imagenPath;
SET @Id=Id;
UPDATE tblCategoria SET nombre=@nombre, responsable=@responsable, descripcion=@descripcion, imagenPath=@imagenPath, Id=@Id WHERE id=@Id;
END$$

DROP PROCEDURE IF EXISTS `sp_actualizar_cliente`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_actualizar_cliente` (IN `Nombre` VARCHAR(15), IN `Apellido` VARCHAR(30), IN `Direccion` VARCHAR(30), IN `Correo` VARCHAR(40), IN `Telefono` INT(20), IN `Id` INT)  NO SQL
BEGIN
SET @Nombre=Nombre;
SET @Apellido=Apellido;
SET @Direccion=Direccion;
SET @Correo=Correo;
SET @Telefono=Telefono;
SET @Cedula=Cedula;
SET @Id=Id;
UPDATE tblCliente set Nombre=@Nombre, Apellido=@Apellido, Direccion=@Direccion, Correo=@Correo, Telefono=@Telefono, Id=@Id
WHERE id=@Id;
END$$

DROP PROCEDURE IF EXISTS `sp_actualizar_empleado`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_actualizar_empleado` (IN `Cedula` INT(100), IN `Nombre` VARCHAR(100), IN `Apellido` VARCHAR(100), IN `Cargo` VARCHAR(100), IN `Correo` VARCHAR(100), IN `Telefono` VARCHAR(100), IN `Direccion` VARCHAR(100), IN `Ciudad` VARCHAR(100))  NO SQL
BEGIN
SET @Cedula=Cedula;
SET @Nombre=Nombre;
SET @Apellido=Apellido;
SET @Cargo=Cargo;
SET @Correo=Correo;
SET @Telefono=Telefono;
SET @Direccion=Direccion;
SET @Ciudad=Ciudad;
UPDATE tblEmpleado set Nombre=@Nombre, Apellido=@Apellido, Cargo=@Cargo, Correo=@Correo, Telefono=@Telefono, Direccion=@Direccion, Ciudad=@Ciudad
WHERE id=@Cedula;
END$$

DROP PROCEDURE IF EXISTS `sp_actualizar_equipo`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_actualizar_equipo` (IN `in_id` INT(11), IN `in_nombre` VARCHAR(50), IN `in_descripcion` TEXT, IN `in_activo` TINYINT(1), IN `in_imagenPath` VARCHAR(255), IN `in_codigo` VARCHAR(50), IN `in_peso` DOUBLE, IN `in_consumoWatts` DOUBLE, IN `in_dimensionAlto` DOUBLE, IN `in_dimensionAncho` DOUBLE, IN `in_dimensionProfundidad` DOUBLE, IN `in_serial` VARCHAR(255), IN `in_garantia` VARCHAR(255), IN `in_manuales` VARCHAR(255), IN `in_proteccion` VARCHAR(255), IN `in_categoriaId` INT(11), IN `in_marcaId` INT(11))  NO SQL
BEGIN
    SET @id = in_id;
    SET @nombre = in_nombre;
    SET @descripcion = in_descripcion;
    SET @activo = in_activo;
    SET @imagenPath = in_imagenPath;
    SET @codigo = in_codigo;
    SET @peso = in_peso;
    SET @consumoWatts = in_consumoWatts;
    SET @dimensionAlto = in_dimensionAlto;
    SET @dimensionAncho = in_dimensionAncho;
    SET @dimensionProfundidad = in_dimensionProfundidad;
    SET @serial = in_serial;
    SET @garantia = in_garantia;
    SET @manuales = in_manuales;
    SET @proteccion = in_proteccion;
    SET @categoriaId = in_categoriaId;
    SET @marcaId = in_marcaId;

    UPDATE tblEquipo
    set 
        `nombre` = @nombre,
        `descripcion` = @descripcion,
        `activo` = @activo,
        `imagenPath` = @imagenPath,
        `codigo` = @codigo,
        `peso` = @peso,
        `consumoWatts` = @consumoWatts,
        `dimensionAlto` = @dimensionAlto,
        `dimensionAncho` = @dimensionAncho,
        `dimensionProfundidad` = @dimensionProfundidad,
        `serial` = @serial,
        `garantia` = @garantia,
        `manuales` = @manuales,
        `proteccion` = @proteccion,
        `categoriaId` = @categoriaId,
        `marcaId` = @marcaId
    WHERE `id`=@id;
    SELECT ROW_COUNT() AS conteo;
END$$

DROP PROCEDURE IF EXISTS `sp_actualizar_evento`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_actualizar_evento` (IN `Evento` VARCHAR(11), IN `Encargado` VARCHAR(11), IN `Lugar` VARCHAR(11), IN `Fecha` DATETIME, IN `Transportador` VARCHAR(11), IN `HoraAproximadaCargue` TIME, IN `HoraAproximadaDescargue` TIME)  NO SQL
BEGIN
SET @Evento=Evento;
SET @Encargado=Encargado;
SET @Lugar=Lugar;
SET @Fecha=Fecha;
SET @Transportador=Transportador;
SET @HoraAproximadaCargue=HoraAproximadaCargue;
SET @HoraAproximadaDescargue=HoraAproximadaDescargue;
UPDATE tblEvento set Encargado=@Encargado, Lugar=@Lugar, Fecha=@Fecha, Transportado=@Transportador, HoraAproximadaCargue=@HoraAproximadaCargue, HoraAproximadaDescargue=@HoraAproximadaDescargue WHERE id=@Evento;
END$$

DROP PROCEDURE IF EXISTS `sp_actualizar_marca`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_actualizar_marca` (IN `nombre` VARCHAR(50), IN `descripcion` TEXT, IN `imagenPath` VARCHAR(255), IN `Id` INT)  NO SQL
BEGIN
SET @nombre=nombre;
SET @descripcion=descripcion;
SET @imagenPath=imagenPath;
SET @Id=Id;
UPDATE tblMarca set nombre=@nombre, descripcion=@descripcion, imagenPath=imagenPath, Id=@Id WHERE id=@Id;
END$$

DROP PROCEDURE IF EXISTS `sp_agregar_categoria`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_agregar_categoria` (IN `nombre` VARCHAR(50), IN `responsable` CHAR(32), IN `descripcion` TEXT)  NO SQL
BEGIN
SET @nombre=nombre;
SET @responsable=responsable;
SET @descripcion=descripcion;
INSERT INTO tblCategoria(id,nombre,responsable,descripcion) VALUES (null,@nombre,@responsable,@descripcion);
END$$

DROP PROCEDURE IF EXISTS `sp_agregar_cliente`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_agregar_cliente` (IN `Nombre` VARCHAR(15), IN `Apellido` VARCHAR(30), IN `Direccion` VARCHAR(30), IN `Correo` VARCHAR(40), IN `Telefono` INT(20), IN `identificacion` VARCHAR(15))  NO SQL
BEGIN
SET @Nombre= Nombre;
SET @Apellido = Apellido;
SET @Direccion = Direccion;
SET @Correo = Correo;
SET @Telefono = Telefono;
SET @identificacion = identificacion;
INSERT INTO tblCliente (id,Nombre, Apellido, Direccion, Correo, Telefono, identificacion) VALUES(null,@Nombre, @Apellido, @Direccion, @Correo, @Telefono, @identificacion);
END$$

DROP PROCEDURE IF EXISTS `sp_agregar_empleado`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_agregar_empleado` (IN `Cedula` INT(100), IN `Nombre` VARCHAR(100), IN `Apellido` VARCHAR(100), IN `Cargo` VARCHAR(100), IN `Correo` VARCHAR(100), IN `Telefono` VARCHAR(100), IN `Direccion` VARCHAR(100), IN `Ciudad` VARCHAR(100))  NO SQL
BEGIN
SET @Cedula=Cedula;
SET @Nombre=Nombre;
SET @Apellido=Apellido;
SET @Cargo=Cargo;
SET @Correo=Correo;
SET @Telefono=Telefono;
SET @Direccion=Direccion;
SET @Ciudad=Ciudad;
INSERT INTO tblEmpleado(id, Cedula, Nombre, Apellido, Cargo, Correo, Telefono, Direccion, Ciudad) VALUES(null,@Cedula, @Nombre, @Apellido, @Cargo, @Correo, @Telefono, @Direccion, @Ciudad);
END$$

DROP PROCEDURE IF EXISTS `sp_agregar_equipo`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_agregar_equipo` (IN `in_nombre` VARCHAR(50), IN `in_descripcion` TEXT, IN `in_activo` TINYINT(1), IN `in_imagenPath` VARCHAR(255), IN `in_codigo` VARCHAR(50), IN `in_peso` DOUBLE, IN `in_consumoWatts` DOUBLE, IN `in_dimensionAlto` DOUBLE, IN `in_dimensionAncho` DOUBLE, IN `in_dimensionProfundidad` DOUBLE, IN `in_serial` VARCHAR(255), IN `in_garantia` VARCHAR(255), IN `in_manuales` VARCHAR(255), IN `in_proteccion` VARCHAR(255), IN `in_categoriaId` INT(11), IN `in_marcaId` INT(11))  NO SQL
BEGIN
    SET @nombre = in_nombre;
    SET @descripcion = in_descripcion;
    SET @activo = in_activo;
    SET @imagenPath = in_imagenPath;
    SET @codigo = in_codigo;
    SET @peso = in_peso;
    SET @consumoWatts = in_consumoWatts;
    SET @dimensionAlto = in_dimensionAlto;
    SET @dimensionAncho = in_dimensionAncho;
    SET @dimensionProfundidad = in_dimensionProfundidad;
    SET @serial = in_serial;
    SET @garantia = in_garantia;
    SET @manuales = in_manuales;
    SET @proteccion = in_proteccion;
    SET @categoriaId = in_categoriaId;
    SET @marcaId = in_marcaId;

    INSERT INTO tblEquipo(
        nombre,
        descripcion,
        activo,
        imagenPath,
        codigo,
        peso,
        consumoWatts,
        dimensionAlto,
        dimensionAncho,
        dimensionProfundidad,
        serial,
        garantia,
        manuales,
        proteccion,
        categoriaId,
        marcaId) 
    VALUES(
        @nombre,
        @descripcion,
        @activo,
        @imagenPath,
        @codigo,
        @peso,
        @consumoWatts,
        @dimensionAlto,
        @dimensionAncho,
        @dimensionProfundidad,
        @serial,
        @garantia,
        @manuales,
        @proteccion,
        @categoriaId,
        @marcaId);
    SELECT LAST_INSERT_ID() AS id;
    END$$

DROP PROCEDURE IF EXISTS `sp_agregar_equipo_categoria_y_marca_por_nombre`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_agregar_equipo_categoria_y_marca_por_nombre` (IN `in_nombre` VARCHAR(50), IN `in_descripcion` TEXT, IN `in_activo` TINYINT(1), IN `in_imagenPath` VARCHAR(255), IN `in_codigo` VARCHAR(50), IN `in_peso` DOUBLE, IN `in_consumoWatts` DOUBLE, IN `in_dimensionAlto` DOUBLE, IN `in_dimensionAncho` DOUBLE, IN `in_dimensionProfundidad` DOUBLE, IN `in_serial` VARCHAR(255), IN `in_garantia` VARCHAR(255), IN `in_manuales` VARCHAR(255), IN `in_proteccion` VARCHAR(255), IN `in_categoriaNombre` VARCHAR(50), IN `in_marcaNombre` VARCHAR(50))  NO SQL
BEGIN
    SET @nombre = in_nombre;
    SET @descripcion = in_descripcion;
    SET @activo = in_activo;
    SET @imagenPath = in_imagenPath;
    SET @codigo = in_codigo;
    SET @peso = in_peso;
    SET @consumoWatts = in_consumoWatts;
    SET @dimensionAlto = in_dimensionAlto;
    SET @dimensionAncho = in_dimensionAncho;
    SET @dimensionProfundidad = in_dimensionProfundidad;
    SET @serial = in_serial;
    SET @garantia = in_garantia;
    SET @manuales = in_manuales;
    SET @proteccion = in_proteccion;
    SET @categoriaNombre = in_categoriaNombre;
    SET @marcaNombre = in_marcaNombre;

    INSERT INTO tblEquipo(
        nombre,
        descripcion,
        activo,
        imagenPath,
        codigo,
        peso,
        consumoWatts,
        dimensionAlto,
        dimensionAncho,
        dimensionProfundidad,
        serial,
        garantia,
        manuales,
        proteccion,
        categoriaId,
        marcaId) 

        select
        @nombre,
        @descripcion,
        @activo,
        @imagenPath,
        @codigo,
        @peso,
        @consumoWatts,
        @dimensionAlto,
        @dimensionAncho,
        @dimensionProfundidad,
        @serial,
        @garantia,
        @manuales,
        @proteccion,
        tblCategoria.id,
        tblMarca.id
        from
        tblCategoria, tblMarca
        where
        tblCategoria.nombre = @categoriaNombre and tblMarca.nombre = @marcaNombre
        ;
    SELECT LAST_INSERT_ID() AS id;
    END$$

DROP PROCEDURE IF EXISTS `sp_agregar_evento`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_agregar_evento` (IN `Evento` VARCHAR(11), IN `Encargado` VARCHAR(11), IN `Lugar` VARCHAR(11), IN `Fecha` DATETIME, IN `Transprotador` VARCHAR(11), IN `HoraAproximadaCargue` TIME, IN `HoraAproximadaDescargue` TIME)  NO SQL
BEGIN
SET @Evento = Evento;
SET @Encargado = Encargado;
SET @Lugar = Lugar;
SET @Fecha = Fecha;
SET @Transprotador = Transprotador;
SET @HoraAproximadaCargue = HoraAproximadaCargue;
SET @HoraAproximadaDescargue = HoraAproximadaDescargue;
INSERT INTO tblEvento(id, Evento, Encargado, Lugar, Fecha, Transprotador, HoraAproximadaCargue, HoraAproximadaDescargue) VALUES (null, @Evento, @Encargado, @Lugar, @Fecha, @Transprotador, @HoraAproximadaCargue, @HoraAproximadaDescargue);
END$$

DROP PROCEDURE IF EXISTS `sp_agregar_marca`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_agregar_marca` (IN `nombre` VARCHAR(50), IN `descripcion` TEXT)  NO SQL
BEGIN
SET @nombre=nombre;
SET @descripcion=descripcion;
INSERT into tblMarca (nombre,descripcion) VALUES (@nombre,@descripcion);
SELECT LAST_INSERT_ID() AS id;
END$$

DROP PROCEDURE IF EXISTS `sp_consultar_categoria`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_consultar_categoria` (IN `Id` INT)  NO SQL
BEGIN
SET @Id=Id;
SELECT nombre,responsable,imagenPath FROM tblCategoria WHERE id=@Id;
END$$

DROP PROCEDURE IF EXISTS `sp_consultar_categorias`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_consultar_categorias` (IN `in_fila_inicio` INT(11), IN `in_cuantas_filas` INT(11))  NO SQL
BEGIN
SELECT
`id`,
`nombre`,
`responsable`,
`descripcion`,
`imagenPath`
FROM tblCategoria
LIMIT in_fila_inicio,in_cuantas_filas;
END$$

DROP PROCEDURE IF EXISTS `sp_consultar_cliente`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_consultar_cliente` (IN `Id` INT(11))  NO SQL
BEGIN
SET @Id=Id;
SELECT Nombre as Nombre, Apellido as Apellido, Direccion as Direccion, Correo as Correo, Telefono as Telefono, Identificacion as Identificacion FROM tblCliente WHERE id=@Id;
END$$

DROP PROCEDURE IF EXISTS `sp_consultar_clientes`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_consultar_clientes` (IN `in_fila_inicio` INT(11), IN `in_cuantas_filas` INT(11))  NO SQL
BEGIN
SELECT
`id`,
`Nombre`,
`Apellido`,
`Direccion`,
`Correo`,
`Telefono`,
`identificacion`
FROM tblCliente LIMIT in_fila_inicio,in_cuantas_filas;
END$$

DROP PROCEDURE IF EXISTS `sp_consultar_empleado`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_consultar_empleado` (IN `Id` INT(11))  NO SQL
BEGIN
SET Id=@Id;
SELECT Cedula as Cedula, Nombre as Nombre, Apellido as Apellido, Cargo as Cargo, Correo as Correo, Telefono as Telefono, Direccion as Direccion, Ciudad as Ciudad FROM tblEmpleado WHERE id=@Id;
END$$

DROP PROCEDURE IF EXISTS `sp_consultar_empleados`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_consultar_empleados` (IN `in_fila_inicio` INT(11), IN `in_cuantas_filas` INT(11))  NO SQL
BEGIN
SELECT
`id`,`Cedula`,`Nombre(s)`,`Apellido(s)`,`Cargo`,`Correo Electronico`,`Telefono`,`Direccion`,`Ciudad` FROM tblEmpleado LIMIT in_fila_inicio,in_cuantas_filas;
END$$

DROP PROCEDURE IF EXISTS `sp_consultar_equipo`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_consultar_equipo` (IN `in_id` INT(11))  NO SQL
BEGIN
    SET @id = in_id;
    SELECT
        `id`,
        `nombre`,
        `descripcion`,
        `activo`,
        `imagenPath`,
        `codigo`,
        `peso`,
        `consumoWatts`,
        `dimensionAlto`,
        `dimensionAncho`,
        `dimensionProfundidad`,
        `serial`,
        `garantia`,
        `manuales`,
        `proteccion`,
        `categoriaId`,
        `marcaId`
    FROM tblEquipo
    WHERE `id`=@id;
END$$

DROP PROCEDURE IF EXISTS `sp_consultar_equipos`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_consultar_equipos` (IN `in_fila_inicio` INT(11), IN `in_cuantas_filas` INT(11))  NO SQL
BEGIN
    SELECT
        `id`,
        `nombre`,
        `descripcion`,
        `activo`,
        `imagenPath`,
        `codigo`,
        `peso`,
        `consumoWatts`,
        `dimensionAlto`,
        `dimensionAncho`,
        `dimensionProfundidad`,
        `serial`,
        `garantia`,
        `manuales`,
        `proteccion`,
        `categoriaId`,
        `marcaId`
    FROM tblEquipo
    LIMIT in_fila_inicio,in_cuantas_filas;
END$$

DROP PROCEDURE IF EXISTS `sp_consultar_evento`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_consultar_evento` (IN `Id` INT(11))  NO SQL
BEGIN 
SET @Id=Id;
SELECT Evento as Evento, Encargado as Encargado, Lugar as Lugar, Fecha as Fecha, Transportador as Transportador, HoraAproximadaCarga as HoraAproximadaCarga, HoraAproximadaDescargue as HoraAproximadaDescargue FROM tblEvento WHERE id=@Id;
END$$

DROP PROCEDURE IF EXISTS `sp_consultar_marca`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_consultar_marca` (IN `Id` INT(10))  NO SQL
BEGIN
SET @Id=Id;
SELECT nombre as nombre, descripcion as descripcion FROM tblMarca WHERE id=@Id ;
END$$

DROP PROCEDURE IF EXISTS `sp_consultar_marcas`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_consultar_marcas` (IN `in_fila_inicio` INT(11), IN `in_cuantas_filas` INT(11))  NO SQL
BEGIN
    SELECT
        `id`,
        `nombre`,
        `descripcion`
    FROM tblMarca
    LIMIT in_fila_inicio,in_cuantas_filas;
END$$

DROP PROCEDURE IF EXISTS `sp_eliminar_categoria`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_eliminar_categoria` (IN `Id` INT(11))  NO SQL
BEGIN
DELETE FROM tblCategoria WHERE id;
END$$

DROP PROCEDURE IF EXISTS `sp_eliminar_cliente`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_eliminar_cliente` (IN `id` INT(11))  NO SQL
DELETE FROM tblCliente WHERE id$$

DROP PROCEDURE IF EXISTS `sp_eliminar_empleado`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_eliminar_empleado` (IN `id` INT(11))  NO SQL
DELETE FROM tblEmpleado WHERE id$$

DROP PROCEDURE IF EXISTS `sp_eliminar_equipo`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_eliminar_equipo` (IN `id` INT(11))  NO SQL
DELETE FROM tblEquipo WHERE id$$

DROP PROCEDURE IF EXISTS `sp_eliminar_evento`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_eliminar_evento` (IN `id` INT(11))  NO SQL
DELETE FROM tblEvento WHERE id$$

DROP PROCEDURE IF EXISTS `sp_eliminar_marca`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_eliminar_marca` (IN `id` INT(11))  NO SQL
DELETE FROM tblMarca WHERE id$$

DROP PROCEDURE IF EXISTS `sp_igreso_usuario`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_igreso_usuario` (IN `documento` INT, IN `nombre` VARCHAR(900), IN `apellido` VARCHAR(900), IN `telefono` INT, IN `celular` BIGINT, IN `email` VARCHAR(900), IN `passwordu` VARCHAR(900), IN `estado` VARCHAR(200), IN `fecha` DATETIME, IN `role` VARCHAR(900))  NO SQL
BEGIN
SET @documento=documento; 
SET @nombre=nombre; 
SET @apellido=apellido; 
SET @telefono=telefono; 
SET @celular=celular; 
SET @email=email; 
SET @passwordu=passwordu; 
SET @estado=estado; 
SET @fecha=fecha; 
SET @role=role;
INSERT INTO tbl_usuario(int_documento_use, 
var_nombre_use, var_apellido_use,  int_telefono_use, int_celular_use, var_email_use, var_password_use, var_estado_use, date_fecha_inicio_use, var_role_use) VALUES (@documento, @nombre, @apellido, @telefono, @celular, @email, @passwordu, @estado, @fecha, @role);
END$$

DROP PROCEDURE IF EXISTS `sp_log`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_log` (IN `documento` INT, IN `emai` VARCHAR(900), IN `nombre` VARCHAR(900), IN `acion` TEXT, IN `IPreal` VARCHAR(900), IN `ipscript` VARCHAR(900), IN `ipusuario` VARCHAR(900), IN `fecha` DATETIME)  NO SQL
BEGIN
INSERT INTO tbl_log(int_id_log, int_documento_log, var_email_log, var_nombre_log, var_acion_log, var_IPreal_log, var_ipscript_log, var_ipusuario_log, date_fecha_log ) VALUES (null, documento, emai, nombre, acion, IPreal, ipscript, ipusuario, fecha);
END$$

DROP PROCEDURE IF EXISTS `sp_usuario_login`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_usuario_login` (IN `vemail` VARCHAR(900))  NO SQL
BEGIN
SELECT var_email_use AS email_usuario, var_password_use AS password_usuario, var_nombre_use AS nombre, var_apellido_use AS apellido, int_documento_use as documento, var_role_use as rol
FROM tbl_usuario
WHERE var_email_use = vemail;
END$$

DELIMITER ;
/*
DROP TABLE IF EXISTS tblEquipoxevento;
CREATE TABLE tblEquipoxevento (
  equipoId int(11) NOT NULL,
  eventoId int(11) NOT NULL,
  creadoPor char(32) DEFAULT NULL,
  creadoEn datetime DEFAULT NULL,
  actualizadoPor char(32) DEFAULT NULL,
  actualizadoEn datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS tblEvento;
CREATE TABLE tblEvento (
  id int(11) NOT NULL,
  Evento varchar(11) NOT NULL,
  Encargado varchar(11) NOT NULL,
  Lugar varchar(11) NOT NULL,
  Fecha datetime NOT NULL,
  Transprotador varchar(11) NOT NULL,
  HoraAproximadaCargue time NOT NULL,
  HoraAproximadaDescargue time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS tblventoxcliente;
CREATE TABLE tbleventoxcliente (
  id int(11) NOT NULL,
  eventoId int(11) NOT NULL,
  clienteId int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS tblhistoricoequipoxevento;
CREATE TABLE tblhistoricoequipoxevento (
  equipoId int(11) NOT NULL,
  eventoId int(11) NOT NULL,
  creadoPor char(32) DEFAULT NULL,
  creadoEn datetime DEFAULT NULL,
  actualizadoPor char(32) DEFAULT NULL,
  actualizadoEn datetime DEFAULT NULL,
  eliminadoPor char(32) DEFAULT NULL,
  eliminadoEn datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


ALTER TABLE tblequipoxevento
  ADD KEY FK_tblEquipoXEvento_equipoId (equipoId),
  ADD KEY FK_tblEquipoXEvento_eventoId (eventoId);

ALTER TABLE tblevento
  ADD PRIMARY KEY (id);

ALTER TABLE tbleventoxcliente
  ADD PRIMARY KEY (id),
  ADD KEY FK_tblEventoXCliente_eventoId (eventoId),
  ADD KEY FK_tblEventoXCliente_clienteId (clienteId);


ALTER TABLE tblevento
  MODIFY id int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE tbleventoxcliente
  MODIFY id int(11) NOT NULL AUTO_INCREMENT;


ALTER TABLE tblequipoxevento
  ADD CONSTRAINT FK_tblEquipoXEvento_equipoId FOREIGN KEY (equipoId) REFERENCES tblequipo (id),
  ADD CONSTRAINT FK_tblEquipoXEvento_eventoId FOREIGN KEY (eventoId) REFERENCES tblevento (id);

ALTER TABLE tbleventoxcliente
  ADD CONSTRAINT FK_tblEventoXCliente_clienteId FOREIGN KEY (clienteId) REFERENCES tblcliente (id),
  ADD CONSTRAINT FK_tblEventoXCliente_eventoId FOREIGN KEY (eventoId) REFERENCES tblevento (id);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
*/