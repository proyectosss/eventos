<?php 

include_once 'view/html/formulario_base.php';


$entidad = 'marca';
$columnas = ['id', 'nombre', 'descripcion'];
$titulos = ['Id', 'Nombre', 'Descripcion','Funciones'];
$tipos = ['S', 'S', 'S'];

if(isset($item)){
 $form_agregar = new formulario_base($item, $entidad, $columnas, $titulos, $tipos);
}
else{
      $form_agregar = new formulario_base(null, $entidad, $columnas, $titulos, $tipos);   
}
?>