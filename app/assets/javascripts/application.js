// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
// require jquery
//= require jquery-1.7.2.min
//= require jquery_ujs
//= require twitter/bootstrap
//= require jquery.flexslider
//= require jquery.easing
//= require jquery.jcarousel
//= require jquery.jtweetsanywhere-1.3.1.min
//= require simpletabs_1.3
//= require form_elements
//= require jquery_nested_form
//= require lazybox
//= require custom

// require_tree .

$(function(){

  $('a[rel*=lazybox]').lazybox();

  function set_main_image(link) {
    $('#main_product_image').html('');
    link.clone().prependTo('#main_product_image').removeClass('hidden');
  }

  $('a.change_product_image').click(function(){
    set_main_image($( '.' + $(this).attr('id')));
    return false;
  });

  $('select.select_colors').change(function(){
    var color_id = $(this).val();
    set_main_image($( '.color_' + color_id).eq(0));
    return false;
  });

  $('select.product_select').change(function(){
    var color_id = $('select.select_colors').val();
    var size_id  = $('select.select_sizes').val();
    $.getJSON('/eshop_products/stock_count', {size_id: size_id, color_id: color_id}, function(stock){
      var actual_stock = 1;
      var stock        = parseInt(stock) || 0;
      $('select.select_quantity').html('<option>VYBRAŤ</option>');
      if (stock == 0) { return false; }
      while(actual_stock != stock) {
        $('select.select_quantity').append('<option value=' + actual_stock + '>' + actual_stock + '</option>');
        actual_stock += 1;
      }
    });
  });

});
