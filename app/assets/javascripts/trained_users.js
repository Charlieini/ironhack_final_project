$(document).ready(function(){
  console.log("Hola!")
});


$("#myModal").on("show.bs.modal", function(e) {
  var link = $(e.relatedTarget);
  $(this).find(".modal-body").load(link.attr("href"));
});

$('.clickable-row').on(function() {
  window.document.location = $(this).data("href");
});

$('textarea').each(function(i, elem) {
  $(elem).wysihtml5({'toolbar': {'lists' : false, 'image' : false, 'link': false, 'font-styles' : false}});
});
