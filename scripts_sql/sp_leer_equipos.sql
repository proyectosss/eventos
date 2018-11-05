/**
 * Author:  juan
 * Created: 21/10/2018
 */

DELIMITER $$

DROP PROCEDURE IF EXISTS sp_consultar_equipos $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_consultar_equipos` (
	IN in_fila_inicio int(11),
        IN in_cuantas_filas int(11))  NO SQL
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
DELIMITER ;
