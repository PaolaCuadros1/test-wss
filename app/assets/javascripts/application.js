//= require jquery
//= require jquery_ujs
//= require dataTables/jquery.dataTables
//= require dataTables/bootstrap/2/jquery.dataTables.bootstrap
//= require dataTables/jquery.dataTables
//= require turbolinks
//= require materialize-sprockets

$(document).on('turbolinks:load', function() {
   $('#datatable').DataTable({
     responsive: true,
     "iDisplayLength": 5,
     "aLengthMenu": [[5, 10, 15, -1], [5, 10, 15, "All"]],
     language: {
        processing:     "En curso...",
        search:         "Buscar",
        lengthMenu:    "Mostrar _MENU_ ",
        info:           "Mostrar _START_ a _END_ de _TOTAL_ ",
        infoEmpty:      "Mostrar 0 a 0 de 0 ",
        infoFiltered:   "(Filtro de _MAX_ en total)",
        infoPostFix:    "",
        loadingRecords: "Cargando...",
        zeroRecords:    "No hay coincidencias",
        emptyTable:     "No hay nunguna disponible.",
        paginate: {
                    first:      "Primero",
                    previous:   "Antes",
                    next:       "Después",
                    last:       "Pasado"
          },
          aria: {
                    sortAscending:  ": Habilitado para ordenar la columna en orden ascendente",
                    sortDescending: ": Habilitado para ordenar la columna en orden descendente"
          }
      }
  });
});

function chageCountry( selector, url, options ) {
}