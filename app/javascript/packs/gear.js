(function() {
  $(document).on("turbolinks:load", function() {
    $('.g-title').click(function() {
      $cssVal = {
        'display':'flex',
        'flex-wrap':'wrap'
      }
      $(this).next('.g-main').fadeToggle('fast').css($cssVal);
    });
    $('.g-image').mouseenter(function() {
      $left = 0;
      if ($(document).width() - $(this).offset().left < $(document).width() / 2)
      $left = -1;
      $x = $left * 410;
      $cs = {
        'left': $x,
        'display': 'grid'
      }
      $('.g-desc', this).css($cs);
    }).mouseleave(function() {
      $('.g-desc').removeAttr('style');
    });
    $('.g-sw-desc').mouseenter(function() {
      $left = 0;
      if ($(document).width() - $(this).offset().left < $(document).width() / 2)
      $left = -1;
      $x = $left * 672;
      $cs = {
        'left': $x,
        'display': 'grid'
      }
      $('.g-desc', this).css($cs);
    }).mouseleave(function() {
      $('.g-desc').removeAttr('style');
    });

    $('.g-sw-desc').each(function() {
      $ap = $(this).find('#ap').text().split(/\n/);
      $(this).find('.a1').text($ap[1]);
      $(this).find('.a2').text($ap[4]);
      $(this).find('#ap').text('');
    })

    $('.c-stat .r-stat').find('p').each(function() {
      $zeroStat = $(this).text();
      if ($zeroStat === '0')
        $(this).hide().prev('p').hide();
    });
    $('label').click(function() {
      $(this).parent().find('label').removeClass('active');
      $(this).addClass('active');
    });
  });
}).call(this);
