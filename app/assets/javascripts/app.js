$(document).ready(function(){
    /* console.log('script running');
     $('.parallax').parallax();

     var options = [
         {selector: '#explore-container', offset: 200, callback: scrollCallback }
       ];
       Materialize.scrollFire(options);*/
       var scrollTop = $(window).scrollTop;
       var opacity = 1;
       $(window).on('scroll', function() {
         //console.log('scrolling');
         var newScrollTop = $(this).scrollTop();
         if (newScrollTop > scrollTop) {
           if (opacity >= 1) {
             opacity = 1;
           }
           opacity = opacity - 0.1;
           $('#background-img').css('opacity', opacity);

         } else {
           if (opacity <= 0) {
             opacity = 0;
           }
           opacity = opacity + 0.1;
           $('#background-img').css('opacity', opacity);
         }

         scrollTop = newScrollTop;
       });
});

/*function scrollCallback() {
  var opacity = $('#background-img').css('opacity');
  //$('#background-img').addClass('animated fadeOutDown');
  //$('body').css('background-color', '#ffcdd2');
  console.log(opacity);
  $('#background-img').css('opacity', opacity - .2);
}*/
