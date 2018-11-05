<?php

include_once 'view/html/vista_base.php';

class vista extends vista_base {

    function __construct($data, $entidad, $columnas, $titulos, $tipos, $inicio, $cuantos) {
        parent::__construct($data, $entidad, $columnas, $titulos, $tipos, $inicio, $cuantos);
    }

}

$entidad = 'marca';
$columnas = ['id', 'nombre', 'descripcion'];
$titulos = ['Id', 'Nombre', 'Descripcion','Funciones'];
$tipos = ['S', 'S', 'S'];

$vista = new vista($data, $entidad, $columnas, $titulos, $tipos, $inicio, $cuantos);

