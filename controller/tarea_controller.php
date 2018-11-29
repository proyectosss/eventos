<?php

/**
 * Description of tblEquipo_controller
 *
 * @author juan
 */
//require_once 'model/equipo_model.php';
require_once 'controller_base.php';
class tarea_controller extends controller_base {

    private $sesion;
    
    public function __construct() {
        $this->entidad = 'tarea';
        parent::__construct($this->entidad);
    }

    public function agrega() {
        $arr = array('r' => 0);
        $res = 0;
        if (isset($_POST['id'])) {
            $id = $_POST['id'];
            if ($id > 0) {
                $res = $this->modelo->actualiza($id, $_POST["descripcion"], $_POST["observacion"]);
            } else {
                $res = $this->modelo->agrega($_POST["descripcion"], $_POST["observacion"]);
            }
        }
        $arr = array('r' => $res);
        header('Content-type: application/json');
        echo json_encode($arr);
    }
}