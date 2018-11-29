<?php

include_once 'view/html/vista_base.php';

class vista extends vista_base {

    function __construct($data, $entidad, $columnas, $titulos, $tipos, $inicio, $cuantos) {
        parent::__construct($data, $entidad, $columnas, $titulos, $tipos, $inicio, $cuantos);
    }

}

$entidad = 'tarea';
$columnas = ['id', 'descripcion', 'observacion'];
$titulos = ['Id', 'Descripcion', 'Observacion','Funciones'];
$tipos = ['S', 'S', 'S'];

$vista = new vista($data, $entidad, $columnas, $titulos, $tipos, $inicio, $cuantos);

