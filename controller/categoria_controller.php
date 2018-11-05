<?php

/**
 * Description of tblEquipo_controller
 *
 * @author juan
 */
//require_once 'model/equipo_model.php';
require_once 'controller_base.php';
class categoria_controller extends controller_base {

    private $sesion;
    
    public function __construct() {
        $this->entidad = 'categoria';
        parent::__construct($this->entidad);
    }

    public function agrega() {
        $arr = array('r' => 0);
        $res = 0;
        if (isset($_POST['id'])) {
            $id = $_POST['id'];
            if ($id > 0) {
                $res = $this->modelo->actualiza($id, $_POST["nombre"], $_POST["responsable"], $_POST["descripcion"], $_POST["imagenPath"]);
            } else {
                $res = $this->modelo->agrega($_POST["nombre"], $_POST["responsable"], $_POST["descripcion"], $_POST["imagenPath"]);
            }
        }
        $arr = array('r' => $res);
        header('Content-type: application/json');
        echo json_encode($arr);
    }
}
