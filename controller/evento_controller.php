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
                $res = $this->modelo->actualiza($id, $_POST["Evento"], $_POST["Encargado"], $_POST["Lugar"], $_POST["Fecha"], $_POST["Transportador"], $_POST["HoraAproximadaCargue"], $_POST["HoraAproximadaDescargue"]);
            } else {
                $res = $this->modelo->agrega($_POST["Evento"], $_POST["Encargado"], $_POST["Lugar"], $_POST["Fecha"], $_POST["Transportador"], $_POST["HoraAproximadaCargue"], $_POST["HoraAproximadaDescargue"]);
            }
        }
        $arr = array('r' => $res);
        header('Content-type: application/json');
        echo json_encode($arr);
    }
}
