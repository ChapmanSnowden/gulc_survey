$(document).ready(function() {
  
  js_helper('#create_survey', '#save_survey');
  js_helper('.add_question', '.add_q');
  js_helper('.add_choice', '.add_c', '.q_button');
  js_helper('.another_q', '', '.add_c', '.another_q');

  var $questionsTemplate = $($.trim($('#add_question').html()));
  var $choicesTemplate = $($.trim($('#add_choice').html()));
  
  $('#save_survey').on('click', function(e){
    e.preventDefault();
    var $survey = $(e.target).text();
    $('#show_question').append($questionsTemplate);
  })

  $('.add_question').on('click', function(a){
    a.preventDefault();
    var $question = $(a.target).text();
    $('#show_choice').append($choicesTemplate);
  })

  
  $('#create_survey input').focus();

});
