<?php 

include_once 'view/html/formulario_base.php';

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



$form_agregar = new formulario_base($item, $entidad, $columnas, $titulos, $tipos);
?>