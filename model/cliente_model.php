<?php

/**
 * Description of equipo_model
 *
 * @author juan
 */
class cliente_model {

//put your code here
    private $DB;
    private $cliente;

    public function __construct() {
        $this->DB = conexion::getConnection();
        $this->cliente = array();
    }

    public function get() {
        $query = $this->DB->query("select * from tblEquipo");
        while ($fila = $query->fetch_assoc()) {
            $this->cliente[] = $fila;
        }
        return $this->cliente;
    }

    public function getId($id) {
        $queryString = "select * from tblEquipo where id=" . $id;
        $query = $this->DB->query($queryString);
        while ($fila = $query->fetch_assoc()) {
            return $fila;
        }
        return NULL;
    }

    public function agrega($nombre, $descripcion, $activo, $imagenPath, $codigo, $peso, $consumoWatts, $dimensionAlto, $dimensionAncho, $dimensionProfundidad, $serial, $garantia, $manuales, $proteccion, $categoriaId, $marcaId) {
        $queryString = "insert into tblEquipo("
                . "nombre, descripcion, activo, imagenPath, codigo, peso, consumoWatts, dimensionAlto"
                . ", dimensionAncho, dimensionProfundidad, serial, garantia, manuales"
                . ", proteccion, categoriaId, marcaId) values ("
                . "  '$nombre', '$descripcion', $activo, '$imagenPath', '$codigo', $peso"
                . ", $consumoWatts, $dimensionAlto, $dimensionAncho, $dimensionProfundidad"
                . ", '$serial', '$garantia', '$manuales', '$proteccion', $categoriaId"
                . ", $marcaId)";
        return $this->DB->query($queryString);
    }

}
