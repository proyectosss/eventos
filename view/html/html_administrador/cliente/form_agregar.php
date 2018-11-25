<?php 

include_once 'view/html/formulario_base.php';


$entidad = 'cliente';
$columnas = ['id', 'nombre', 'apellido', 'direccion', 'correo',
    'telefono', 'identificacion'];
$titulos = ['Id', 'Nombre', 'Apellido', 'Direccion', 'Correo', 'Telefono',
    'Identificacion','Opciones'];
$tipos = ['S', 'S', 'S', 'S', 'S', 'S','S'];


if(isset($item)){
$form_agregar = new formulario_base($item, $entidad, $columnas, $titulos, $tipos);
}
else{
 
$form_agregar = new formulario_base(null, $entidad, $columnas, $titulos, $tipos);   
}
?>