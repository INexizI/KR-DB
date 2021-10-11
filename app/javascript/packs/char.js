(function() {
  $(document).on("turbolinks:load", function() {
    $('.h-title').click(function() {
      var cssVal = {
        'display': 'flex',
        'flex-wrap': 'wrap'
      }
      $(this).next('.h-main').fadeToggle('fast').css(cssVal);
    });
    $('.c-perk-img').mouseenter(function() {
      $left = 0;
      $top = 0;
      if ($(document).width() - $(this).offset().left < $(document).width() / 2)
        $left = -1;
      if ($(document).height() - $(this).offset().top < $(document).height() / 2)
        $top = -1;
      $x = $left * 490;
      $y = $top * 50;
      $cs = {
        'left': $x,
        'top':$y,
        'display': 'grid'
      }
      $('.p-description', this).css($cs);
      $('.g-description', this).css($cs);
      $xSW = $left * 490;
      $ySW = $top * 150;
      $csSW = {
        'left': $xSW,
        'top':$ySW,
        'display': 'grid'
      }
      $('.s-description', this).css($csSW);
    }).mouseleave(function() {
      $('.s-description').hide();
      $('.p-description').hide();
      $('.g-description').hide();
    });
    $('.char').css('background-image', 'url("/images/media/heroes/' + $('title').text() + '/Loading Screen.png")');
    // $bg = {
    //   'background-image': 'url("/images/media/background/bg' + Math.trunc(1 + Math.random() * 31) + '.png")',
    //   'min-height': '100vh',
    //   'backdrop-filter': 'blur(3px) saturate(0.3) grayscale(0.5) opacity(0.8)'
    // }
    // $('#bg').parent().css($bg);
    // $('#bg').parent().css('background-image', 'url("/images/media/background/bg' + Math.trunc(1 + Math.random() * 31) + '.png")');
    $('.c-stat .r-stat').find('#s-val').each(function() {
      $zeroStat = $(this);
      $softcap = $($zeroStat).prev().text();
      $zeroStat.text() === '0' ? $(this).parent().css('height', 0).children().hide() : $(this).parent().css('height', '25px').children().show();
      $(this).find('#plsSt1').text() === '' ? $softn = $zeroStat.text() : $softn = $(this).find('#plsSt1').text();
      if (($softcap == 'Crit') || ($softcap == 'ACC'))
        $softn > 1500 ? $(this).next('#s-per').text((1500 + ($softn - 1500)*0.5)/10 + '%') : $(this).next('#s-per').text($softn/10 + '%');
      else if (($softcap == 'P.Block') || ($softcap == 'M.Block') || ($softcap == 'P.Dodge') || ($softcap == 'M.Dodge') || ($softcap == 'Lifesteal') || ($softcap == 'P.Crit Resistance') || ($softcap == 'M.Crit Resistance'))
        $softn > 500 ? $(this).next('#s-per').text((500 + ($softn - 500)*0.5)/10 + '%') : $(this).next('#s-per').text($softn/10 + '%');
      else if ($softcap == 'CC Resist')
        $softn > 1000 ? $(this).next('#s-per').text((1000 + ($softn - 1000)*0.5)/10 + '%') : $(this).next('#s-per').text($softn/10 + '%');
      else if (($softcap == 'Penetration') || ($softcap == 'P.Tough') || ($softcap == 'M.Tough'))
        $softn > 450 ? $(this).next('#s-per').text(((450 + ($softn - 450)*0.409)/10).toFixed(1) + '%') : $(this).next('#s-per').text($softn/10 + '%');
      else if ($softcap == 'ATK Spd')
        $softn > 1600 ? $(this).next('#s-per').text((1600 + ($softn - 1600)*0.5)/10 + '%') : $(this).next('#s-per').text($softn/10 + '%');
      else if (($softcap == 'P.Block DEF') || ($softcap == 'M.Block DEF'))
        $softn > 225 ? $(this).next('#s-per').text((225 + ($softn - 225)*0.2)/10 + '%') : $(this).next('#s-per').text($softn/10 + '%');
      else if ($softcap == 'MP Recovery/Attack')
        $softn > 1600 ? $(this).next('#s-per').text((1600 + ($softn - 1600)*0.5)/10 + '%') : $(this).next('#s-per').text($softn/10 + '%');
      else if ($softcap !== 'Crit DMG')
        $(this).next('#s-per').text($softn/10 + '%')
      else if ($softcap == 'Crit DMG')
        $(this).text($softn + '%')
      });
    $adv = $('#ad-re').text().split(/\n/);
    $('.a1').text($adv[1]);
    $('.a2').text($adv[4]);
    $('#ad-re').text('');
  });
}).call(this);
