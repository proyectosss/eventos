/**
 * Author:  juan
 * Created: 21/10/2018
 */

DELIMITER $$

DROP PROCEDURE IF EXISTS sp_agregar_equipo_categoria_y_marca_por_nombre $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_agregar_equipo_categoria_y_marca_por_nombre` (
	IN in_nombre varchar(50), IN in_descripcion text,
	IN in_activo tinyint(1), IN in_imagenPath varchar(255), IN in_codigo varchar(50),
	IN in_peso double, IN in_consumoWatts double, IN in_dimensionAlto double,
	IN in_dimensionAncho double, IN in_dimensionProfundidad double, IN in_serial varchar(255),
	IN in_garantia varchar(255), IN in_manuales varchar(255), IN in_proteccion varchar(255),
	IN in_categoriaNombre varchar(50), IN in_marcaNombre varchar(50) )  NO SQL
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
DELIMITER ;
