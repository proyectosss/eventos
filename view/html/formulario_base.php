<?php

class formulario_base {

function __construct($item, $entidad, $columnas, $titulos, $tipos) {
    

?>
<div class="modal-header">
    <button type="button" class="close" data-dismiss="modal">&times;</button>
    <h4 class="modal-title">Agregar <?php echo $entidad?></h4>
</div>
<div class="modal-body">


    <form action="index.php?c=<?php echo $entidad?>&a=agrega" id="formAgrega" method="post">
        <input name="c" value="<?php echo $entidad?>" type="hidden"/>
        <input name="a" value="agrega" type="hidden"/>
        <input name="id" value="<?php if($item!=null){ echo $item['id'];}?>" type="hidden"/>

        
        
        <?php
                            foreach (array_combine($columnas, $tipos) as $columna => $tipo) {
                                if($columna == 'id'){
                                    
                                }
                                else
                                {
                                $valor = $item [$columna];
                                echo '<div class="form-group">';
                                echo '<label for="' . $columna . '">' . $columna . '</label>';
                                echo '<input name="'. $columna . '" value="' . $valor . '" class="form-control" id="' . $columna . '" aria-describedby="' . $columna . '" placeholder="' . $columna . '">';
                                
                                /*switch ($tipo) {
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
                                }*/
                                echo '</div>';
                                }
                            }
        ?>
        

        <!--<div class="form-check">
          <input type="checkbox" class="form-check-input" id="exampleCheck1">
          <label class="form-check-label" for="exampleCheck1">Check me out</label>
        </div>-->
        <div onclick="postDatos('<?php echo $entidad?>')" class="btn btn-primary font background-color" id = "button"><span class="glyphicon glyphicon-save" aria-hidden="true"></span>Guardar</div>
    </form>
</div>

<?php
}
}