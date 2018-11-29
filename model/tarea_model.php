<?php

/**
 * Description of equipo_model
 *
 * @author juan
 */
class tarea_model {

//put your code here
    private $DB;
    private $tarea;
    
    private static $nombreEntidad = "tarea";

    public function __construct() {
        $this->DB = conexion::getConnection();
        $this->tareas = array();
    }

    public function get($inicio=0,$cuantos=10) {
        $queryString = "CALL sp_consultar_" . self::$nombreEntidad . "s($inicio,$cuantos)";
        $query = $this->DB->query($queryString);
        if($query){
        while ($fila = $query->fetch_assoc()) {
            $this->tareas[] = $fila;
        }
        }
        return $this->tareas;
    }

    public function getId($id) {
        $queryString = "CALL sp_consultar_" . self::$nombreEntidad . "($id)";
        $query = $this->DB->query($queryString);
        if($query){
        if ($fila = $query->fetch_assoc()) {
            return $fila;
        }
        }
        return NULL;
    }

    public function agrega($descripcion, $observacion) {
        $queryString = "CALL sp_agregar_" . self::$nombreEntidad . "("
                . "  '$descripcion', $observacion')";
        $query = $this->DB->query($queryString);
        if($query){
        if ($fila = $query->fetch_assoc()) {
            return $fila['id'];
        }
        }
        return NULL;
    }
  
    public function actualiza($id, $descripcion, $observacion)
    {
        $queryString = "CALL sp_actualizar_" . self::$nombreEntidad . "("
        . "   '$descripcion', $observacion')";
//        return mysqli_query($this->DB, $query);// or die('error \n' . mysqli_error($this->DB));
        $query = $this->DB->query($queryString);
        if($query){
        if ($fila = $query->fetch_assoc()) {
            return $fila['conteo'];
        }
        }
        return NULL;
    }

    public function elimina($id)
    {
        $queryString = "CALL sp_eliminar_" . self::$nombreEntidad . "($id)";
        $query = $this->DB->query($queryString);
        if($query){
        if ($fila = $query->fetch_assoc()) {
            return $fila['conteo'];
        }
        }
        return NULL;
    }
}
