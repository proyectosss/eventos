<!--<div>
    <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#modalAgregaEquipo">Agregar Equipo</button>
</div>-->
<!--
<div id="modalAgregaEquipo" class="modal fade" role="dialog">
    <div class="modal-dialog">

        
        <div class="modal-content">-->
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Agregar Categoria</h4>
            </div>
            <div class="modal-body">


                <form action="index.php?c=categoria&a=agrega" id="formAgrega" method="post">
                    <input name="c" value="categoria" type="hidden"/>
                    <input name="a" value="agrega" type="hidden"/>
                    <input name="id" value="<?php echo $item['id']?>" type="hidden"/>
                    
                    <div class="form-group">
                        <label for="nombre">Nombre</label>
                        <input name="nombre" value="<?php echo $item['nombre']?>" class="form-control" id="nombre" aria-describedby="Nombre" placeholder="Nombre">
                    </div>
                    <div class="form-group">
                        <label for="responsable">Responsable</label>
                        <input name="responsable" value="<?php echo $item['responsable']?>" class="form-control" id="responsable" aria-describedby="responsable" placeholder="responsable">
                    </div>
                    <div class="form-group">
                        <label for="descripcion">Descripción</label>
                        <input name="descripcion" value="<?php echo $item['descripcion']?>" class="form-control" id="descripcion" aria-describedby="Descripción" placeholder="Descripción">
                    </div>
                    <div class="form-group">
                        <label for="imagenPath">imagenPath</label>
                        <input name="imagenPath" value="<?php echo $item['imagenPath']?>" class="form-control" id="imagenPath" aria-describedby="imagenPath" placeholder="imagenPathn">
                    </div>
                 <!--<div class="form-check">
                      <input type="checkbox" class="form-check-input" id="exampleCheck1">
                      <label class="form-check-label" for="exampleCheck1">Check me out</label>
                    </div>-->
                    <div onclick="postDatos('categoria')" class="btn btn-primary font background-color" id = "button"><span class="glyphicon glyphicon-save" aria-hidden="true"></span>Guardar</div>
                </form>

                <!--</div>
                 <div class="modal-footer">
                   <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                 </div>
               </div>-->

            </div>
        <!--</div>
    </div>
</div>-->