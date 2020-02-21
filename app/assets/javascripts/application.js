// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//= require jquery3
//= require popper
//= require bootstrap-sprockets
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .
//= Html <img class="expand" src="image.png">
(function($){
    $.each($('.expand'),function(i,obj){
        $(obj).on('click',function(e){
            e.preventDefault();
              var link = ($(obj).attr('src')) ? $(obj).attr('src') : $(obj).attr('href') ;
            $('.img-full-container').fadeIn();
            $('.img-full-container img').attr('src',link);
        });
    });
    // close preview
    $('.img-full-container').on('click',function(e){
        $('.img-full-container').fadeOut();
        $('.img-full-container img').attr('src','');
        var wait = setTimeout(function(){
            $('.img-full-container').css('display','none');
        },1000);
    });
  })(jQuery);