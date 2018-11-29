<?php 

include_once 'view/html/formulario_base.php';


$entidad = 'curso';
$columnas = ['id', 'curso'];
$titulos = ['Id', 'Cursos','Funciones'];
$tipos = ['S', 'S'];


$form_agregar = new formulario_base($item, $entidad, $columnas, $titulos, $tipos);
?>