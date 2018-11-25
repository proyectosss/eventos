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
                $res = $this->modelo->actualiza($id, $_POST["cedula"], $_POST["nombre"], $_POST["apellido"], $_POST["cargo"], $_POST["correo"], $_POST["telefono"], $_POST["direccion"], $_POST["ciudad"]);
            } else {
                $res = $this->modelo->agrega($_POST["cedula"], $_POST["nombre"], $_POST["apellido"], $_POST["cargo"], $_POST["correo"], $_POST["telefono"], $_POST["direccion"], $_POST["ciudad"]);
            }
        }
        $arr = array('r' => $res);
        header('Content-type: application/json');
        echo json_encode($arr);
    }
}
