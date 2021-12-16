(function() {
  $(document).on("turbolinks:load", function() {
    $('.r-rune').mouseenter(function() {
      $top = 0;
      if ($(document).height() - $(this).offset().top < $(document).height() / 2)
        $top = -1;
      $y = $top * ($(this).find('.r-description').height() + 12) * 2;
      $cs = {
        'top': $y
      }
      $('.r-description', this).css($cs);
    }).mouseleave(function() {
      $('.r-description').removeAttr('style');
    });
  });
}).call(this);
