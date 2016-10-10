// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).on("page:change", function(e){
  $("body.goldenrod.index").css("background-color", "goldenrod");
});

$(document).on("ready", function(){
  var current_path = "goldenrod";
  page_view_count[current_path] += 1;
  $("#goldenrod .view_count.badge").text(page_view_count[current_path]);
});
