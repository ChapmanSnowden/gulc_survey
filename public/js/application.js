$(document).ready(function() {

  $('#create_survey').on('submit', function(evt){
    evt.preventDefault();
    var survey_name = $(this).serialize();
    var survey_creation = $.ajax({
      type: this.method,
      url: this.action,
      data: survey_name
    });

    survey_creation.done(function(response) {
      $('.container').append(response);
    });

  });

  $('.add_question').on('submit', function(evt){
    evt.preventDefault();
    var question_data = $(this).serialize();
    var next_question = $.ajax({
      type: this.method,
      url: this.action,
      data: question_data
    });

    next_question.done(function(response){
      $('.container').append(response);
    });

  });

});
