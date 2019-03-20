<?php

class plan_model {

    private $DB;
    private $plan;
    private static $nombreEntidad = "plan";

    public function __construct() {
        $this->DB = conexion::getConnection();
        $this->planes = array();
    }

    public function get($inicio = 0, $cuantos = 10) {
        $queryString = "CALL sp_consultar_" . self::$nombreEntidad . "s($inicio,$cuantos)";
        //echo $queryString;
        $query = $this->DB->query($queryString);
        if($query){
        while ($fila = $query->fetch_assoc()) {
            $this->planes[] = $fila;
        }
        }
        return $this->planes;
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

    public function agrega($definicion, $naturaleza, $observacion) {
        $queryString = "CALL sp_agregar_" . self::$nombreEntidad . "("
                . "  '$definicion', '$naturaleza', '$observacion')";
        $query = $this->DB->query($queryString);
        if($query){
            if ($fila = $query->fetch_assoc()) {
                return $fila['id'];
            }
        }
        return NULL;
    }

    public function actualiza($id, $definicion, $naturaleza, $observacion) {
        $queryString = "CALL sp_actualizar_" . self::$nombreEntidad . "("
                . "  '$definicion', '$naturaleza', '$observacion')";
//        return mysqli_query($this->DB, $query);// or die('error \n' . mysqli_error($this->DB));
        $query = $this->DB->query($queryString);
        if($query){
        if ($fila = $query->fetch_assoc()) {
            return $fila['conteo'];
        }
        }
        return NULL;
    }

    public function elimina($id) {
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
