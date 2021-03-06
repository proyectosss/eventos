<?php

/**
 * Description of equipo_model
 *
 * @author juan
 */
class equipo_model {

//put your code here
    private $DB;
    private $equipo;
    
    private static $nombreEntidad = "marca";

    public function __construct() {
        $this->DB = conexion::getConnection();
        $this->equipos = array();
    }

    public function get($inicio=0,$cuantos=10) {
        $queryString = "CALL sp_consultar_" . self::$nombreEntidad . "s($inicio,$cuantos)";
        $query = $this->DB->query($queryString);
        while ($fila = $query->fetch_assoc()) {
            $this->equipos[] = $fila;
        }
        return $this->equipos;
    }

    public function getId($id) {
        $queryString = "CALL sp_leer_" . self::$nombreEntidad . "($id)";
        $query = $this->DB->query($queryString);
        if ($fila = $query->fetch_assoc()) {
            return $fila;
        }
        return NULL;
    }

    public function agrega($nombre, $descripcion, $activo, $imagenPath, $codigo, $peso, $consumoWatts, $dimensionAlto, $dimensionAncho, $dimensionProfundidad, $serial, $garantia, $manuales, $proteccion, $categoriaId, $marcaId) {
        $queryString = "CALL sp_agregar_" . self::$nombreEntidad . "("
                . "  '$nombre', '$descripcion', $activo, '$imagenPath', '$codigo', $peso"
                . ", $consumoWatts, $dimensionAlto, $dimensionAncho, $dimensionProfundidad"
                . ", '$serial', '$garantia', '$manuales', '$proteccion', $categoriaId"
                . ", $marcaId)";
        $query = $this->DB->query($queryString);
        if ($fila = $query->fetch_assoc()) {
            return $fila['id'];
        }
        return NULL;
    }
  
    public function actualiza($id, $nombre, $descripcion, $activo, $imagenPath, $codigo, $peso, $consumoWatts, $dimensionAlto, $dimensionAncho, $dimensionProfundidad, $serial, $garantia, $manuales, $proteccion, $categoriaId, $marcaId)
    {
        $queryString = "CALL sp_actualizar_" . self::$nombreEntidad . "("
                . "  $id, '$nombre', '$descripcion', $activo, '$imagenPath', '$codigo', $peso"
                . ", $consumoWatts, $dimensionAlto, $dimensionAncho, $dimensionProfundidad"
                . ", '$serial', '$garantia', '$manuales', '$proteccion', $categoriaId"
                . ", $marcaId)";
//        return mysqli_query($this->DB, $query);// or die('error \n' . mysqli_error($this->DB));
        $query = $this->DB->query($queryString);
        if ($fila = $query->fetch_assoc()) {
            return $fila['conteo'];
        }
        return NULL;
    }

    public function elimina($id)
    {
        $queryString = "CALL sp_eliminar_" . self::$nombreEntidad . "($id)";
        $query = $this->DB->query($queryString);
        if ($fila = $query->fetch_assoc()) {
            return $fila['conteo'];
        }
        return NULL;
    }
}
