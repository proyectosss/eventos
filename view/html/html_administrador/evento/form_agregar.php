<?php 

include_once 'view/html/formulario_base.php';


$entidad = 'evento';
$columnas = ['id', 'evento', 'encargado','lugar','fecha','transportador','horaAproximadaCargue','horaAproximadaDescargue'];
$titulos = ['Id', 'Evento', 'Encargado','Lugar','Fecha','Transportador','Hora Cargue','Hora Descargue'];
$tipos = ['S', 'S', 'S','S','S','S','S','S'];


$form_agregar = new formulario_base($item, $entidad, $columnas, $titulos, $tipos);
?>