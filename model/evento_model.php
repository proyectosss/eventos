<?php

/**
 * Description of equipo_model
 *
 * @author juan
 */
class Evento_model {

//put your code here
    private $DB;
    private $evento;
    
    private static $nombreEntidad = "evento";

    public function __construct() {
        $this->DB = conexion::getConnection();
        $this->eventos = array();
    }

    public function get($inicio=0,$cuantos=10) {
        $queryString = "CALL sp_consultar_" . self::$nombreEntidad . "s($inicio,$cuantos)";
        $query = $this->DB->query($queryString);
        if($query){
        while ($fila = $query->fetch_assoc()) {
            $this->eventos[] = $fila;
        }
        }
        return $this->eventos;
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

    public function agrega($evento, $encargado, $lugar, $fecha, $transportador, $horaAproximadaCargue, $horaAproximadaDescargue) {
        $queryString = "CALL sp_agregar_" . self::$nombreEntidad . "("
                . "  '$evento', '$encargado', '$lugar', '$fecha', '$transportador', '$horaAproximadaCargue', '$horaAproximadaDescargue')";
        $query = $this->DB->query($queryString);
        if($query){
        if ($fila = $query->fetch_assoc()) {
            return $fila['id'];
        }
        }
        return NULL;
    }

    public function actualiza($id,$evento, $encargado, $lugar, $fecha, $transportador, $horaAproximadaCargue, $horaAproximadaDescargue)
    {
        $queryString = "CALL sp_actualizar_" . self::$nombreEntidad . "("
        . "  '$evento', '$encargado', '$lugar', '$fecha', '$transportador', '$horaAproximadaCargue', '$horaAproximadaDescargue')";
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
