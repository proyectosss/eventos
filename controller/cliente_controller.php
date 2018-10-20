<?php

/**
 * Description of tblEquipo_controller
 *
 * @author juan
 */

require_once 'model/cliente_model.php';
class cliente_controller {
    private $sesion;
    public function __construct()
    {
        $this->cliente = new cliente_model();
    }

    public function index()
    {
        $tittle = $_SESSION["name"];
        $data   = $this->cliente->get();
        $ip     = getRealIP();
        if ($_SESSION["rol"] == '1') {
            require_once HTML_DIR_GERENTE . 'cliente/vista.php';
        } else if ($_SESSION["rol"] == '2'){
            require_once HTML_DIR_ADMIN . 'cliente/vista.php';
        }else if ($_SESSION["rol"] == '3'){
            require_once HTML_DIR_DIRECTOR . 'cliente/vista.php';
        }else if ($_SESSION["rol"] == '4'){
            require_once HTML_DIR_VENDEDOR . 'cliente/vista.php';
        }
        
        //$this->form_agregar();

    }
    public function agrega()
    {
        //$tittle = "follow-" . $_POST["nombre"];//$_SESSION["name"];
        //echo '<div>' . $tittle . '</div>';
        if(isset($_POST['id']))
        {
            $id = $_POST['id'];
            if($id>0){
            $res = $this->cliente->actualiza($id, $_POST["nombre"], $_POST["descripcion"], $_POST["activo"], $_POST["imagenPath"],
                $_POST["codigo"], $_POST["peso"], $_POST["consumoWatts"], $_POST["dimensionAlto"],
                $_POST["dimensionAncho"], $_POST["dimensionProfundidad"], $_POST["serial"], $_POST["garantia"],
                $_POST["manuales"], $_POST["proteccion"], $_POST["categoriaId"], $_POST["marcaId"]);
            
            $arr = array ('r'=>0);
            if($res == TRUE){
                $arr = array ('r'=>1);
            }
            header('Content-type: application/json');
            echo json_encode($arr);

        }else{
            $res = $this->cliente->agrega($_POST["nombre"], $_POST["descripcion"], $_POST["activo"], $_POST["imagenPath"],
                $_POST["codigo"], $_POST["peso"], $_POST["consumoWatts"], $_POST["dimensionAlto"],
                $_POST["dimensionAncho"], $_POST["dimensionProfundidad"], $_POST["serial"], $_POST["garantia"],
                $_POST["manuales"], $_POST["proteccion"], $_POST["categoriaId"], $_POST["marcaId"]);            

            $arr = array ('r'=>0);
            if($res == TRUE){
                $arr = array ('r'=>1);
            }
            header('Content-type: application/json');
            echo json_encode($arr);
        }
        }
        //$this->index();
    }
    function form_agregar()
    {
        
        $id = $_POST["id"];
        if($id>0)
        {
            $item = $this->cliente->getId($_POST["id"]);
        }
        if ($_SESSION["rol"] == '1') {
            require_once HTML_DIR_GERENTE . 'equipo/form_agregar.php';
        } else if ($_SESSION["rol"] == '2'){
            require_once HTML_DIR_ADMIN . 'equipo/form_agregar.php';
        }else if ($_SESSION["rol"] == '3'){
            require_once HTML_DIR_DIRECTOR . 'equipo/form_agregar.php';
        }else if ($_SESSION["rol"] == '4'){
            require_once HTML_DIR_VENDEDOR . 'equipo/form_agregar.php';
        }        
    }
}
