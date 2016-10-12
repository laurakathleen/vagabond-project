$(document).on('turbolinks:load', function(){
    $('.modal-trigger').leanModal();
       $(window).on('scroll', function() {
         if ($(this).scrollTop() > 200) {
           $('#background-img').css('opacity', 0);
           $('body').css('background-color', '#bdbdbd');
         } else {
            $('#background-img').css('opacity', 1);
         }
       });
  });
