<div style="background-color: " class="container-fluid contenido">
    <div class="row">
        <div id="divDelControlador">
            <h1>Bienvenido administrador de Sistema!</h1><br/>        
            <?php
echo nl2br("nombre: " . $_SESSION["name"] . "\n");
echo nl2br("rol: " . $_SESSION["rol"] . "\n");
echo nl2br("nombre servidor: " . $_SERVER['SERVER_NAME'] . "\n");
echo nl2br("La dirección IP del servidor donde se está ejecutando actualmente el script: " . $_SERVER['SERVER_ADDR'] . "\n");
echo nl2br("La dirección IP desde la cual está viendo la página actual el usuario.: " . $_SERVER['REMOTE_ADDR'] . "\n");

echo nl2br("La dirección IP real: " . $ip . "\n");

?>
        </div>
    </div>
</div>
