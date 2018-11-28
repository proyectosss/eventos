<?php 

include_once 'view/html/formulario_base.php';

$entidad = 'empleado';
$columnas = ['id', 'cedula', 'nombre', 'apellido', 'cargo', 'correoElectronico',
    'telefono', 'direccion', 'ciudad'];
$titulos = ['Id', 'Cedula', 'Nombre', 'Apellido', 'Cargo', 'Correo',
'Telefono', 'Direccion', 'Ciudad', 'Opciones'];
$tipos = ['S', 'S', 'S', 'S', 'S', 'S','S', 'S', 'S'];



if(isset($item)){
    $form_agregar = new formulario_base($item, $entidad, $columnas, $titulos, $tipos);
    }
    else{
     
    $form_agregar = new formulario_base(null, $entidad, $columnas, $titulos, $tipos);   
    }
    ?>