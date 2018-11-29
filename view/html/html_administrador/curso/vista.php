<?php

include_once 'view/html/vista_base.php';

class vista extends vista_base {

    function __construct($data, $entidad, $columnas, $titulos, $tipos, $inicio, $cuantos) {
        parent::__construct($data, $entidad, $columnas, $titulos, $tipos, $inicio, $cuantos);
    }

}

$entidad = 'curso';
$columnas = ['id', 'curso'];
$titulos = ['Id', 'Cursos', 'Funciones'];
$tipos = ['S', 'S'];

$vista = new vista($data, $entidad, $columnas, $titulos, $tipos, $inicio, $cuantos);

