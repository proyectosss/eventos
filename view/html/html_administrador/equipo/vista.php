<div> <!-- class="container-fluid contenido"> -->
    <!-- div para abrir el modal -->
    <div id="equipoAgregaModal" class="modal fade" role="dialog"> <!--class="container">-->
        <div class="modal-dialog">
            <div class="modal-content">
                <div id="contenedorModal">
                    <h1>sin contenido</h1>
                </div>
            </div>
        </div>
    </div>
    <div class = "modal-header">
        <center><h4>Equipos</h4></center>
    </div>
    <div class = "padding">
        <row>
        <button onclick="cargaYMuestraModal('equipo')" type = "button" class = "btn font background-color" id = "button" >
            <span class="glyphicon glyphicon-plus-sign" aria-hidden="true"></span>
            Agregar
        </button>
        <button onClick="cargaControlador('equipo',<?php echo $inicio - $cuantos . ",$cuantos"; ?>)" type = "button" class = "btn font background-color" id = "button" >
            <span class="glyphicon glyphicon-menu-left" aria-hidden="true"></span>
            Anterior
        </button>
        <button onClick="cargaControlador('equipo',<?php echo $inicio + $cuantos . ",$cuantos"; ?>)" type = "button" class = "btn font background-color" id = "button" > <!-- 10,10)"> -->
            Siguiente
            <span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span>
        </button>
        </row>
    </div>
    <div class="table-responsive padding" >
        <table class="table">
            <thead class="heade-table">
            <th class = "font th">Id</th>
            <th class = "font th">Nombre</th>
            <th class = "font th">Descripcion</th>
            <th class = "font th">Activo</th>
            <th class = "font th">Imagen</th>
            <th class = "font th">Codigo</th>
            <th class = "font th">Peso</th>
            <th class = "font th">Watts</th>
            <th class = "font th">Alto</th>
            <th class = "font th">Ancho</th>
            <th class = "font th">Prof</th>
            <th class = "font th">Serial</th>
            <th class = "font th">Garantia</th>
            <th class = "font th">Manuales</th>
            <th class = "font th">Proteccion</th>
            <th class = "font th">Categoria</th>
            <th class = "font th">Marca</th>
            <th class = "font th">Opciones</th>
            </thead>
            <tbody>
                <?php foreach ($data as $item): ?>
                    <tr>
                        <td><?php echo $item['id']; ?></td>
                        <td><?php echo $item['nombre']; ?></td>
                        <td><?php echo $item['descripcion']; ?></td>
                        <td><center><?php echo ($item['activo'] == 1 ? 'SI' : 'NO'); ?></center></td>
                        <td><img src="<?php echo $item['imagenPath']; ?>" style="box-shadow:none"/></td>
                        <td><?php echo $item['codigo']; ?></td>
                        <td><?php echo $item['peso']; ?></td>
                        <td><?php echo $item['consumoWatts']; ?></td>
                        <td><?php echo $item['dimensionAlto']; ?></td>
                        <td><?php echo $item['dimensionAncho']; ?></td>
                        <td><?php echo $item['dimensionProfundidad']; ?></td>
                        <td><?php echo $item['serial']; ?></td>
                        <td><?php echo $item['garantia']; ?></td>
                        <td><?php echo $item['manuales']; ?></td>
                        <td><?php echo $item['proteccion']; ?></td>
                        <td><?php echo $item['categoriaId']; ?></td>
                        <td><?php echo $item['marcaId']; ?></td>
                        <td>
                        <row>
                            <button class = "btn btn-raised btn-primary btn-xs btne" data-title = "Edit"
                                    data-placement = "top" data-toggle = "tooltip" title = "Edit"
                                    onclick="cargaYMuestraModal('equipo', <?php echo $item['id']; ?>)">
                                <span class = "glyphicon glyphicon-pencil"></span>
                            </button>
                        </row>
                        <row>
                            <button class = "btn btn-raised btn-warning btn-xs btne" data-title = "ver detalle"
                                    data-placement = "top" data-toggle = "tooltip" title = "Edit"
                                    onclick = "location = 'index.php?c=holding&a=vista_datos&cedula=<?php echo $dataclient['cedula']; ?>'">
                                <span class = "glyphicon glyphicon-eye-open"></span>
                            </button>
                        </row>
                        <row>
                            <button class = "btn btn-raised btn-danger btn-xs btne" data-title = "Delete" title = "Delete" data-placement = "top" data-toggle = "tooltip"
                                    onclick = "elimina('equipo', <?php echo $item['id']; ?>);">
                                <span class = "glyphicon glyphicon-trash" ></span>
                            </button>
                        </row>
                        </td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    </div>
</div>