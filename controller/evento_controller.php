<?php

/**
 * Description of tblEquipo_controller
 *
 * @author juan
 */
//require_once 'model/equipo_model.php';
require_once 'controller_base.php';
class evento_controller extends controller_base {

    
    public function __construct() {
        $this->entidad = 'evento';
        parent::__construct($this->entidad);
    }

    public function agrega() {
        $arr = array('r' => 0);
        $res = 0;
        if (isset($_POST['id'])) {
            $id = $_POST['id'];
            if ($id > 0) {
                $res = $this->modelo->actualiza($id, $_POST["evento"], $_POST["encargado"], $_POST["lugar"], $_POST["fecha"], $_POST["transportador"], $_POST["horaAproximadaCargue"], $_POST["horaAproximadaDescargue"]);
            } else {
                $res = $this->modelo->agrega($_POST["evento"], $_POST["encargado"], $_POST["lugar"], $_POST["fecha"], $_POST["transportador"], $_POST["horaAproximadaCargue"], $_POST["horaAproximadaDescargue"]);
            }
        }
        $arr = array('r' => $res);
        header('Content-type: application/json');
        echo json_encode($arr);
    }
}
