(function() {
  $(document).on("turbolinks:load", function() {
    $('.r-title').click(function() {
      $cssVal = {
        'display':'flex',
        'flex-wrap':'wrap'
      }
      $(this).next('.r-main').slideToggle('fast').css($cssVal);
    });
    $('label').click(function() {
      $(this).parent().find('label').removeClass('active');
      $(this).addClass('active');
    });
  });
}).call(this);
