// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require app
//= require_tree .
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
