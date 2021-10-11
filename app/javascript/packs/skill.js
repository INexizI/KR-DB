(function() {
  $(document).on("turbolinks:load", function() {
    $('.s-image').mouseenter(function() {
      $left = 0;
      if ($(document).width() - $(this).offset().left < $(document).width() / 2)
      $left = -1;
      $x = $left * 430;
      $cs = {
        'left': $x,
        'display': 'grid'
      }
      $('.s-desc', this).css($cs);
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
