<?php

/**
 * Description of equipo_model
 *
 * @author juan
 */
class categoria_model {

//put your code here
    private $DB;
    private $categoria;
    
    private static $nombreEntidad = "categoria";

    public function __construct() {
        $this->DB = conexion::getConnection();
        $this->categorias = array();
    }

    public function get($inicio=0,$cuantos=10) {
        $queryString = "CALL sp_consultar_" . self::$nombreEntidad . "s($inicio,$cuantos)";
        $query = $this->DB->query($queryString);
        while ($fila = $query->fetch_assoc()) {
            $this->categorias[] = $fila;
        }
        return $this->categorias;
    }

    public function getId($id) {
        $queryString = "CALL sp_consultar_" . self::$nombreEntidad . "($id)";
        $query = $this->DB->query($queryString);
        if ($fila = $query->fetch_assoc()) {
            return $fila;
        }
        return NULL;
    }

    public function agrega($nombre, $responsable, $descripcion, $imagenPath) {
        $queryString = "CALL sp_agregar_" . self::$nombreEntidad . "("
                . "  '$nombre', '$responsable', '$descripcion''$imagenPath')";
        $query = $this->DB->query($queryString);
        if ($fila = $query->fetch_assoc()) {
            return $fila['id'];
        }
        return NULL;
    }
  
    public function actualiza($id,$nombre, $responsable, $descripcion, $imagenPath)
    {
        $queryString = "CALL sp_actualizar_" . self::$nombreEntidad . "("
        . "  '$nombre', '$responsable', '$descripcion''$imagenPath')";
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