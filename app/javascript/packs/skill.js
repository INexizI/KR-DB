(function() {
  $(document).on("turbolinks:load", function() {
    $('.s-image').mouseenter(function() {
      $left = 0;
      $top = 0;
      if ($(document).width() - $(this).offset().left < $(document).width() / 2)
        $left = -1;
      if ($(document).height() - $(this).offset().top < $(document).height() / 2)
        $top = -1;
      $x = $left * 308;
      $y = $top * ($(this).find('.s-desc').height() + 60)
      $css = {
        'left': $x,
        'top': $y,
        'display': 'grid'
      }
      $('.s-desc', this).css($css);
    }).mouseleave(function() {
      $('.s-desc').removeAttr('style');
    });
    $('.c-stat .r-stat').find('p').each(function() {
      $zeroStat = $(this).text();
      if ($zeroStat === '0')
        $(this).hide().prev('p').hide();
    });
  });
}).call(this);
