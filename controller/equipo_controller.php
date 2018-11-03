<?php

/**
 * Description of tblEquipo_controller
 *
 * @author juan
 */
//require_once 'model/equipo_model.php';
require_once 'controller_base.php';
class equipo_controller extends controller_base {

    private $sesion;
    
    public function __construct() {
        $this->entidad = 'equipo';
        parent::__construct($this->entidad);
    }

    public function agrega() {
        $arr = array('r' => 0);
        $res = 0;
        if (isset($_POST['id'])) {
            $id = $_POST['id'];
            if ($id > 0) {
                $res = $this->modelo->actualiza($id, $_POST["nombre"], $_POST["descripcion"], $_POST["activo"], $_POST["imagenPath"], $_POST["codigo"], $_POST["peso"], $_POST["consumoWatts"], $_POST["dimensionAlto"], $_POST["dimensionAncho"], $_POST["dimensionProfundidad"], $_POST["serial"], $_POST["garantia"], $_POST["manuales"], $_POST["proteccion"], $_POST["categoriaId"], $_POST["marcaId"]);
            } else {
                $res = $this->modelo->agrega($_POST["nombre"], $_POST["descripcion"], $_POST["activo"], $_POST["imagenPath"], $_POST["codigo"], $_POST["peso"], $_POST["consumoWatts"], $_POST["dimensionAlto"], $_POST["dimensionAncho"], $_POST["dimensionProfundidad"], $_POST["serial"], $_POST["garantia"], $_POST["manuales"], $_POST["proteccion"], $_POST["categoriaId"], $_POST["marcaId"]);
            }
        }
        $arr = array('r' => $res);
        header('Content-type: application/json');
        echo json_encode($arr);
    }
}
