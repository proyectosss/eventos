function cargaControlador(nombreDelControlador,inicio=0,cuantos=10)
{
    $.post("index.php?c=" + nombreDelControlador, {"inicio":inicio, "cuantos":cuantos})
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
function cargaYMuestraModal(nombreDelControlador,id=0) {
    cargaDiv(nombreDelControlador, 'contenedorModal', 'form_agregar', {"id": id});
    $('#'+nombreDelControlador+'AgregaModal').modal('show');
}
function postDatos(nombreDelControlador)
{
    $.post("index.php?c=" + nombreDelControlador + "&a=agrega", $('#formAgrega').serialize()).done(function (data) {
        if(data.r > 0)
        {
            alert("ok");
        }
        else
        {
            alert("error");
        }
    });
}
function elimina(nombreDelControlador,id){
    $.post("index.php?c=" + nombreDelControlador + "&a=elimina", {"id": id}).done(function (data) {
        if(data.r > 0)
        {
            alert("ok");
        }
        else
        {
            alert("error");
        }
    });
}