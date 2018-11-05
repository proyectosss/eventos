<?php

include_once 'view/html/vista_base.php';

class vista extends vista_base {

    function __construct($data, $entidad, $columnas, $titulos, $tipos, $inicio, $cuantos) {
        parent::__construct($data, $entidad, $columnas, $titulos, $tipos, $inicio, $cuantos);
    }

}

$entidad = 'categoria';
$columnas = ['id', 'nombre', 'responsable','descripcion','imagenPath'];
$titulos = ['Id', 'Nombre', 'Responsable','Descripcion','Imagen','Funciones',];
$tipos = ['S', 'S', 'S','S','S'];

$vista = new vista($data, $entidad, $columnas, $titulos, $tipos, $inicio, $cuantos);

