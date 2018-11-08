<?php

/**
 * Description of equipo_model
 *
 * @author juan
 */
class cliente_model {

//put your code here
    private $DB;
    private $cliente;
    
    private static $nombreEntidad = "cliente";

    public function __construct() {
        $this->DB = conexion::getConnection();
        $this->clientes = array();
    }

    public function get($inicio=0,$cuantos=10) {
        $queryString = "CALL sp_consultar_" . self::$nombreEntidad . "s($inicio,$cuantos)";
        //echo $queryString;
        $query = $this->DB->query($queryString);
        while ($fila = $query->fetch_assoc()) {
            $this->clientes[] = $fila;
        }
        return $this->clientes;
    }

    public function getId($id) {
        $queryString = "CALL sp_consultar_" . self::$nombreEntidad . "($id)";
        $query = $this->DB->query($queryString);
        if ($fila = $query->fetch_assoc()) {
            return $fila;
        }
        return NULL;
    }

    public function agrega($Nombre, $Apellido, $Direccion, $Correo, $Telefono, $identificacion) {
        $queryString = "CALL sp_agregar_" . self::$nombreEntidad . "("
                . "  '$Nombre', '$Apellido', '$Correo', $Telefono, '$identificacion')";
        $query = $this->DB->query($queryString);
        if ($fila = $query->fetch_assoc()) {
            return $fila['id'];
        }
        return NULL;
    }
  
    public function actualiza($id, $Nombre, $Apellido, $Direccion, $Correo, $Telefono, $identificacion)
    {
        $queryString = "CALL sp_actualizar_" . self::$nombreEntidad . "("
        . "  '$Nombre', '$Apellido', '$Correo', $Telefono, '$identificacion')";
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
