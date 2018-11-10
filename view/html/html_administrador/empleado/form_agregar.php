<?php 

include_once 'view/html/formulario_base.php';

$entidad = 'empleado';
$columnas = ['id', 'Cedula', 'Nombre', 'Apellido', 'Cargo', 'Correo',
    'Telefono', 'Telefono', 'Direccion', 'Ciudad'];
$titulos = ['Id', 'Cedula', 'Nombre', 'Apellido', 'Cargo', 'Correo',
'Telefono', 'Direccion', 'Ciudad', 'Opciones'];
$tipos = ['S', 'S', 'S', 'S', 'S', 'S','S', 'S', 'S', 'S'];



$form_agregar = new formulario_base($item, $entidad, $columnas, $titulos, $tipos);
?>