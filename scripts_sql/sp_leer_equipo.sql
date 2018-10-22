/**
 * Author:  juan
 * Created: 21/10/2018
 */

DELIMITER $$

DROP PROCEDURE IF EXISTS sp_leer_equipo $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_leer_equipo` (
	IN in_id int(11))  NO SQL
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
DELIMITER ;
