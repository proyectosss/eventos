<?php

include_once 'view/html/vista_base.php';

class vista extends vista_base {

    function __construct($data, $entidad, $columnas, $titulos, $tipos, $inicio, $cuantos) {
        parent::__construct($data, $entidad, $columnas, $titulos, $tipos, $inicio, $cuantos);
    }

}

$entidad = 'evento';
$columnas = ['id', 'evento', 'encargado','lugar','fecha','transportador','horaAproximadaCargue','horaAproximadaDescargue'];
$titulos = ['Id', 'Evento', 'Encargado','Lugar','Fecha','Transportador','Hora Cargue','Hora Descargue'];
$tipos = ['S', 'S', 'S','S','S','S','S','S'];;

$vista = new vista($data, $entidad, $columnas, $titulos, $tipos, $inicio, $cuantos);

