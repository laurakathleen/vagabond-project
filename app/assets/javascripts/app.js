
$(document).on('turbolinks:load', function(){
      $(window).on('scroll', function() {
         if ($(this).scrollTop() > 200) {
           $('#background-img').css('opacity', 0);
           $('#index-container').css('background-color', '#bdbdbd');
         } else {
            $('#background-img').css('opacity', 1);
         }
       });
      $('.modal-trigger').leanModal();
      $('input').focus(function() {
        $('input').css('border-bottom', '1px solid #d32f2f');
        $('input').css('box-shadow', '0 1px 0 0 #d32f2f');
      });
  });
