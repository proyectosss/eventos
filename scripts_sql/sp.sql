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
SELECT ROW_COUNT() AS conteo;
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
SELECT ROW_COUNT() AS conteo;
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
SELECT ROW_COUNT() AS conteo;
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
SELECT ROW_COUNT() AS conteo;
END$$

DROP PROCEDURE IF EXISTS `sp_actualizar_marca`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_actualizar_marca` (IN `nombre` VARCHAR(50), IN `descripcion` TEXT, IN `imagenPath` VARCHAR(255), IN `Id` INT)  NO SQL
BEGIN
SET @nombre=nombre;
SET @descripcion=descripcion;
SET @imagenPath=imagenPath;
SET @Id=Id;
UPDATE tblMarca set nombre=@nombre, descripcion=@descripcion, imagenPath=imagenPath, Id=@Id WHERE id=@Id;
SELECT ROW_COUNT() AS conteo;
END$$

DROP PROCEDURE IF EXISTS `sp_agregar_categoria`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_agregar_categoria` (IN `nombre` VARCHAR(50), IN `responsable` CHAR(32), IN `descripcion` TEXT)  NO SQL
BEGIN
SET @nombre=nombre;
SET @responsable=responsable;
SET @descripcion=descripcion;
INSERT INTO tblCategoria(id,nombre,responsable,descripcion) VALUES (null,@nombre,@responsable,@descripcion);
SELECT LAST_INSERT_ID() AS id;
END$$

alter table tblCliente modify Nombre varchar(20) $$
alter table tblCliente modify Apellido varchar(20) $$
alter table tblCliente modify Direccion varchar(30) $$
alter table tblCliente modify Correo varchar(40) $$
alter table tblCliente modify Telefono varchar(20) $$

DROP PROCEDURE IF EXISTS `sp_agregar_cliente`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_agregar_cliente` (IN `Nombre` VARCHAR(15), IN `Apellido` VARCHAR(30), IN `Direccion` VARCHAR(30), IN `Correo` VARCHAR(40), IN `Telefono` INT(20), IN `identificacion` VARCHAR(15))  NO SQL
BEGIN
SET @Nombre= Nombre;
SET @Apellido = Apellido;
SET @Direccion = Direccion;
SET @Correo = Correo;
SET @Telefono = Telefono;
SET @identificacion = identificacion;
INSERT INTO tblCliente (Nombre, Apellido, Direccion, Correo, Telefono, identificacion) VALUES(@Nombre, @Apellido, @Direccion, @Correo, @Telefono, @identificacion);
SELECT LAST_INSERT_ID() AS id;
END$$
-- CALL sp_agregar_cliente('Nombre Cliente', 'Apellido Cliente', 'Direccion Cliente', 'correo@servidor.com','6669999','71000000') $$

alter table tblEmpleado modify Cedula varchar(20) $$
DROP PROCEDURE IF EXISTS `sp_agregar_empleado`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_agregar_empleado` (IN `Cedula` VARCHAR(20), IN `Nombre` VARCHAR(100), IN `Apellido` VARCHAR(100), IN `Cargo` VARCHAR(100), IN `Correo` VARCHAR(100), IN `Telefono` VARCHAR(100), IN `Direccion` VARCHAR(100), IN `Ciudad` VARCHAR(100))  NO SQL
BEGIN
SET @Cedula=Cedula;
SET @Nombre=Nombre;
SET @Apellido=Apellido;
SET @Cargo=Cargo;
SET @Correo=Correo;
SET @Telefono=Telefono;
SET @Direccion=Direccion;
SET @Ciudad=Ciudad;
INSERT INTO tblEmpleado(Cedula, `Nombre(s)`, `Apellido(s)`, Cargo, `Correo Electronico`, Telefono, Direccion, Ciudad) VALUES(@Cedula, @Nombre, @Apellido, @Cargo, @Correo, @Telefono, @Direccion, @Ciudad);
SELECT LAST_INSERT_ID() AS id;
END$$
-- CALL sp_agregar_empleado ('71.000.000', 'Nombre Empleado', 'Apellido Empleado', 'Cargo Empleado', 'Correo Empleado', 'Telefono Empleado', 'Direccion Empleado', 'Ciudad') $$


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
SELECT LAST_INSERT_ID() AS id;
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
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_eliminar_categoria` (IN `in_id` INT(11))  NO SQL
BEGIN
set @id = in_id;
DELETE FROM tblCategoria WHERE id = @id;
SELECT ROW_COUNT() AS conteo;
END$$

DROP PROCEDURE IF EXISTS `sp_eliminar_cliente`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_eliminar_cliente` (IN `in_id` INT(11))  NO SQL
BEGIN
SET @id=in_id;
DELETE FROM tblCliente WHERE id = @id;
SELECT ROW_COUNT() AS conteo;
END $$

DROP PROCEDURE IF EXISTS `sp_eliminar_empleado`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_eliminar_empleado` (IN `in_id` INT(11))  NO SQL
BEGIN
SET @id=in_id;
DELETE FROM tblEmpleado WHERE id = @id;
SELECT ROW_COUNT() AS conteo;
END $$

DROP PROCEDURE IF EXISTS `sp_eliminar_equipo`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_eliminar_equipo` (IN `in_id` INT(11))  NO SQL
BEGIN
SET @id=in_id;
DELETE FROM tblEquipo WHERE id = @id;
SELECT ROW_COUNT() AS conteo;
END $$

DROP PROCEDURE IF EXISTS `sp_eliminar_evento`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_eliminar_evento` (IN `in_id` INT(11))  NO SQL
BEGIN
SET @id=in_id;
DELETE FROM tblEvento WHERE id = @id;
SELECT ROW_COUNT() AS conteo;
END $$

DROP PROCEDURE IF EXISTS `sp_eliminar_marca`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_eliminar_marca` (IN `in_id` INT(11))  NO SQL
BEGIN
SET @id=in_id;
DELETE FROM tblMarca WHERE id = @id;
SELECT ROW_COUNT() AS conteo;
END $$

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