$(document).ready(function() {

  $('#create_survey').on('submit', function(e) {
    e.preventDefault();
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

  $('.add_question').on('submit', function(e) {
    e.preventDefault();
    var question_data = $(this).serialize();
    var question_creation = $.ajax({
      type: this.method,
      url: this.action,
      data: question_data
    });

    question_creation.done(function(response) {
      $('.container').append(response);
    });
  });

  $('.add_choice').on('submit', function(e) {
    e.preventDefault();
    var choice_data = $(this).serialize();
    var choice_creation = $.ajax({
      type: this.method,
      url: this.action,
      data: choice_data
    });

    choice_creation.done(function(response) {
      $('.another_q').remove();
      $('.another_choice').remove();
      $('.container').append(response);
    });
  });

  $('.another_q').on('submit', function(e) {
    e.preventDefault();

    var anotherQ = $.ajax({
      type: this.method,
      url: this.action,
    });

    anotherQ.done(function(response) {
      $('.container').append(response);
    });
  });

});
