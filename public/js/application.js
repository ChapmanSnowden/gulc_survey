$(document).ready(function() {
//create an event handler on the create user submit
//find email and validate
  // produce erros messages
//find password and validate
  // produce erros messages
  // function checkOrRemoveErrorForEmail(){

  $('#create_form').on('submit', function(event) {
    
    $('#errors li').remove();

     var errors = []

     var email = $('#create_form input[name="email"]').val();
     var password = $('#create_form input[name="password"]').val();
     
    
    if ((/(.+)@(.+){2,}\.(.+){2,}/).test(email) === false) {
      $('#errors').append("<li> Must be a valid email </li>");
      errors.push("Bad email");
    };
 
    if ( (/[\d]/).test(password) === false) {
      $('#errors').append("<li> Password must have at least 1 numeric character </li>");
      errors.push("No numbers");
    };

    if ( (/[A-Z]/).test(password) === false) {
      $('#errors').append("<li> Password must have at least 1 uppercase letter </li>");
      errors.push("No uppercase");
    };

    if ( (/.{8,}/).test(password) === false) {
      $('#errors').append("<li> Password must have at least 8 characters </li>");
      errors.push("Too short");
    };
    
    if (errors.length > 0){
      event.preventDefault();
    };

  });
});
