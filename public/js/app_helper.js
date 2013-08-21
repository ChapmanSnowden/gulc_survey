function js_helper(id, button) {
  $(id).on('submit', function(e) {
    e.preventDefault();
    var data = $(this).serialize();
    var creation = $.ajax({
      type: this.method,
      url: this.action,
      data: data
    });

     creation.done(function(response) {
      $(button).hide();
      $('.container').append(response);
    });
  });
}



