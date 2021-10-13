(function() {
  $(document).on("turbolinks:load", function() {
    $('.g-title').click(function() {
      $cssVal = {
        'display':'flex',
        'flex-wrap':'wrap'
      }
      $(this).next('.g-main').slideToggle('fast').css($cssVal);
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

    $adv = ('#ad-re').text().split(/\n/);
    $('.a1').text($adv[1]);
    $('.a2').text($adv[4]);
    $('#ad-re').text('');

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
