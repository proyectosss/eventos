<?php

include_once 'view/html/vista_base.php';

class vista extends vista_base {

    function __construct($data, $entidad, $columnas, $titulos, $tipos, $inicio, $cuantos) {
        parent::__construct($data, $entidad, $columnas, $titulos, $tipos, $inicio, $cuantos);
    }

}

$entidad = 'empleado';
$columnas = ['id', 'cedula', 'nombre', 'apellido', 'cargo', 'correoElectronico',
    'telefono', 'direccion', 'ciudad'];
$titulos = ['Id', 'Cedula', 'Nombre', 'Apellido', 'Cargo', 'Correo',
'Telefono', 'Direccion', 'Ciudad', 'Opciones'];
$tipos = ['S', 'S', 'S', 'S', 'S', 'S','S', 'S', 'S',];

$vista = new vista($data, $entidad, $columnas, $titulos, $tipos, $inicio, $cuantos);

