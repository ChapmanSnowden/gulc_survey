$(document).ready(function() {

$('.jumbotron form').on('submit', function(event) {
    console.log('hi');
    $('#errors li').remove();

     var errors = []

     var password = $('#exampleInputPassword1').val();
         
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
