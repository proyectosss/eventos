<!--<div>
    <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#modalAgregaEquipo">Agregar Equipo</button>
</div>-->
<!--
<div id="modalAgregaEquipo" class="modal fade" role="dialog">
    <div class="modal-dialog">

        
        <div class="modal-content">-->
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Agregar Equipo</h4>
            </div>
            <div class="modal-body">


                <form action="index.php?c=equipo&a=agrega" id="formAgrega" method="post">
                    <input name="c" value="equipo" type="hidden"/>
                    <input name="a" value="agrega" type="hidden"/>
                    <input name="id" value="<?php echo $item['id']?>" type="hidden"/>
                    
                    <div class="form-group">
                        <label for="nombre">Nombre</label>
                        <input name="nombre" value="<?php echo $item['nombre']?>" class="form-control" id="nombre" aria-describedby="Nombre" placeholder="Nombre">
                    </div>
                    <div class="form-group">
                        <label for="descripcion">Descripción</label>
                        <input name="descripcion" value="<?php echo $item['descripcion']?>" class="form-control" id="descripcion" aria-describedby="Descripción" placeholder="Descripción">
                    </div>
                    <div class="form-group">
                        <label for="activo">Activo</label>
                        <input name="activo" value="<?php echo $item['activo']?>" class="form-control" id="activo" aria-describedby="Activo" placeholder="1">
                    </div>
                    <div class="form-group">
                        <label for="imagenPath">URL Imagen</label>
                        <input name="imagenPath" value="<?php echo $item['imagenPath']?>" class="form-control" id="imagenPath" aria-describedby="Imagen" placeholder="URL Imagen">
                    </div>
                    <div class="form-group">
                        <label for="codigo">Código</label>
                        <input name="codigo" value="<?php echo $item['codigo']?>" class="form-control" id="codigo" aria-describedby="Código" placeholder="Código">
                    </div>
                    <div class="form-group">
                        <label for="peso">Peso</label>
                        <input name="peso" value="<?php echo $item['peso']?>" class="form-control" id="peso" aria-describedby="Peso" placeholder="Peso">
                    </div>
                    <div class="form-group">
                        <label for="consumoWatts">Consumo en Watts</label>
                        <input name="consumoWatts" value="<?php echo $item['consumoWatts']?>" class="form-control" id="consumoWatts" aria-describedby="Consumo en Watts" placeholder="Consumo en Watts">
                    </div>
                    <div class="form-group">
                        <label for="dimensionAlto">Dimension Alto</label>
                        <input name="dimensionAlto" value="<?php echo $item['dimensionAlto']?>" class="form-control" id="dimensionAlto" aria-describedby="Dimension Alto" placeholder="Alto">
                    </div>
                    <div class="form-group">
                        <label for="dimensionAncho">Dimension Ancho</label>
                        <input name="dimensionAncho" value="<?php echo $item['dimensionAncho']?>" class="form-control" id="dimensionAncho" aria-describedby="Dimension Ancho" placeholder="Ancho">
                    </div>
                    <div class="form-group">
                        <label for="dimensionProfundidad">Dimension Profundida</label>
                        <input name="dimensionProfundidad" value="<?php echo $item['dimensionProfundidad']?>" class="form-control" id="dimensionProfundidad" aria-describedby="Dimension Profundidad" placeholder="Profundidad">
                    </div>
                    <div class="form-group">
                        <label for="serial">#Serial</label>
                        <input name="serial" value="<?php echo $item['serial']?>" class="form-control" id="serial" aria-describedby="Serial" placeholder="Serial">
                    </div>
                    <div class="form-group">
                        <label for="garantia">Garantia</label>
                        <input name="garantia" value="<?php echo $item['garantia']?>" class="form-control" id="garantia" aria-describedby="Garantia" placeholder="Garantia">
                    </div>
                    <div class="form-group">
                        <label for="manuales">URL manuales</label>
                        <input name="manuales" value="<?php echo $item['manuales']?>" class="form-control" id="manuales" aria-describedby="URL manuales" placeholder="URL manuales">
                    </div>
                    <div class="form-group">
                        <label for="proteccion">Protección</label>
                        <input name="proteccion" value="<?php echo $item['proteccion']?>" class="form-control" id="proteccion" aria-describedby="Protección" placeholder="Protección">
                    </div>
                    <div class="form-group">
                        <label for="categoriaId">Id de Categoria</label>
                        <input name="categoriaId" value="<?php echo $item['categoriaId']?>" class="form-control" id="categoriaId" aria-describedby="Categoria" placeholder="1">
                    </div>
                    <div class="form-group">
                        <label for="marcaId">Id de Marca</label>
                        <input name="marcaId" value="<?php echo $item['marcaId']?>" class="form-control" id="marcaId" aria-describedby="Marca" placeholder="1">
                    </div>

                    <!--<div class="form-check">
                      <input type="checkbox" class="form-check-input" id="exampleCheck1">
                      <label class="form-check-label" for="exampleCheck1">Check me out</label>
                    </div>-->
                    <div onclick="postDatos('equipo')" class="btn btn-primary">agregar</div>
                    <button type="submit" class="btn btn-primary">Submit</button>
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