// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require private_pub

//= require jquery_nested_form
//= require turbolinks
//= require tonleve
//= require_tree .


$(function () {
  $('.btn').tooltip()
})

  
window.onload=function(){
//When user clicks link
$('#indexMessageModal').on('shown.bs.modal', function () {
    var elem = document.getElementById('reverse_scroll');
    elem.scrollTop = elem.scrollHeight;
});
}



jQuery(function() {
  var states;
  states = $('#product_product_sub_category_id').html();
  console.log(states);
  return $('#product_product_category_id').change(function() {
    var country, options;
    country = $('#product_product_category_id :selected').text();
    options = $(states).filter("optgroup[label=" + country + "]").html();
    console.log(options);
    if (options) {
      return $('#product_product_sub_category_id').html(options);
    } else {
      return $('#product_product_sub_category_id').empty();
    }
  });
});

$('a.conversation').click(function (e) {
  e.preventDefault();
});


