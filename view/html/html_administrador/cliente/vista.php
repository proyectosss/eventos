<div> <!--class = "modal-header">-->
    <button type = "button" class = "close" data-dismiss = "modal" aria-label = "Close" name = "button">
        <span aria-hidden = "true">&times;
        </span>
    </button>
    <!--Header de la ventana-->
    <div class = "modal-header">

        <h4 class = "modal-title">Clientes</h4>
    </div>
    <div class = "padding">
        <button type = "button" class = "btn font background-color glyphicon glyphicon-plus " id = "button" >
            Agregar
        </button>
    </div>
    <!--Contenido de la ventanda-->
    <div class = "modal-body">
        <div class = "table-responsive padding">
            <table id = "dataTables" class = "table tablesorter table-bordred table-striped table-striped">
                <thead class = "heade-table">
                <th class = "font th">Cédula</th>
                <th class = "font th">Nombre</th>
                <th class = "font th">Apellido</th>
                <th class = "font th">Direcion</th>
                <th class = "font th">Teléfono 1</th>
                <th class = "font th">Celular</th>
                <th class = "font th">Email</th>
                <th class = "font th">Pasaporte</th>
                <th class = "font th">Opciones</th>
                </thead>

                <tbody>
                    <tr>
                        <td>
                            <button class = "btn btn-raised btn-primary btn-xs btne" data-title = "Edit"
                                    data-placement = "top" data-toggle = "tooltip" title = "Edit"
                                    onclick = "location = 'index.php?c=clientes&a=update&cedula=<?php echo $dataclient['cedula']; ?>'">
                                <span class = "glyphicon glyphicon-pencil"></span>
                            </button>
                        </td>
                        <td>

                            <button class = "btn btn-raised btn-warning btn-xs btne" data-title = "ver detalle"
                                    data-placement = "top" data-toggle = "tooltip" title = "Edit"
                                    onclick = "location = 'index.php?c=holding&a=vista_datos&cedula=<?php echo $dataclient['cedula']; ?>'">
                                <span class = "glyphicon glyphicon-eye-open"></span>
                            </button>
                        </td>
                        <td>

                            <button class = "btn btn-raised btn-danger btn-xs btne" data-title = "Delete" title = "Delete" data-placement = "top" data-toggle = "tooltip"
                                    onclick = "Eliminar('<?php echo $dataclient['cedula']; ?>', '<?php echo $dataclient['cedula']; ?>', 'index.php?c=clientes&a=delete');">
                                <span class = "glyphicon glyphicon-trash" ></span>
                            </button>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>