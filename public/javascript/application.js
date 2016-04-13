// $('#login-form').hide();
$(document).ready(function() {

  $('#login-link').on('click',function(){
    $('#signup-form').hide();
    $('#login-form').show();
  });

  $('#signup-link').on('click',function(){
    $('#signup-form').show();
    $('#login-form').hide();
  });

}); //end of doc.ready
