<?php

class vista_base {

    function __construct($data, $entidad, $columnas, $titulos, $tipos, $inicio, $cuantos) {
        ?>
        <div> <!-- class="container-fluid contenido"> -->
            <!-- div para abrir el modal -->
            <div id= "<?php echo $entidad ?>AgregaModal" class="modal fade" role="dialog"> <!--class="container">-->
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div id="contenedorModal">
                            <h1>sin contenido</h1>
                        </div>
                    </div>
                </div>
            </div>
            <div class = "modal-header">
                <center><h4><?php echo ucfirst($entidad) ?>s</h4></center>
            </div>
            <div class = "padding">
                <row>
                    <button onclick="cargaYMuestraModal('<?php echo $entidad ?>')" type = "button" class = "btn font background-color" id = "button" >
                        <span class="glyphicon glyphicon-plus-sign" aria-hidden="true"></span>
                        Agregar
                    </button>
                    <button onClick="cargaControlador('<?php echo $entidad ?>',<?php echo $inicio - $cuantos . ",$cuantos"; ?>)" type = "button" class = "btn font background-color" id = "button" >
                        <span class="glyphicon glyphicon-menu-left" aria-hidden="true"></span>
                        Anterior
                    </button>
                    <button onClick="cargaControlador('<?php echo $entidad ?>',<?php echo $inicio + $cuantos . ",$cuantos"; ?>)" type = "button" class = "btn font background-color" id = "button" > <!-- 10,10)"> -->
                        Siguiente
                        <span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span>
                    </button>
                </row>
            </div>
            <div class="table-responsive padding" >
                <table class="table">
                    <thead class="heade-table">
                        <?php
                        foreach ($titulos as $titulo):
                            echo '<th class = "font th">' . $titulo . '</th>';
                        endforeach;
                        ?>
                    </thead>
                    <tbody>
                        <?php
                        foreach ($data as $item) {
                            echo '<tr>';
                            $comb = array_combine($columnas, $tipos);
                            foreach (array_combine($columnas, $tipos) as $columna => $tipo) {
                                $valor = $item [$columna];
                                switch ($tipo) {
                                    case "IMG":
                                        echo '<td><img src="' . $valor . '" style="box-shadow:none"/></td>';
                                        break;
                                    case "FK":
                                        //TODO: implementar resolución de FK
                                        echo '<td>' . $valor . '</td>';
                                        break;
                                    case "S";
                                        echo '<td>' . $valor . '</td>';
                                        break;
                                    case "SI_NO";
                                        echo '<td><center>' . ($item['activo'] == 1 ? 'SI' : 'NO') . '</center></td>';
                                        break;
                                }

                                //<td><center><?php echo ($item['activo'] == 1 ? 'SI' : 'NO'); ></center></td>
                            }
                            ?>
                        <td>
                            <div class="row">
                                <button class = "btn btn-raised btn-primary btn-xs btne" data-title = "Edit"
                                        data-placement = "top" data-toggle = "tooltip" title = "Edit"
                                        onclick="cargaYMuestraModal('<?php echo $entidad ?>', <?php echo $item['id']; ?>)">
                                    <span class = "glyphicon glyphicon-pencil"></span>
                                </button>
                                <button class = "btn btn-raised btn-warning btn-xs btne" data-title = "ver detalle"
                                        data-placement = "top" data-toggle = "tooltip" title = "Edit"
                                        onclick = "cargaYMuestraModal('<?php echo $entidad ?>', <?php echo $item['id']; ?>)">
                                    <span class = "glyphicon glyphicon-eye-open"></span>
                                </button>
                                <button class = "btn btn-raised btn-danger btn-xs btne" data-title = "Delete" title = "Delete" data-placement = "top" data-toggle = "tooltip"
                                        onclick = "elimina('<?php echo $entidad ?>', <?php echo $item['id']; ?>);">
                                    <span class = "glyphicon glyphicon-trash" ></span>
                                </button>
                            </div>
                        </td>
                        <?php
                        echo '</tr>';
                    }
                    ?>
                    </tbody>
                </table>
            </div>
        </div>

        <?php
    }

}
?>