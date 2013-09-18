function js_helper(id, button, question_button, choice_button ) {
  $(id).submit(function(e) {
    console.log('submitted');
    e.preventDefault();
    var data = $(this).serialize();
    var creation = $.ajax({
      type: this.method,
      url: this.action,
      data: data
    });

     creation.done(function(response) {
      $(question_button).remove();
      $(choice_button).remove();
      $(button).hide();
      $('#survey_container').append(response);
    });
  });
}
