<?php

include_once 'view/html/vista_base.php';

class vista extends vista_base {

    function __construct($data, $entidad, $columnas, $titulos, $tipos, $inicio, $cuantos) {
        parent::__construct($data, $entidad, $columnas, $titulos, $tipos, $inicio, $cuantos);
    }

}

$entidad = 'equipo';
$columnas = ['id', 'nombre', 'descripcion', 'activo', 'imagenPath',
    'codigo', 'peso', 'consumoWatts', 'dimensionAlto', 'dimensionAncho',
    'dimensionProfundidad', 'serial', 'garantia', 'manuales', 'proteccion',
    'categoriaId', 'marcaId'];
$titulos = ['Id', 'Nombre', 'Descripcion', 'Activo', 'Imagen', 'Codigo',
    'Peso', 'Watts', 'Alto', 'Ancho', 'Prof', 'Serial', 'Garantia', 'Manuales',
    'Proteccion', 'Categoria', 'Marca', 'Opciones'];
$tipos = ['S', 'S', 'S', 'SI_NO', 'IMG', 'S',
    'S', 'S', 'S', 'S', 'S', 'S', 'S', 'S',
    'S', 'FK', 'FK'];

$vista = new vista($data, $entidad, $columnas, $titulos, $tipos, $inicio, $cuantos);

