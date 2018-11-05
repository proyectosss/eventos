<!--<div>
    <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#modalAgregaEquipo">Agregar Equipo</button>
</div>-->
<!--
<div id="modalAgregaEquipo" class="modal fade" role="dialog">
    <div class="modal-dialog">

        
        <div class="modal-content">-->
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Agregar Empleado</h4>
            </div>
            <div class="modal-body">


                <form action="index.php?c=empleado&a=agrega" id="formAgrega" method="post">
                    <input name="c" value="empleado" type="hidden"/>
                    <input name="a" value="agrega" type="hidden"/>
                    <input name="id" value="<?php echo $item['id']?>" type="hidden"/>
                    
                    <div class="form-group">
                        <label for="Cedula">Cedula</label>
                        <input name="Cedula" value="<?php echo $item['Cedula']?>" class="form-control" id="Cedula" aria-describedby="Cedula" placeholder="Cedula">
                    </div>
                    <div class="form-group">
                        <label for="Nombre">Nombre</label>
                        <input name="Nombre" value="<?php echo $item['Nombre']?>" class="form-control" id="Nombre" aria-describedby="Nombre" placeholder="Nombre">
                    </div>
                    <div class="form-group">
                        <label for="Apellido">Apellido</label>
                        <input name="Apellido" value="<?php echo $item['Apellido']?>" class="form-control" id="Apellido" aria-describedby="Apellido" placeholder="Apellido">
                    </div>
                    <div class="form-group">
                        <label for="Cargo">Cargo</label>
                        <input name="Cargo" value="<?php echo $item['Cargo']?>" class="form-control" id="Cargo" aria-describedby="Cargo" placeholder="Cargo">
                    </div>                  
                    <div class="form-group">
                        <label for="Correo">Correo</label>
                        <input name="Correo" value="<?php echo $item['Correo']?>" class="form-control" id="Correo" aria-describedby="Correo" placeholder="Correo">
                    </div>
                    <div class="form-group">
                        <label for="Telefono">Telefono</label>
                        <input name="Telefono" value="<?php echo $item['Telefono']?>" class="form-control" id="Telefono" aria-describedby="Telefono" placeholder="Telefono">
                    </div>
                    <div class="form-group">
                        <label for="Direccion">Direccion</label>
                        <input name="Direccion" value="<?php echo $item['Direccion']?>" class="form-control" id="Direccion" aria-describedby="Direccion" placeholder="Direccion">
                    </div>
                    <div class="form-group">
                        <label for="Ciudad">Ciudad</label>
                        <input name="Ciudad" value="<?php echo $item['Ciudad']?>" class="form-control" id="Ciudad" aria-describedby="Ciudad" placeholder="Ciudad">
                    </div>
                    <!--<div class="form-check">
                      <input type="checkbox" class="form-check-input" id="exampleCheck1">
                      <label class="form-check-label" for="exampleCheck1">Check me out</label>
                    </div>-->
                    <div onclick="postDatos('empleado')" class="btn btn-primary font background-color" id = "button"><span class="glyphicon glyphicon-save" aria-hidden="true"></span>Guardar</div>
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