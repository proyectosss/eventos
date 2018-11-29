<?php 

include_once 'view/html/formulario_base.php';


$entidad = 'tarea';
$columnas = ['id', 'descripcion', 'observacion'];
$titulos = ['Id', 'Descripcion', 'Observaciones','Funciones'];
$tipos = ['S', 'S', 'S'];


$form_agregar = new formulario_base($item, $entidad, $columnas, $titulos, $tipos);
?>