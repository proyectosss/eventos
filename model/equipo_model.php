<?php

/**
 * Description of equipo_model
 *
 * @author juan
 */
class equipo_model {

//put your code here
    private $DB;
    private $equipo;

    public function __construct() {
        $this->DB = conexion::getConnection();
        $this->equipos = array();
    }

    public function get() {
        $query = $this->DB->query("select * from tblEquipo");
        while ($fila = $query->fetch_assoc()) {
            $this->equipos[] = $fila;
        }
        return $this->equipos;
    }

    public function agrega(
    $nombre, $descripcion, $activo, $imagenPath, $codigo, $peso, $consumoWatts, $dimensionAlto, $dimensionAncho, $dimensionProfundidad, $serial, $garantia, $manuales, $proteccion, $categoriaId, $marcaId
    ) {
        $queryString = "insert into tblEquipo("
                . ""
. "nombre"
. ", descripcion"
. ", activo"
. ", imagenPath"
. ", codigo"
. ", peso"
. ", consumoWatts"
. ", dimensionAlto"
. ", dimensionAncho"
. ", dimensionProfundidad"
. ", serial"
. ", garantia"
. ", manuales"
. ", proteccion"
. ", categoriaId"
. ", marcaId"
. ") values ("
                
. "  '$nombre'"
. ", '$descripcion'"
. ", $activo"
. ", '$imagenPath'"
. ", '$codigo'"
. ", $peso"
. ", $consumoWatts"
. ", $dimensionAlto"
. ", $dimensionAncho"
. ", $dimensionProfundidad"
. ", '$serial'"
. ", '$garantia'"
. ", '$manuales'"
. ", '$proteccion'"
. ", $categoriaId"
. ", $marcaId"
. ")";
        $query = $this->DB->query($queryString);
        /*while ($fila = $query->fetch_assoc()) {
            //$this->equipos[] = $fila;
            echo $fila;
        }*/
        //echo $queryString;
    }

}
