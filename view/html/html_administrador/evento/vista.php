<?php

include_once 'view/html/vista_base.php';

class vista extends vista_base {

    function __construct($data, $entidad, $columnas, $titulos, $tipos, $inicio, $cuantos) {
        parent::__construct($data, $entidad, $columnas, $titulos, $tipos, $inicio, $cuantos);
    }

}

$entidad = 'evento';
$columnas = ['id', 'Evento', 'Encargado','Lugar','Fecha','Transportador','HoraAproximadaCargue','HoraAproximadaDescargue'];
$titulos = ['Id', 'Evento', 'Encargado','Lugar','Fecha','Transportador','Hora Cargue','Hora Descargue'];
$tipos = ['S', 'S', 'S','S','S','S','S','S'];;

$vista = new vista($data, $entidad, $columnas, $titulos, $tipos, $inicio, $cuantos);

