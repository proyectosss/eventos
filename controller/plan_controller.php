<?php

require_once 'controller_base.php';
class plan_controller extends controller_base {

    private $sesion;
    
    public function __construct() {
        $this->entidad = 'plan';
        parent::__construct($this->entidad);
    }

    public function agrega() {
        $arr = array('r' => 0);
        $res = 0;
        if (isset($_POST['id'])) {
            $id = $_POST['id'];
            if ($id > 0) {
                $res = $this->modelo->actualiza($id, $_POST["definicion"], $_POST["naturaleza"], $_POST["observacion"]);
            } else {
                $res = $this->modelo->agrega($_POST["definicion"], $_POST["naturaleza"], $_POST["observacion"], $_POST["correo"], $_POST["telefono"], $_POST["identificacion"]);
            }
        }
        $arr = array('r' => $res);
        header('Content-type: application/json');
        echo json_encode($arr);
    }
}