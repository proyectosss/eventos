<?php 

include_once 'view/html/formulario_base.php';


$entidad = 'plan';
$columnas = ['id', 'definicion', 'naturaleza', 'observacion'];
$titulos = ['Id', 'Definicion', 'Naturaleza', 'Observacion', '----', 'Opciones'];
$tipos = ['S', 'S', 'S', 'S'];


if(isset($item)){
$form_agregar = new formulario_base($item, $entidad, $columnas, $titulos, $tipos);
}
else{
 
$form_agregar = new formulario_base(null, $entidad, $columnas, $titulos, $tipos);   
}
?>