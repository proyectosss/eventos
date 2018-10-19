<div>
    <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#modalAgregaEquipo">Agregar Equipo</button>
</div>

<div id="modalAgregaEquipo" class="modal fade" role="dialog"> <!--class="container">-->
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Agregar Equipo</h4>
            </div>
            <div class="modal-body">


                <form action="/index.php?c=equipo&a=agregar">
                    <div class="form-group">
                        <label for="nombre">Nombre</label>
                        <input class="form-control" id="nombre" aria-describedby="Nombre" placeholder="Nombre">
                    </div>
                    <div class="form-group">
                        <label for="descripcion">Descripción</label>
                        <input class="form-control" id="descripcion" aria-describedby="Descripción" placeholder="Descripción">
                    </div>
                    <div class="form-group">
                        <label for="activo">Activo</label>
                        <input class="form-control" id="activo" aria-describedby="Activo" placeholder="1">
                    </div>
                    <div class="form-group">
                        <label for="imagenPath">URL Imagen</label>
                        <input class="form-control" id="imagenPath" aria-describedby="Imagen" placeholder="URL Imagen">
                    </div>
                    <div class="form-group">
                        <label for="codigo">Código</label>
                        <input class="form-control" id="codigo" aria-describedby="Código" placeholder="Código">
                    </div>
                    <div class="form-group">
                        <label for="peso">Peso</label>
                        <input class="form-control" id="peso" aria-describedby="Peso" placeholder="Peso">
                    </div>
                    <div class="form-group">
                        <label for="consumoWatts">Consumo en Watts</label>
                        <input class="form-control" id="consumoWatts" aria-describedby="Consumo en Watts" placeholder="Consumo en Watts">
                    </div>
                    <div class="form-group">
                        <label for="dimensionAlto">Dimension Alto</label>
                        <input class="form-control" id="dimensionAlto" aria-describedby="Dimension Alto" placeholder="Alto">
                    </div>
                    <div class="form-group">
                        <label for="dimensionAncho">Dimension Ancho</label>
                        <input class="form-control" id="dimensionAncho" aria-describedby="Dimension Ancho" placeholder="Ancho">
                    </div>
                    <div class="form-group">
                        <label for="dimensionProfundidad">Dimension Profundida</label>
                        <input class="form-control" id="dimensionProfundidad" aria-describedby="Dimension Profundidad" placeholder="Profundidad">
                    </div>
                    <div class="form-group">
                        <label for="serial">#Serial</label>
                        <input class="form-control" id="serial" aria-describedby="Serial" placeholder="Serial">
                    </div>
                    <div class="form-group">
                        <label for="garantia">Garantia</label>
                        <input class="form-control" id="garantia" aria-describedby="Garantia" placeholder="Garantia">
                    </div>
                    <div class="form-group">
                        <label for="manuales">URL manuales</label>
                        <input class="form-control" id="manuales" aria-describedby="URL manuales" placeholder="URL manuales">
                    </div>
                    <div class="form-group">
                        <label for="proteccion">Protección</label>
                        <input class="form-control" id="proteccion" aria-describedby="Protección" placeholder="Protección">
                    </div>
                    <div class="form-group">
                        <label for="categoriaId">Id de Categoria</label>
                        <input class="form-control" id="categoriaId" aria-describedby="Categoria" placeholder="1">
                    </div>
                    <div class="form-group">
                        <label for="marcaId">Id de Marca</label>
                        <input class="form-control" id="marcaId" aria-describedby="Marca" placeholder="1">
                    </div>

                    <!--<div class="form-check">
                      <input type="checkbox" class="form-check-input" id="exampleCheck1">
                      <label class="form-check-label" for="exampleCheck1">Check me out</label>
                    </div>-->
                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>

                <!--</div>
                 <div class="modal-footer">
                   <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                 </div>
               </div>-->

            </div></div>