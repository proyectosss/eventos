<?php

include_once 'view/html/vista_base.php';

class vista extends vista_base {

    function __construct($data, $entidad, $columnas, $titulos, $tipos, $inicio, $cuantos) {
        parent::__construct($data, $entidad, $columnas, $titulos, $tipos, $inicio, $cuantos);
    }

}

$entidad = 'cliente';
$columnas = ['id', 'Nombre', 'Apellido', 'Direccion', 'Correo',
    'Telefono', 'identificacion'];
$titulos = ['Id', 'Nombre', 'Apellido', 'Direccion', 'Correo', 'Telefono',
    'Identificacion','Opciones'];
$tipos = ['S', 'S', 'S', 'S', 'S', 'S','S'];

$vista = new vista($data, $entidad, $columnas, $titulos, $tipos, $inicio, $cuantos);

