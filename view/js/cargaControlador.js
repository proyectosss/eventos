function cargaControlador(nombreDelControlador)
{
    $.get("index.php?c=" + nombreDelControlador, {})
            .done(function (data) {
                var men = document.getElementById('divDelControlador');
                men.innerHTML = data;
            });
}
function cargaDiv(nombreDelControlador, nombreDelDiv, nombreDeLaAccion, json)
{
    $.post("index.php?c=" + nombreDelControlador + "&a=" + nombreDeLaAccion, json)
            .done(function (data) {
                var men = document.getElementById(nombreDelDiv);
                men.innerHTML = data;
            });
}
function cargaYMuestraModal(nombreDelControlador,id) {
    cargaDiv(nombreDelControlador, 'contenedorModal', 'form_agregar', {"id": id});
    $('#'+nombreDelControlador+'AgregaModal').modal('show');
}
function postDatos(nombreDelControlador)
{
    $.post("index.php?c=" + nombreDelControlador + "&a=agrega", $('#formAgrega').serialize()).done(function (data) {
        if(data.r == 1)
        {
            alert("ok");
        }
        else
        {
            alert("error");
        }
    });
}