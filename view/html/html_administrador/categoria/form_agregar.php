<?php 

include_once 'view/html/formulario_base.php';


$entidad = 'categoria';
$columnas = ['id', 'nombre', 'responsable','descripcion','imagenPath'];
$titulos = ['Id', 'Nombre', 'Responsable','Descripcion','Imagen','Funciones',];
$tipos = ['S', 'S', 'S','S','S'];


$form_agregar = new formulario_base($item, $entidad, $columnas, $titulos, $tipos);
?>