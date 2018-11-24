<?php 

include_once 'view/html/formulario_base.php';


$entidad = 'evento';
$columnas = ['id', 'Evento', 'Encargado','Lugar','Fecha','Transportador','HoraAproximadaCargue','HoraAproximadaDescargue'];
$titulos = ['Id', 'Evento', 'Encargado','Lugar','Fecha','Transportador','Hora Cargue','Hora Descargue'];
$tipos = ['S', 'S', 'S','S','S','S','S','S'];


$form_agregar = new formulario_base($item, $entidad, $columnas, $titulos, $tipos);
?>