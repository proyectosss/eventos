<?php

/**
 * Description of tblEquipo_controller
 *
 * @author juan
 */
require_once 'model/equipo_model.php';

class equipo_controller {

    private $sesion;

    public function __construct() {
        $this->equipo = new equipo_model();
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
        $data = $this->equipo->get($inicio,$cuantos);
        $ip = getRealIP();
        if ($_SESSION["rol"] == '1') {
            require_once HTML_DIR_GERENTE . 'equipo/vista.php';
        } else if ($_SESSION["rol"] == '2') {
            require_once HTML_DIR_ADMIN . 'equipo/vista.php';
        } else if ($_SESSION["rol"] == '3') {
            require_once HTML_DIR_DIRECTOR . 'equipo/vista.php';
        } else if ($_SESSION["rol"] == '4') {
            require_once HTML_DIR_VENDEDOR . 'equipo/vista.php';
        }
        //$this->form_agregar();
    }

    public function elimina() {
        $arr = array('r' => 0);
        $res = 0;
        if (isset($_POST['id'])) {
            $id = $_POST['id'];
            if ($id > 0) {
                $res = $this->equipo->elimina($id);
            }
        }
        $arr = array('r' => $res);
        header('Content-type: application/json');
        echo json_encode($arr);
    }

    public function agrega() {
        $arr = array('r' => 0);
        $res = 0;
        if (isset($_POST['id'])) {
            $id = $_POST['id'];
            if ($id > 0) {
                $res = $this->equipo->actualiza($id, $_POST["nombre"], $_POST["descripcion"], $_POST["activo"], $_POST["imagenPath"], $_POST["codigo"], $_POST["peso"], $_POST["consumoWatts"], $_POST["dimensionAlto"], $_POST["dimensionAncho"], $_POST["dimensionProfundidad"], $_POST["serial"], $_POST["garantia"], $_POST["manuales"], $_POST["proteccion"], $_POST["categoriaId"], $_POST["marcaId"]);
            } else {
                $res = $this->equipo->agrega($_POST["nombre"], $_POST["descripcion"], $_POST["activo"], $_POST["imagenPath"], $_POST["codigo"], $_POST["peso"], $_POST["consumoWatts"], $_POST["dimensionAlto"], $_POST["dimensionAncho"], $_POST["dimensionProfundidad"], $_POST["serial"], $_POST["garantia"], $_POST["manuales"], $_POST["proteccion"], $_POST["categoriaId"], $_POST["marcaId"]);
            }
        }
        $arr = array('r' => $res);
        header('Content-type: application/json');
        echo json_encode($arr);
    }

    function form_agregar() {

        $id = $_POST["id"];
        if ($id > 0) {
            $item = $this->equipo->getId($_POST["id"]);
        }
        if ($_SESSION["rol"] == '1') {
            require_once HTML_DIR_GERENTE . 'equipo/form_agregar.php';
        } else if ($_SESSION["rol"] == '2') {
            require_once HTML_DIR_ADMIN . 'equipo/form_agregar.php';
        } else if ($_SESSION["rol"] == '3') {
            require_once HTML_DIR_DIRECTOR . 'equipo/form_agregar.php';
        } else if ($_SESSION["rol"] == '4') {
            require_once HTML_DIR_VENDEDOR . 'equipo/form_agregar.php';
        }
    }

}
