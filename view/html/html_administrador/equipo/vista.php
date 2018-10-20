<div class="container-fluid contenido">
    <script type="text/javascript">
    </script>
    <div id="equipoAgregaModal" class="modal fade" role="dialog"> <!--class="container">-->
        <div class="modal-dialog">
            <div class="modal-content">
                <div id="contenedorModal">
                    <h1>sin contenido</h1>
                </div>
            </div>
        </div>
    </div>
    <div>
        <button onclick="cargaYMuestraModal('equipo', 0 )" type="button" class="btn btn-info btn-lg">Agregar Equipo</button>
    </div>
    <div class="row">
        <h3 class="text-center"> Equipos </h3>
    </div>
    <div class="table-responsive padding" >
        <table class="table">
            <thead class="heade-table">
            <th>Id</th>
            <th>Nombre</th>
            <th>Descripcion</th>


            <th>activo</th>
            <th>imagenPath</th>
            <th>codigo</th>
            <th>peso</th>
            <th>consumoWatts</th>
            <th>dimensionAlto</th>
            <th>dimensionAncho</th>
            <th>dimensionProfundidad</th>
            <th>serial</th>
            <th>garantia</th>
            <th>manuales</th>
            <th>proteccion</th>
            <th>categoriaId</th>
            <th>marcaId</th>
            <th>creadoPor</th>
            <th>creadoEn</th>
            <th>actualizadoPor</th>
            <th>actualizadoEn</th>

            </thead>
            <tbody>
                <?php foreach ($data as $item): ?>
                    <tr ondblclick="cargaYMuestraModal('equipo', <?php echo $item['id']; ?> )">
                        <td><?php echo $item['id']; ?></td>
                        <td><?php echo $item['nombre']; ?></td>
                        <td><?php echo $item['descripcion']; ?></td>
                        <td><?php echo $item['activo']; ?></td>
                        <td><?php echo $item['imagenPath']; ?></td>
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
                        <td><?php echo $item['creadoPor']; ?></td>
                        <td><?php echo $item['creadoEn']; ?></td>
                        <td><?php echo $item['actualizadoPor']; ?></td>
                        <td><?php echo $item['actualizadoEn']; ?></td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    </div>
</div>