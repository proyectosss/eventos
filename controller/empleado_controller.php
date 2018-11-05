<?php

/**
 * Description of tblEquipo_controller
 *
 * @author juan
 */
//require_once 'model/equipo_model.php';
require_once 'controller_base.php';
class empleado_controller extends controller_base {

    private $sesion;
    
    public function __construct() {
        $this->entidad = 'empleado';
        parent::__construct($this->entidad);
    }

    public function agrega() {
        $arr = array('r' => 0);
        $res = 0;
        if (isset($_POST['id'])) {
            $id = $_POST['id'];
            if ($id > 0) {
                $res = $this->modelo->actualiza($id, $_POST["Cedula"], $_POST["Nombre"], $_POST["Apellido"], $_POST["Cargo"], $_POST["Correo"], $_POST["Telefono"], $_POST["Direccion"], $_POST["Ciudad"]);
            } else {
                $res = $this->modelo->agrega($_POST["Cedula"], $_POST["Nombre"], $_POST["Apellido"], $_POST["Cargo"], $_POST["Correo"], $_POST["Telefono"], $_POST["Direccion"], $_POST["Ciudad"]);
            }
        }
        $arr = array('r' => $res);
        header('Content-type: application/json');
        echo json_encode($arr);
    }
}
