<?php
class controller_base{
    function __construct($entidad) {
        $this->entidad = $entidad;
        $modelo = $this->entidad . '_model';
        require_once 'model/'.$modelo.'.php';
        $this->modelo = new $modelo();        
    }
    public function index() {
        $tittle = $_SESSION["name"];
        $inicio = 0;
        $cuantos = 10;
        if(isset($_POST['inicio']))
        {
            $inicio = $_POST['inicio'];
        }
        if(isset($_POST['cuantos']))
        {
            $cuantos = $_POST['cuantos'];
        }
        $data = $this->modelo->get($inicio,$cuantos);
        //$ip = getRealIP();                
        
        if ($_SESSION["rol"] == '1') {
            require_once HTML_DIR_GERENTE . $this->entidad . '/vista.php';
        } else if ($_SESSION["rol"] == '2') {
            require_once HTML_DIR_ADMIN . $this->entidad . '/vista.php';
        } else if ($_SESSION["rol"] == '3') {
            require_once HTML_DIR_DIRECTOR . $this->entidad . '/vista.php';
        } else if ($_SESSION["rol"] == '4') {
            require_once HTML_DIR_VENDEDOR . $this->entidad . '/vista.php';
        }
        //$this->form_agregar();
    }
    public function elimina() {
        $arr = array('r' => 0);
        $res = 0;
        if (isset($_POST['id'])) {
            $id = $_POST['id'];
            if ($id > 0) {
                $res = $this->modelo->elimina($id);
            }
        }
        $arr = array('r' => $res);
        header('Content-type: application/json');
        echo json_encode($arr);
    }
    function form_agregar() {
        
        $id = $_POST["id"];
        if ($id > 0) {
            $item = $this->modelo->getId($_POST["id"]);
        }
        if ($_SESSION["rol"] == '1') {
            require_once HTML_DIR_GERENTE . $this->entidad . '/form_agregar.php';
        } else if ($_SESSION["rol"] == '2') {
            require_once HTML_DIR_ADMIN . $this->entidad . '/form_agregar.php';
        } else if ($_SESSION["rol"] == '3') {
            require_once HTML_DIR_DIRECTOR . $this->entidad . '/form_agregar.php';
        } else if ($_SESSION["rol"] == '4') {
            require_once HTML_DIR_VENDEDOR . $this->entidad . '/form_agregar.php';
        }
    }
    public function agrega() { //Es necesario implementar en la clase hija
        $arr = array('r' => 0);
        header('Content-type: application/json');
        echo json_encode($arr);
    }
}
