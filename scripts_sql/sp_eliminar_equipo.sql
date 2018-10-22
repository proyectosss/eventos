/**
 * Author:  juan
 * Created: 21/10/2018
 */

DELIMITER $$

DROP PROCEDURE IF EXISTS sp_eliminar_equipo $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_eliminar_equipo` (
	IN in_id int(11))  NO SQL
BEGIN
    SET @id = in_id;
    DELETE FROM tblEquipo WHERE `id`=@id;
    SELECT ROW_COUNT() AS conteo;
END$$
DELIMITER ;
