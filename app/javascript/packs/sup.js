(function() {
  $(document).on("turbolinks:load", function() {
    $('.h-title').click(function() {
      $(this).next('.h-heroes').fadeToggle('fast').css({'display': 'flex', 'flex-wrap': 'wrap'});
    });
    $('.dscr').mouseenter(function() {
      ($(document).width() - $(this).offset().left < $(document).width() / 2) ? $left = -1 : $left = 0;
      ($(document).height() - $(this).offset().top < $(document).height() / 2) ? $top = - 1 : $top = 0;
      x = $left * ($(this).find('div').first().width() - 42);
      y = $top * ($(this).find('div').first().height() + 60);
      $('.s-description, .p-description, .g-description, .r-description, .s-desc, .p-desc, .g-desc', this).css({'left': x, 'top': y});
    }).mouseleave(function() {
      $('.s-description, .p-description, .g-description, .r-description, .s-desc, .p-desc, .g-desc').removeAttr('style');
    });

    /* hero background image */
    $('.char').css('background-image', 'url("/images/media/heroes/' + $('title').text() + '/Loading Screen.webp")');
    // $('.char').parent().css('overflow-y', 'hidden');
    // $bg = {
    //   'background-image': 'url("/images/media/background/bg' + Math.trunc(1 + Math.random() * 32) + '.webp")',
    //   'min-height': '100vh',
    //   'backdrop-filter': 'blur(3px) saturate(0.3) grayscale(0.5) opacity(0.8)'
    // }
    // $('#bg').parent().css($bg);
    // $('#bg').parent().css('background-image', 'url("/images/media/background/bg' + Math.trunc(1 + Math.random() * 31) + '.webp")');

    /* hero stats soft/hard cap */
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

    /* change description SW Advancement Phases */
    $('.sw-description, .g-sw-desc').each(function() {
      $ap = $(this).find('#ap').text().split(/\n/);
      $(this).find('.a1').text($ap[1]);
      $(this).find('.a2').text($ap[4]);
      $(this).find('#ap').text('');
    });

    /* change gear star upgrade */
    $('label').click(function() {
      $(this).parent().find('label').removeClass('active');
      $(this).addClass('active');
    });

    /* hide null stat */
    $('.c-stat .r-stat, .h-main .r-stat').find('p').each(function() {
      $zeroStat = $(this).text();
      if ($zeroStat === '0')
        $(this).hide().prev('p').hide();
    });
  });
}).call(this);
