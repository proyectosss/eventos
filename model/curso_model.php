<?php

/**
 * Description of equipo_model
 *
 * @author juan
 */
class curso_model {

//put your code here
    private $DB;
    private $curso;
    
    private static $nombreEntidad = "curso";

    public function __construct() {
        $this->DB = conexion::getConnection();
        $this->cursos = array();
    }

    public function get($inicio=0,$cuantos=10) {
        $queryString = "CALL sp_consultar_" . self::$nombreEntidad . "s($inicio,$cuantos)";
        $query = $this->DB->query($queryString);
        if($query){
        while ($fila = $query->fetch_assoc()) {
            $this->cursos[] = $fila;
        }
        }
        return $this->cursos;
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

    public function agrega($curso) {
        $queryString = "CALL sp_agregar_" . self::$nombreEntidad . "("
                . "  '$curso')";
        $query = $this->DB->query($queryString);
        if($query){
        if ($fila = $query->fetch_assoc()) {
            return $fila['id'];
        }
        }
        return NULL;
    }
  
    public function actualiza($id,$curso)
    {
        $queryString = "CALL sp_actualizar_" . self::$nombreEntidad . "("
        . "  '$curso')";
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
