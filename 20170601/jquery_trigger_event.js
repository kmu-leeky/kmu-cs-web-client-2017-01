$('#button-1').click(function() {
  $('#display').text("Button 1 is clicked");
  $('#clicked-ID').text($(this).attr('id'));
});

$('#button-2').click(function() {
//  You can call either trigger('click') or
//  click() method. The effect is the same
//  $('#button-1').trigger('click');
  $('#button-1').click(); 
  $('#clicked-ID').text($(this).attr('id'));
});
